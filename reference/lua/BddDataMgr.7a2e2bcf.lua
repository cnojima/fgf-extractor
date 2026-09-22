--pg.bddInit()
--if not pg.isReloading then
--{{{初始化
local class = require("Core.Framework.Class")
local bdd = require("bdd")
local CSAdapter = require("GamePlay.CSAdapter")
local tabledump = require("Core.Framework.TableDump")

local getValueByStrAddr = bdd.get_value_by_str_addr_key
local getValueByNum = bdd.get_value_by_num_key
local getLen = bdd.len
local getHandle = bdd.get_handle_from_ud
local getStrByAddr = bdd.get_str_by_addr
local nextWithNil = bdd.next_nil_key
local nextWithNum = bdd.next_num_key
local nextWithStrAddr = bdd.next_str_addr_key
local getUdByAddr = bdd.get_ud_by_addr
local getStartHandle = bdd.get_start_handle
local addStr = bdd.add_str
local bddPatch = bdd.patch

local dataBinPath = CSAdapter.GetBddDataPath()
-- 是否是服务器
-- local isServerData = false
-- if pg and pg.component == "game" then
--     isServerData = true
--     dataBinPath = package.rootPath .. "/Scripts/Data/pmdata.bin"
-- else
--     isServerData = false
--     dataBinPath = LUA_ROOT_PATH .. "/Data/pmdata.bin"
-- end


local BddDataMgr = class.Class("BddDataMgr", nil, true)
--缓存二进制表
local udCache = {}
setmetatable(udCache, {__mode = 'v'})
rawset(_G, '__BDD_udCache', udCache)

local metatable = {_BddData_ = true}
rawset(_G, '__BDD_metatable', metatable)

--建立字符串到地址和地址到字符串的映射关系，这样不用频繁在c++和lua之间拷贝字符串
local str2addr = {}
rawset(_G, '__BDD_str2addr', str2addr)
local addr2str = {}
rawset(_G, '__BDD_addr2str', addr2str)
--}}}初始化

--{{{lua访问二进制策划表的接口
--字符串地址/table handle转成真正的值
local function ref2Val(addrOrVal, valType)
    if addrOrVal == nil then return nil end
    if not valType then return addrOrVal end
    local val
    if valType == 1 then --string
        val =  addr2str[addrOrVal]
        if not val then
            val = getStrByAddr(addrOrVal)
            addr2str[addrOrVal] = val
        end

    elseif valType == 2 then --userdata
        val = udCache[addrOrVal]
        if val == nil then
            val = getUdByAddr(addrOrVal)
            udCache[addrOrVal] = val
        end
    end
    return val
end

--获取原始二进制表入口(不考虑patch)
local function bddRawG()
    return ref2Val(getStartHandle(), 2)
end

-- 单层table转换
local function bdd2Table(tbl)
    if getmetatable(tbl) ~= metatable then
        return tbl
    end
    local ret = {}
    for k,v in pairs(tbl) do
        ret[k] = v
    end
    return ret
end

-- -- 多层table转换
-- function bdd2DeepTable(tbl)
--     local ret = {}
--     for k,v in pairs(tbl) do
--         if type(v) == 'table' or type(v) == 'userdata' then
--             ret[k] = bdd2DeepTable(v)
--         else
--             ret[k] = v
--         end
--     end
--     return ret
-- end

--next
local orginNext = next
local function bddnext(tbl, key)
    if tbl and getmetatable(tbl.value) == metatable then
        tbl = tbl.value
    end

    if getmetatable(tbl) == metatable then
        local _t = type(key)
        if _t == 'nil' then
            local k, kt, v, vt = nextWithNil(tbl)
            return ref2Val(k, kt), ref2Val(v, vt)

        elseif _t == 'number' then
            local k, kt, v, vt = nextWithNum(tbl, key)
            return ref2Val(k, kt), ref2Val(v, vt)

        elseif _t == 'string' then
            local addr = str2addr[key]
            local k, kt, v, vt = nextWithStrAddr(tbl, addr)
            return ref2Val(k, kt), ref2Val(v, vt)
        else
            error("invalid key to bddnext!")
        end
        return
    end
    return orginNext(tbl, key, true)
end
rawset(_G, 'bddnext', bddnext)

--{遍历相关
local originPairs = pairs
local function bddpairs(tbl)
    if getmetatable(tbl) == metatable then
        return bddnext, tbl, nil
    end
    return originPairs(tbl, true)
end

local inext = function(tbl, i)
    i = i + 1
    local v = tbl[i]
    if v ~= nil then
        return i, v
    end
end

local originIpairs = ipairs
local function bddipairs(tbl)
    if getmetatable(tbl) == metatable then
        return inext, tbl, 0
    end
    return originIpairs(tbl)
end

local originUnpack = unpack
local function bddunpack(tbl, startIndex)
    if getmetatable(tbl) == metatable then
        local ret = {}
        for _, v in bddipairs(tbl) do
            ret[#ret+1] = v
        end
        return originUnpack(ret, startIndex)
    end
    return originUnpack(tbl, startIndex)
end
rawset(_G, 'bddunpack', bddunpack)

function table.bddforeach(tbl, func)
    if getmetatable(tbl) == metatable then
        for k,v in bddpairs(tbl) do func(k,v) end
        return
    end

    return table.foreach(tbl, func, true)
end
--}遍历相关

function string.startsWith(str, start)
    return str:sub(1, #start) == start
end

local function bdddump(t, includefunc, depth)
    if t == nil then
        return ''
    end
    if depth == nil then
        depth = 0
    end

    if depth >= 10 then
        return "{too deep}"
    end

    local str = '{ '
    for k, v in bddpairs(t) do
        k = tostring(k)
        if string.startsWith(k, "__") then
            if includefunc then
                str = str .. k .. '=metatable, '
            end
        elseif type(v) == 'string' then
            str = str .. k .. '="' .. v .. '", '
        elseif type(v) == 'number' then
            str = str .. k .. '=' .. v .. ', '
        elseif type(v) == 'function' then
            if includefunc then
                str = str .. k .. '=function, '
            end
        elseif type(v) == 'table' or type(v) == 'userdata' then
            str = str .. k .. '=' .. bdddump(v, includefunc, depth + 1) .. ', '
        elseif type(v) == 'boolean' then
            str = str .. k .. '=' .. (v and 'true' or 'false') .. ', '
        else
            str = str .. k .. '=' .. type(v) .. ', '
        end
    end
    str = str .. '}'
    return str
end

local function simapleBdd2Table(t, tbl, depth)
    if t == nil then
        return ''
    end
    if depth == nil then
        depth = 0
    end

    if depth >= 10 then
        return "{too deep}"
    end

    for k, v in bddpairs(t) do
        if type(v) == 'string' or type(v) == "number" or type(v) == "boolean" then
            tbl[k] = v
        elseif type(v) == 'userdata' then
            tbl[k] = {}
            simapleBdd2Table(v,  tbl[k], depth + 1)
        end
    end
end

metatable.__index = function(tbl, key)
    local _t = type(key)
    if _t == 'number' then
        local v, vt = getValueByNum(tbl, key)
        return ref2Val(v, vt)

    elseif _t == 'string' then
        local addr = str2addr[key]
        if not addr then return end
        local v, vt = getValueByStrAddr(tbl, addr)
        return ref2Val(v, vt)
    end
end

--{打补丁
local function patch(handle, key, val)

    local bStrKey, bStrVal = false, false
    if type(key) == 'string' then
        local addr = str2addr[key]
        if not addr then
            addr = addStr(key)
            str2addr[key] = addr
            addr2str[addr] = key
        end

        bStrKey = true
        key = addr
    end
    if type(val) == 'string' then
        local addr = str2addr[val]
        if not addr then
            addr = addStr(val)
            str2addr[val] = addr
            addr2str[addr] = val
        end

        bStrVal = true
        val = addr
    end

    bddPatch(handle, key, val, bStrKey, bStrVal)
end

local _patchTbl2Flag
local function checkpatch(t, key, val)

    if _patchTbl2Flag[t] then return true end
    _patchTbl2Flag[t] = true

    if not (type(key) == 'string' or type(key) == 'number') then
        print('Error:key must be string or number!')
        assert(false)
        return false
    end

    local valTy = type(val)
    if not (val == nil
        or valTy == 'number'
        or valTy == 'string'
        or valTy == 'boolean'
        or valTy == 'table'
        or valTy == 'userdata' and getmetatable(val) == metatable) then
            print('Error:value must be string or number or boolean or table!', val)
            assert(false)
            return false
    end

    if type(val) == 'table' then
        for k,v in pairs(val) do
            if not checkpatch(val, k, v) then  return false end
        end
    end

    return true, val
end


metatable.__newindex = function(t, key, val)
    -- if not pg.isReloading and not pg.bddPatching then
    --    error("[error]    禁止修改data配表数据;" .. debug.traceback())
    --    return
    -- end

    _patchTbl2Flag = {}
    if not checkpatch(t, key, val) then
        return
    end

    for k, v in pairs(udCache) do
        udCache[k] = nil
    end

    _patchTbl2Flag = {}
    patch(t, key, val)
    _patchTbl2Flag = nil
end
--}打补丁

metatable.__eq = function(a, b)
    if not (type(a) == type(b)) then return false end
    if type(a) == 'userdata' then
        return getHandle(a) == getHandle(b)
    else
        return a == b
    end
end

metatable.__len = function(tbl)
    return getLen(tbl)
end

metatable.__tostring = function(tbl)
    return 'BIN DESIGN DATA TABLE:' .. getHandle(tbl)
end

metatable.__pairs = function(tbl, key)
    local function iterator(t, k)
        local v
        k, v = bddnext(t, k)
        if v ~= nil then
            return k, v
        end
    end
    return iterator, tbl, nil
end

metatable.__ipairs = function(tbl)
    local function iterator(t, i)
        i = i + 1
        local v = t[i]
        if v ~= nil then
            return i, v
        end
    end
    return iterator, tbl, 0
end


function BddDataMgr:init()
    if self:enable() then
        bdd.init()
        self:reload()
    end
    return true
end

local testTblName = 
{
    t_attribute = true,
    t_attribute_related = true,
    t_attr_group_base = true,
    t_enum_type = true,
    t_constant = true
}

function BddDataMgr:reload()
    if not self:enable() then
        return
    end

    bdd.load_from_file(dataBinPath)
    self.bddRaw = bddRawG()
    self.tableRecord = {}
    for modulePath, v in pairs(self.record or {}) do
        v.value = self.bddRaw[modulePath]
        if testTblName[v.tableName] then
            local tbl = {}
            simapleBdd2Table(v, tbl)
            self.tableRecord[modulePath] = tbl
        end
    end
end

function BddDataMgr:dump(t, includefunc, depth)
    return bdddump(t, includefunc, depth)
end

function BddDataMgr:getTable(modeulPath, tableName)
    if not self:enable() then
        return nil
    end

    if self.bddRaw == nil then
        self:init()
    end

    if not self.bddRaw[modeulPath] then
        return nil
    end

    self.record = self.record or {}
    self.tableRecord = self.tableRecord or {}

    if not self.record[modeulPath] then
        local t = {}
        local mt = {
            __index = function(tbl, k)
                return tbl.value[k]
            end,
            __pairs = function(tbl)
                return bddpairs(tbl.value)
            end,
        }
        setmetatable(t, mt)
        t.value = self.bddRaw[modeulPath]
        self.record[modeulPath] = t
        t.tableName = tableName
        if testTblName[tableName] then
            local tbl = {}
            simapleBdd2Table(t, tbl)
            self.tableRecord[modeulPath] = tbl
            return tbl
        end
    elseif testTblName[tableName] then
        return self.tableRecord[modeulPath]
    end

    return self.record[modeulPath]
end

function BddDataMgr:enable()
    return CSAdapter.enableBDD()
end

--}}}lua访问二进制策划表的接口

return BddDataMgr
