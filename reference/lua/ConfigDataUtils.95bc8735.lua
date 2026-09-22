
---
---策划表访问接口
---author: david.lan
---@class GamePlay.Common.Utils.ConfigDataUtils

local BddDataMgr = require("GamePlay.Common.Utils.BddDataMgr")
local CSAdapter = require("GamePlay.CSAdapter")
local ConfigDataUtils = {}
--- !!!!!!!!!工具自动生成， 请勿手动修改提交!!!!!!!!

ConfigDataUtils._t_account_ban = nil
---@return DataTables.CommonData.t_account_ban
function ConfigDataUtils:account_banCfg()
	if self._t_account_ban == nil then
		local module = self:_loadDeginData("t_account_ban")
		if not self.inited then return module end
		self._t_account_ban = module
	end
	return self._t_account_ban
end

ConfigDataUtils._t_account_name = nil
---@return DataTables.CommonData.t_account_name
function ConfigDataUtils:account_nameCfg()
	if self._t_account_name == nil then
		local module = self:_loadDeginData("t_account_name")
		if not self.inited then return module end
		self._t_account_name = module
	end
	return self._t_account_name
end

ConfigDataUtils._t_account_number = nil
---@return DataTables.CommonData.t_account_number
function ConfigDataUtils:account_numberCfg()
	if self._t_account_number == nil then
		local module = self:_loadDeginData("t_account_number")
		if not self.inited then return module end
		self._t_account_number = module
	end
	return self._t_account_number
end

ConfigDataUtils._t_achievement = nil
---@return DataTables.CommonData.t_achievement
function ConfigDataUtils:achievementCfg()
	if self._t_achievement == nil then
		local module = self:_loadDeginData("t_achievement")
		if not self.inited then return module end
		self._t_achievement = module
	end
	return self._t_achievement
end

ConfigDataUtils._t_action_trigger = nil
---@return DataTables.CommonData.t_action_trigger
function ConfigDataUtils:action_triggerCfg()
	if self._t_action_trigger == nil then
		local module = self:_loadDeginData("t_action_trigger")
		if not self.inited then return module end
		self._t_action_trigger = module
	end
	return self._t_action_trigger
end

ConfigDataUtils._t_activity = nil
---@return DataTables.CommonData.t_activity
function ConfigDataUtils:activityCfg()
	if self._t_activity == nil then
		local module = self:_loadDeginData("t_activity")
		if not self.inited then return module end
		self._t_activity = module
	end
	return self._t_activity
end

ConfigDataUtils._t_activity_agile_group = nil
---@return DataTables.CommonData.t_activity_agile_group
function ConfigDataUtils:activity_agile_groupCfg()
	if self._t_activity_agile_group == nil then
		local module = self:_loadDeginData("t_activity_agile_group")
		if not self.inited then return module end
		self._t_activity_agile_group = module
	end
	return self._t_activity_agile_group
end

ConfigDataUtils._t_activity_agile_tab = nil
---@return DataTables.CommonData.t_activity_agile_tab
function ConfigDataUtils:activity_agile_tabCfg()
	if self._t_activity_agile_tab == nil then
		local module = self:_loadDeginData("t_activity_agile_tab")
		if not self.inited then return module end
		self._t_activity_agile_tab = module
	end
	return self._t_activity_agile_tab
end

ConfigDataUtils._t_activity_agile_task = nil
---@return DataTables.CommonData.t_activity_agile_task
function ConfigDataUtils:activity_agile_taskCfg()
	if self._t_activity_agile_task == nil then
		local module = self:_loadDeginData("t_activity_agile_task")
		if not self.inited then return module end
		self._t_activity_agile_task = module
	end
	return self._t_activity_agile_task
end

ConfigDataUtils._t_activity_battlepass = nil
---@return DataTables.CommonData.t_activity_battlepass
function ConfigDataUtils:activity_battlepassCfg()
	if self._t_activity_battlepass == nil then
		local module = self:_loadDeginData("t_activity_battlepass")
		if not self.inited then return module end
		self._t_activity_battlepass = module
	end
	return self._t_activity_battlepass
end

ConfigDataUtils._t_activity_battlepass_rewards = nil
---@return DataTables.CommonData.t_activity_battlepass_rewards
function ConfigDataUtils:activity_battlepass_rewardsCfg()
	if self._t_activity_battlepass_rewards == nil then
		local module = self:_loadDeginData("t_activity_battlepass_rewards")
		if not self.inited then return module end
		self._t_activity_battlepass_rewards = module
	end
	return self._t_activity_battlepass_rewards
end

ConfigDataUtils._t_activity_battlepass_task = nil
---@return DataTables.CommonData.t_activity_battlepass_task
function ConfigDataUtils:activity_battlepass_taskCfg()
	if self._t_activity_battlepass_task == nil then
		local module = self:_loadDeginData("t_activity_battlepass_task")
		if not self.inited then return module end
		self._t_activity_battlepass_task = module
	end
	return self._t_activity_battlepass_task
end

ConfigDataUtils._t_activity_bingo_colum_reward = nil
---@return DataTables.CommonData.t_activity_bingo_colum_reward
function ConfigDataUtils:activity_bingo_colum_rewardCfg()
	if self._t_activity_bingo_colum_reward == nil then
		local module = self:_loadDeginData("t_activity_bingo_colum_reward")
		if not self.inited then return module end
		self._t_activity_bingo_colum_reward = module
	end
	return self._t_activity_bingo_colum_reward
end

ConfigDataUtils._t_activity_bingo_main = nil
---@return DataTables.CommonData.t_activity_bingo_main
function ConfigDataUtils:activity_bingo_mainCfg()
	if self._t_activity_bingo_main == nil then
		local module = self:_loadDeginData("t_activity_bingo_main")
		if not self.inited then return module end
		self._t_activity_bingo_main = module
	end
	return self._t_activity_bingo_main
end

ConfigDataUtils._t_activity_bingo_row_reward = nil
---@return DataTables.CommonData.t_activity_bingo_row_reward
function ConfigDataUtils:activity_bingo_row_rewardCfg()
	if self._t_activity_bingo_row_reward == nil then
		local module = self:_loadDeginData("t_activity_bingo_row_reward")
		if not self.inited then return module end
		self._t_activity_bingo_row_reward = module
	end
	return self._t_activity_bingo_row_reward
end

ConfigDataUtils._t_activity_bingo_task = nil
---@return DataTables.CommonData.t_activity_bingo_task
function ConfigDataUtils:activity_bingo_taskCfg()
	if self._t_activity_bingo_task == nil then
		local module = self:_loadDeginData("t_activity_bingo_task")
		if not self.inited then return module end
		self._t_activity_bingo_task = module
	end
	return self._t_activity_bingo_task
end

ConfigDataUtils._t_activity_center = nil
---@return DataTables.CommonData.t_activity_center
function ConfigDataUtils:activity_centerCfg()
	if self._t_activity_center == nil then
		local module = self:_loadDeginData("t_activity_center")
		if not self.inited then return module end
		self._t_activity_center = module
	end
	return self._t_activity_center
end

ConfigDataUtils._t_activity_center_open = nil
---@return DataTables.CommonData.t_activity_center_open
function ConfigDataUtils:activity_center_openCfg()
	if self._t_activity_center_open == nil then
		local module = self:_loadDeginData("t_activity_center_open")
		if not self.inited then return module end
		self._t_activity_center_open = module
	end
	return self._t_activity_center_open
end

ConfigDataUtils._t_activity_common_chest = nil
---@return DataTables.CommonData.t_activity_common_chest
function ConfigDataUtils:activity_common_chestCfg()
	if self._t_activity_common_chest == nil then
		local module = self:_loadDeginData("t_activity_common_chest")
		if not self.inited then return module end
		self._t_activity_common_chest = module
	end
	return self._t_activity_common_chest
end

ConfigDataUtils._t_activity_donation_fakeprogress = nil
---@return DataTables.CommonData.t_activity_donation_fakeprogress
function ConfigDataUtils:activity_donation_fakeprogressCfg()
	if self._t_activity_donation_fakeprogress == nil then
		local module = self:_loadDeginData("t_activity_donation_fakeprogress")
		if not self.inited then return module end
		self._t_activity_donation_fakeprogress = module
	end
	return self._t_activity_donation_fakeprogress
end

ConfigDataUtils._t_activity_donation_main = nil
---@return DataTables.CommonData.t_activity_donation_main
function ConfigDataUtils:activity_donation_mainCfg()
	if self._t_activity_donation_main == nil then
		local module = self:_loadDeginData("t_activity_donation_main")
		if not self.inited then return module end
		self._t_activity_donation_main = module
	end
	return self._t_activity_donation_main
end

ConfigDataUtils._t_activity_donation_reward = nil
---@return DataTables.CommonData.t_activity_donation_reward
function ConfigDataUtils:activity_donation_rewardCfg()
	if self._t_activity_donation_reward == nil then
		local module = self:_loadDeginData("t_activity_donation_reward")
		if not self.inited then return module end
		self._t_activity_donation_reward = module
	end
	return self._t_activity_donation_reward
end

ConfigDataUtils._t_activity_donation_task = nil
---@return DataTables.CommonData.t_activity_donation_task
function ConfigDataUtils:activity_donation_taskCfg()
	if self._t_activity_donation_task == nil then
		local module = self:_loadDeginData("t_activity_donation_task")
		if not self.inited then return module end
		self._t_activity_donation_task = module
	end
	return self._t_activity_donation_task
end

ConfigDataUtils._t_activity_event_rule_picture = nil
---@return DataTables.CommonData.t_activity_event_rule_picture
function ConfigDataUtils:activity_event_rule_pictureCfg()
	if self._t_activity_event_rule_picture == nil then
		local module = self:_loadDeginData("t_activity_event_rule_picture")
		if not self.inited then return module end
		self._t_activity_event_rule_picture = module
	end
	return self._t_activity_event_rule_picture
end

ConfigDataUtils._t_activity_exchange_common = nil
---@return DataTables.CommonData.t_activity_exchange_common
function ConfigDataUtils:activity_exchange_commonCfg()
	if self._t_activity_exchange_common == nil then
		local module = self:_loadDeginData("t_activity_exchange_common")
		if not self.inited then return module end
		self._t_activity_exchange_common = module
	end
	return self._t_activity_exchange_common
end

ConfigDataUtils._t_activity_fund = nil
---@return DataTables.CommonData.t_activity_fund
function ConfigDataUtils:activity_fundCfg()
	if self._t_activity_fund == nil then
		local module = self:_loadDeginData("t_activity_fund")
		if not self.inited then return module end
		self._t_activity_fund = module
	end
	return self._t_activity_fund
end

ConfigDataUtils._t_activity_fund_reward = nil
---@return DataTables.CommonData.t_activity_fund_reward
function ConfigDataUtils:activity_fund_rewardCfg()
	if self._t_activity_fund_reward == nil then
		local module = self:_loadDeginData("t_activity_fund_reward")
		if not self.inited then return module end
		self._t_activity_fund_reward = module
	end
	return self._t_activity_fund_reward
end

ConfigDataUtils._t_activity_gacha = nil
---@return DataTables.CommonData.t_activity_gacha
function ConfigDataUtils:activity_gachaCfg()
	if self._t_activity_gacha == nil then
		local module = self:_loadDeginData("t_activity_gacha")
		if not self.inited then return module end
		self._t_activity_gacha = module
	end
	return self._t_activity_gacha
end

ConfigDataUtils._t_activity_gacha_progress = nil
---@return DataTables.CommonData.t_activity_gacha_progress
function ConfigDataUtils:activity_gacha_progressCfg()
	if self._t_activity_gacha_progress == nil then
		local module = self:_loadDeginData("t_activity_gacha_progress")
		if not self.inited then return module end
		self._t_activity_gacha_progress = module
	end
	return self._t_activity_gacha_progress
end

ConfigDataUtils._t_activity_gacha_resource = nil
---@return DataTables.CommonData.t_activity_gacha_resource
function ConfigDataUtils:activity_gacha_resourceCfg()
	if self._t_activity_gacha_resource == nil then
		local module = self:_loadDeginData("t_activity_gacha_resource")
		if not self.inited then return module end
		self._t_activity_gacha_resource = module
	end
	return self._t_activity_gacha_resource
end

ConfigDataUtils._t_activity_guild_clash = nil
---@return DataTables.CommonData.t_activity_guild_clash
function ConfigDataUtils:activity_guild_clashCfg()
	if self._t_activity_guild_clash == nil then
		local module = self:_loadDeginData("t_activity_guild_clash")
		if not self.inited then return module end
		self._t_activity_guild_clash = module
	end
	return self._t_activity_guild_clash
end

ConfigDataUtils._t_activity_guild_clash_box = nil
---@return DataTables.CommonData.t_activity_guild_clash_box
function ConfigDataUtils:activity_guild_clash_boxCfg()
	if self._t_activity_guild_clash_box == nil then
		local module = self:_loadDeginData("t_activity_guild_clash_box")
		if not self.inited then return module end
		self._t_activity_guild_clash_box = module
	end
	return self._t_activity_guild_clash_box
end

ConfigDataUtils._t_activity_guild_clash_pointget = nil
---@return DataTables.CommonData.t_activity_guild_clash_pointget
function ConfigDataUtils:activity_guild_clash_pointgetCfg()
	if self._t_activity_guild_clash_pointget == nil then
		local module = self:_loadDeginData("t_activity_guild_clash_pointget")
		if not self.inited then return module end
		self._t_activity_guild_clash_pointget = module
	end
	return self._t_activity_guild_clash_pointget
end

ConfigDataUtils._t_activity_guild_clash_pointstage = nil
---@return DataTables.CommonData.t_activity_guild_clash_pointstage
function ConfigDataUtils:activity_guild_clash_pointstageCfg()
	if self._t_activity_guild_clash_pointstage == nil then
		local module = self:_loadDeginData("t_activity_guild_clash_pointstage")
		if not self.inited then return module end
		self._t_activity_guild_clash_pointstage = module
	end
	return self._t_activity_guild_clash_pointstage
end

ConfigDataUtils._t_activity_guild_clash_research = nil
---@return DataTables.CommonData.t_activity_guild_clash_research
function ConfigDataUtils:activity_guild_clash_researchCfg()
	if self._t_activity_guild_clash_research == nil then
		local module = self:_loadDeginData("t_activity_guild_clash_research")
		if not self.inited then return module end
		self._t_activity_guild_clash_research = module
	end
	return self._t_activity_guild_clash_research
end

ConfigDataUtils._t_activity_guild_clash_reward = nil
---@return DataTables.CommonData.t_activity_guild_clash_reward
function ConfigDataUtils:activity_guild_clash_rewardCfg()
	if self._t_activity_guild_clash_reward == nil then
		local module = self:_loadDeginData("t_activity_guild_clash_reward")
		if not self.inited then return module end
		self._t_activity_guild_clash_reward = module
	end
	return self._t_activity_guild_clash_reward
end

ConfigDataUtils._t_activity_guild_clash_taskicon = nil
---@return DataTables.CommonData.t_activity_guild_clash_taskicon
function ConfigDataUtils:activity_guild_clash_taskiconCfg()
	if self._t_activity_guild_clash_taskicon == nil then
		local module = self:_loadDeginData("t_activity_guild_clash_taskicon")
		if not self.inited then return module end
		self._t_activity_guild_clash_taskicon = module
	end
	return self._t_activity_guild_clash_taskicon
end

ConfigDataUtils._t_activity_item_get_more_channel = nil
---@return DataTables.CommonData.t_activity_item_get_more_channel
function ConfigDataUtils:activity_item_get_more_channelCfg()
	if self._t_activity_item_get_more_channel == nil then
		local module = self:_loadDeginData("t_activity_item_get_more_channel")
		if not self.inited then return module end
		self._t_activity_item_get_more_channel = module
	end
	return self._t_activity_item_get_more_channel
end

ConfigDataUtils._t_activity_item_get_more_group = nil
---@return DataTables.CommonData.t_activity_item_get_more_group
function ConfigDataUtils:activity_item_get_more_groupCfg()
	if self._t_activity_item_get_more_group == nil then
		local module = self:_loadDeginData("t_activity_item_get_more_group")
		if not self.inited then return module end
		self._t_activity_item_get_more_group = module
	end
	return self._t_activity_item_get_more_group
end

ConfigDataUtils._t_activity_item_get_more_main = nil
---@return DataTables.CommonData.t_activity_item_get_more_main
function ConfigDataUtils:activity_item_get_more_mainCfg()
	if self._t_activity_item_get_more_main == nil then
		local module = self:_loadDeginData("t_activity_item_get_more_main")
		if not self.inited then return module end
		self._t_activity_item_get_more_main = module
	end
	return self._t_activity_item_get_more_main
end

ConfigDataUtils._t_activity_monopoly_main = nil
---@return DataTables.CommonData.t_activity_monopoly_main
function ConfigDataUtils:activity_monopoly_mainCfg()
	if self._t_activity_monopoly_main == nil then
		local module = self:_loadDeginData("t_activity_monopoly_main")
		if not self.inited then return module end
		self._t_activity_monopoly_main = module
	end
	return self._t_activity_monopoly_main
end

ConfigDataUtils._t_activity_monopoly_map = nil
---@return DataTables.CommonData.t_activity_monopoly_map
function ConfigDataUtils:activity_monopoly_mapCfg()
	if self._t_activity_monopoly_map == nil then
		local module = self:_loadDeginData("t_activity_monopoly_map")
		if not self.inited then return module end
		self._t_activity_monopoly_map = module
	end
	return self._t_activity_monopoly_map
end

ConfigDataUtils._t_activity_monopoly_map_random = nil
---@return DataTables.CommonData.t_activity_monopoly_map_random
function ConfigDataUtils:activity_monopoly_map_randomCfg()
	if self._t_activity_monopoly_map_random == nil then
		local module = self:_loadDeginData("t_activity_monopoly_map_random")
		if not self.inited then return module end
		self._t_activity_monopoly_map_random = module
	end
	return self._t_activity_monopoly_map_random
end

ConfigDataUtils._t_activity_monopoly_reward = nil
---@return DataTables.CommonData.t_activity_monopoly_reward
function ConfigDataUtils:activity_monopoly_rewardCfg()
	if self._t_activity_monopoly_reward == nil then
		local module = self:_loadDeginData("t_activity_monopoly_reward")
		if not self.inited then return module end
		self._t_activity_monopoly_reward = module
	end
	return self._t_activity_monopoly_reward
end

ConfigDataUtils._t_activity_monster_drop = nil
---@return DataTables.CommonData.t_activity_monster_drop
function ConfigDataUtils:activity_monster_dropCfg()
	if self._t_activity_monster_drop == nil then
		local module = self:_loadDeginData("t_activity_monster_drop")
		if not self.inited then return module end
		self._t_activity_monster_drop = module
	end
	return self._t_activity_monster_drop
end

ConfigDataUtils._t_activity_pack_group = nil
---@return DataTables.CommonData.t_activity_pack_group
function ConfigDataUtils:activity_pack_groupCfg()
	if self._t_activity_pack_group == nil then
		local module = self:_loadDeginData("t_activity_pack_group")
		if not self.inited then return module end
		self._t_activity_pack_group = module
	end
	return self._t_activity_pack_group
end

ConfigDataUtils._t_activity_push_detail = nil
---@return DataTables.CommonData.t_activity_push_detail
function ConfigDataUtils:activity_push_detailCfg()
	if self._t_activity_push_detail == nil then
		local module = self:_loadDeginData("t_activity_push_detail")
		if not self.inited then return module end
		self._t_activity_push_detail = module
	end
	return self._t_activity_push_detail
end

ConfigDataUtils._t_activity_race_main = nil
---@return DataTables.CommonData.t_activity_race_main
function ConfigDataUtils:activity_race_mainCfg()
	if self._t_activity_race_main == nil then
		local module = self:_loadDeginData("t_activity_race_main")
		if not self.inited then return module end
		self._t_activity_race_main = module
	end
	return self._t_activity_race_main
end

ConfigDataUtils._t_activity_race_robot = nil
---@return DataTables.CommonData.t_activity_race_robot
function ConfigDataUtils:activity_race_robotCfg()
	if self._t_activity_race_robot == nil then
		local module = self:_loadDeginData("t_activity_race_robot")
		if not self.inited then return module end
		self._t_activity_race_robot = module
	end
	return self._t_activity_race_robot
end

ConfigDataUtils._t_activity_race_robot_show = nil
---@return DataTables.CommonData.t_activity_race_robot_show
function ConfigDataUtils:activity_race_robot_showCfg()
	if self._t_activity_race_robot_show == nil then
		local module = self:_loadDeginData("t_activity_race_robot_show")
		if not self.inited then return module end
		self._t_activity_race_robot_show = module
	end
	return self._t_activity_race_robot_show
end

ConfigDataUtils._t_activity_race_stage = nil
---@return DataTables.CommonData.t_activity_race_stage
function ConfigDataUtils:activity_race_stageCfg()
	if self._t_activity_race_stage == nil then
		local module = self:_loadDeginData("t_activity_race_stage")
		if not self.inited then return module end
		self._t_activity_race_stage = module
	end
	return self._t_activity_race_stage
end

ConfigDataUtils._t_activity_race_stage_list = nil
---@return DataTables.CommonData.t_activity_race_stage_list
function ConfigDataUtils:activity_race_stage_listCfg()
	if self._t_activity_race_stage_list == nil then
		local module = self:_loadDeginData("t_activity_race_stage_list")
		if not self.inited then return module end
		self._t_activity_race_stage_list = module
	end
	return self._t_activity_race_stage_list
end

ConfigDataUtils._t_activity_race_stage_rank = nil
---@return DataTables.CommonData.t_activity_race_stage_rank
function ConfigDataUtils:activity_race_stage_rankCfg()
	if self._t_activity_race_stage_rank == nil then
		local module = self:_loadDeginData("t_activity_race_stage_rank")
		if not self.inited then return module end
		self._t_activity_race_stage_rank = module
	end
	return self._t_activity_race_stage_rank
end

ConfigDataUtils._t_activity_race_stage_task = nil
---@return DataTables.CommonData.t_activity_race_stage_task
function ConfigDataUtils:activity_race_stage_taskCfg()
	if self._t_activity_race_stage_task == nil then
		local module = self:_loadDeginData("t_activity_race_stage_task")
		if not self.inited then return module end
		self._t_activity_race_stage_task = module
	end
	return self._t_activity_race_stage_task
end

ConfigDataUtils._t_activity_rank_reward = nil
---@return DataTables.CommonData.t_activity_rank_reward
function ConfigDataUtils:activity_rank_rewardCfg()
	if self._t_activity_rank_reward == nil then
		local module = self:_loadDeginData("t_activity_rank_reward")
		if not self.inited then return module end
		self._t_activity_rank_reward = module
	end
	return self._t_activity_rank_reward
end

ConfigDataUtils._t_activity_recharge_draw_detail = nil
---@return DataTables.CommonData.t_activity_recharge_draw_detail
function ConfigDataUtils:activity_recharge_draw_detailCfg()
	if self._t_activity_recharge_draw_detail == nil then
		local module = self:_loadDeginData("t_activity_recharge_draw_detail")
		if not self.inited then return module end
		self._t_activity_recharge_draw_detail = module
	end
	return self._t_activity_recharge_draw_detail
end

ConfigDataUtils._t_activity_recharge_draw_main = nil
---@return DataTables.CommonData.t_activity_recharge_draw_main
function ConfigDataUtils:activity_recharge_draw_mainCfg()
	if self._t_activity_recharge_draw_main == nil then
		local module = self:_loadDeginData("t_activity_recharge_draw_main")
		if not self.inited then return module end
		self._t_activity_recharge_draw_main = module
	end
	return self._t_activity_recharge_draw_main
end

ConfigDataUtils._t_activity_recurringpack = nil
---@return DataTables.CommonData.t_activity_recurringpack
function ConfigDataUtils:activity_recurringpackCfg()
	if self._t_activity_recurringpack == nil then
		local module = self:_loadDeginData("t_activity_recurringpack")
		if not self.inited then return module end
		self._t_activity_recurringpack = module
	end
	return self._t_activity_recurringpack
end

ConfigDataUtils._t_activity_relics_main = nil
---@return DataTables.CommonData.t_activity_relics_main
function ConfigDataUtils:activity_relics_mainCfg()
	if self._t_activity_relics_main == nil then
		local module = self:_loadDeginData("t_activity_relics_main")
		if not self.inited then return module end
		self._t_activity_relics_main = module
	end
	return self._t_activity_relics_main
end

ConfigDataUtils._t_activity_relics_reward = nil
---@return DataTables.CommonData.t_activity_relics_reward
function ConfigDataUtils:activity_relics_rewardCfg()
	if self._t_activity_relics_reward == nil then
		local module = self:_loadDeginData("t_activity_relics_reward")
		if not self.inited then return module end
		self._t_activity_relics_reward = module
	end
	return self._t_activity_relics_reward
end

ConfigDataUtils._t_activity_relics_task = nil
---@return DataTables.CommonData.t_activity_relics_task
function ConfigDataUtils:activity_relics_taskCfg()
	if self._t_activity_relics_task == nil then
		local module = self:_loadDeginData("t_activity_relics_task")
		if not self.inited then return module end
		self._t_activity_relics_task = module
	end
	return self._t_activity_relics_task
end

ConfigDataUtils._t_activity_send_flower = nil
---@return DataTables.CommonData.t_activity_send_flower
function ConfigDataUtils:activity_send_flowerCfg()
	if self._t_activity_send_flower == nil then
		local module = self:_loadDeginData("t_activity_send_flower")
		if not self.inited then return module end
		self._t_activity_send_flower = module
	end
	return self._t_activity_send_flower
end

ConfigDataUtils._t_activity_send_flower_draw = nil
---@return DataTables.CommonData.t_activity_send_flower_draw
function ConfigDataUtils:activity_send_flower_drawCfg()
	if self._t_activity_send_flower_draw == nil then
		local module = self:_loadDeginData("t_activity_send_flower_draw")
		if not self.inited then return module end
		self._t_activity_send_flower_draw = module
	end
	return self._t_activity_send_flower_draw
end

ConfigDataUtils._t_activity_send_flower_rank = nil
---@return DataTables.CommonData.t_activity_send_flower_rank
function ConfigDataUtils:activity_send_flower_rankCfg()
	if self._t_activity_send_flower_rank == nil then
		local module = self:_loadDeginData("t_activity_send_flower_rank")
		if not self.inited then return module end
		self._t_activity_send_flower_rank = module
	end
	return self._t_activity_send_flower_rank
end

ConfigDataUtils._t_activity_task_common = nil
---@return DataTables.CommonData.t_activity_task_common
function ConfigDataUtils:activity_task_commonCfg()
	if self._t_activity_task_common == nil then
		local module = self:_loadDeginData("t_activity_task_common")
		if not self.inited then return module end
		self._t_activity_task_common = module
	end
	return self._t_activity_task_common
end

ConfigDataUtils._t_activity_trader_event_detail = nil
---@return DataTables.CommonData.t_activity_trader_event_detail
function ConfigDataUtils:activity_trader_event_detailCfg()
	if self._t_activity_trader_event_detail == nil then
		local module = self:_loadDeginData("t_activity_trader_event_detail")
		if not self.inited then return module end
		self._t_activity_trader_event_detail = module
	end
	return self._t_activity_trader_event_detail
end

ConfigDataUtils._t_activity_trader_event_main = nil
---@return DataTables.CommonData.t_activity_trader_event_main
function ConfigDataUtils:activity_trader_event_mainCfg()
	if self._t_activity_trader_event_main == nil then
		local module = self:_loadDeginData("t_activity_trader_event_main")
		if not self.inited then return module end
		self._t_activity_trader_event_main = module
	end
	return self._t_activity_trader_event_main
end

ConfigDataUtils._t_activity_trader_task_detail = nil
---@return DataTables.CommonData.t_activity_trader_task_detail
function ConfigDataUtils:activity_trader_task_detailCfg()
	if self._t_activity_trader_task_detail == nil then
		local module = self:_loadDeginData("t_activity_trader_task_detail")
		if not self.inited then return module end
		self._t_activity_trader_task_detail = module
	end
	return self._t_activity_trader_task_detail
end

ConfigDataUtils._t_activity_trader_task_progress = nil
---@return DataTables.CommonData.t_activity_trader_task_progress
function ConfigDataUtils:activity_trader_task_progressCfg()
	if self._t_activity_trader_task_progress == nil then
		local module = self:_loadDeginData("t_activity_trader_task_progress")
		if not self.inited then return module end
		self._t_activity_trader_task_progress = module
	end
	return self._t_activity_trader_task_progress
end

ConfigDataUtils._t_activity_treasure_main = nil
---@return DataTables.CommonData.t_activity_treasure_main
function ConfigDataUtils:activity_treasure_mainCfg()
	if self._t_activity_treasure_main == nil then
		local module = self:_loadDeginData("t_activity_treasure_main")
		if not self.inited then return module end
		self._t_activity_treasure_main = module
	end
	return self._t_activity_treasure_main
end

ConfigDataUtils._t_activity_treasure_progress = nil
---@return DataTables.CommonData.t_activity_treasure_progress
function ConfigDataUtils:activity_treasure_progressCfg()
	if self._t_activity_treasure_progress == nil then
		local module = self:_loadDeginData("t_activity_treasure_progress")
		if not self.inited then return module end
		self._t_activity_treasure_progress = module
	end
	return self._t_activity_treasure_progress
end

ConfigDataUtils._t_activity_treasure_reward = nil
---@return DataTables.CommonData.t_activity_treasure_reward
function ConfigDataUtils:activity_treasure_rewardCfg()
	if self._t_activity_treasure_reward == nil then
		local module = self:_loadDeginData("t_activity_treasure_reward")
		if not self.inited then return module end
		self._t_activity_treasure_reward = module
	end
	return self._t_activity_treasure_reward
end

ConfigDataUtils._t_activity_treasure_task = nil
---@return DataTables.CommonData.t_activity_treasure_task
function ConfigDataUtils:activity_treasure_taskCfg()
	if self._t_activity_treasure_task == nil then
		local module = self:_loadDeginData("t_activity_treasure_task")
		if not self.inited then return module end
		self._t_activity_treasure_task = module
	end
	return self._t_activity_treasure_task
end

ConfigDataUtils._t_activity_treasure_tier = nil
---@return DataTables.CommonData.t_activity_treasure_tier
function ConfigDataUtils:activity_treasure_tierCfg()
	if self._t_activity_treasure_tier == nil then
		local module = self:_loadDeginData("t_activity_treasure_tier")
		if not self.inited then return module end
		self._t_activity_treasure_tier = module
	end
	return self._t_activity_treasure_tier
end

ConfigDataUtils._t_activity_treasury_menu = nil
---@return DataTables.CommonData.t_activity_treasury_menu
function ConfigDataUtils:activity_treasury_menuCfg()
	if self._t_activity_treasury_menu == nil then
		local module = self:_loadDeginData("t_activity_treasury_menu")
		if not self.inited then return module end
		self._t_activity_treasury_menu = module
	end
	return self._t_activity_treasury_menu
end

ConfigDataUtils._t_activity_weekbattlepass = nil
---@return DataTables.CommonData.t_activity_weekbattlepass
function ConfigDataUtils:activity_weekbattlepassCfg()
	if self._t_activity_weekbattlepass == nil then
		local module = self:_loadDeginData("t_activity_weekbattlepass")
		if not self.inited then return module end
		self._t_activity_weekbattlepass = module
	end
	return self._t_activity_weekbattlepass
end

ConfigDataUtils._t_activity_weekbattlepass_reward = nil
---@return DataTables.CommonData.t_activity_weekbattlepass_reward
function ConfigDataUtils:activity_weekbattlepass_rewardCfg()
	if self._t_activity_weekbattlepass_reward == nil then
		local module = self:_loadDeginData("t_activity_weekbattlepass_reward")
		if not self.inited then return module end
		self._t_activity_weekbattlepass_reward = module
	end
	return self._t_activity_weekbattlepass_reward
end

ConfigDataUtils._t_activity_weekbattlepass_task = nil
---@return DataTables.CommonData.t_activity_weekbattlepass_task
function ConfigDataUtils:activity_weekbattlepass_taskCfg()
	if self._t_activity_weekbattlepass_task == nil then
		local module = self:_loadDeginData("t_activity_weekbattlepass_task")
		if not self.inited then return module end
		self._t_activity_weekbattlepass_task = module
	end
	return self._t_activity_weekbattlepass_task
end

ConfigDataUtils._t_activity_weekbattlepass_tasks = nil
---@return DataTables.CommonData.t_activity_weekbattlepass_tasks
function ConfigDataUtils:activity_weekbattlepass_tasksCfg()
	if self._t_activity_weekbattlepass_tasks == nil then
		local module = self:_loadDeginData("t_activity_weekbattlepass_tasks")
		if not self.inited then return module end
		self._t_activity_weekbattlepass_tasks = module
	end
	return self._t_activity_weekbattlepass_tasks
end

ConfigDataUtils._t_activity_weekbattlepass_uitext = nil
---@return DataTables.CommonData.t_activity_weekbattlepass_uitext
function ConfigDataUtils:activity_weekbattlepass_uitextCfg()
	if self._t_activity_weekbattlepass_uitext == nil then
		local module = self:_loadDeginData("t_activity_weekbattlepass_uitext")
		if not self.inited then return module end
		self._t_activity_weekbattlepass_uitext = module
	end
	return self._t_activity_weekbattlepass_uitext
end

ConfigDataUtils._t_activity_weekbp_uiresource = nil
---@return DataTables.CommonData.t_activity_weekbp_uiresource
function ConfigDataUtils:activity_weekbp_uiresourceCfg()
	if self._t_activity_weekbp_uiresource == nil then
		local module = self:_loadDeginData("t_activity_weekbp_uiresource")
		if not self.inited then return module end
		self._t_activity_weekbp_uiresource = module
	end
	return self._t_activity_weekbp_uiresource
end

ConfigDataUtils._t_activity_wheel_main = nil
---@return DataTables.CommonData.t_activity_wheel_main
function ConfigDataUtils:activity_wheel_mainCfg()
	if self._t_activity_wheel_main == nil then
		local module = self:_loadDeginData("t_activity_wheel_main")
		if not self.inited then return module end
		self._t_activity_wheel_main = module
	end
	return self._t_activity_wheel_main
end

ConfigDataUtils._t_activity_wheel_progress = nil
---@return DataTables.CommonData.t_activity_wheel_progress
function ConfigDataUtils:activity_wheel_progressCfg()
	if self._t_activity_wheel_progress == nil then
		local module = self:_loadDeginData("t_activity_wheel_progress")
		if not self.inited then return module end
		self._t_activity_wheel_progress = module
	end
	return self._t_activity_wheel_progress
end

ConfigDataUtils._t_activity_wheel_rewards = nil
---@return DataTables.CommonData.t_activity_wheel_rewards
function ConfigDataUtils:activity_wheel_rewardsCfg()
	if self._t_activity_wheel_rewards == nil then
		local module = self:_loadDeginData("t_activity_wheel_rewards")
		if not self.inited then return module end
		self._t_activity_wheel_rewards = module
	end
	return self._t_activity_wheel_rewards
end

ConfigDataUtils._t_activity_wheel_store = nil
---@return DataTables.CommonData.t_activity_wheel_store
function ConfigDataUtils:activity_wheel_storeCfg()
	if self._t_activity_wheel_store == nil then
		local module = self:_loadDeginData("t_activity_wheel_store")
		if not self.inited then return module end
		self._t_activity_wheel_store = module
	end
	return self._t_activity_wheel_store
end

ConfigDataUtils._t_alli_point_get = nil
---@return DataTables.CommonData.t_alli_point_get
function ConfigDataUtils:alli_point_getCfg()
	if self._t_alli_point_get == nil then
		local module = self:_loadDeginData("t_alli_point_get")
		if not self.inited then return module end
		self._t_alli_point_get = module
	end
	return self._t_alli_point_get
end

ConfigDataUtils._t_alli_point_get_group = nil
---@return DataTables.CommonData.t_alli_point_get_group
function ConfigDataUtils:alli_point_get_groupCfg()
	if self._t_alli_point_get_group == nil then
		local module = self:_loadDeginData("t_alli_point_get_group")
		if not self.inited then return module end
		self._t_alli_point_get_group = module
	end
	return self._t_alli_point_get_group
end

ConfigDataUtils._t_alli_point_reward = nil
---@return DataTables.CommonData.t_alli_point_reward
function ConfigDataUtils:alli_point_rewardCfg()
	if self._t_alli_point_reward == nil then
		local module = self:_loadDeginData("t_alli_point_reward")
		if not self.inited then return module end
		self._t_alli_point_reward = module
	end
	return self._t_alli_point_reward
end

ConfigDataUtils._t_alli_rank_reward = nil
---@return DataTables.CommonData.t_alli_rank_reward
function ConfigDataUtils:alli_rank_rewardCfg()
	if self._t_alli_rank_reward == nil then
		local module = self:_loadDeginData("t_alli_rank_reward")
		if not self.inited then return module end
		self._t_alli_rank_reward = module
	end
	return self._t_alli_rank_reward
end

ConfigDataUtils._t_alliance_activity = nil
---@return DataTables.CommonData.t_alliance_activity
function ConfigDataUtils:alliance_activityCfg()
	if self._t_alliance_activity == nil then
		local module = self:_loadDeginData("t_alliance_activity")
		if not self.inited then return module end
		self._t_alliance_activity = module
	end
	return self._t_alliance_activity
end

ConfigDataUtils._t_alliance_activitypoint = nil
---@return DataTables.CommonData.t_alliance_activitypoint
function ConfigDataUtils:alliance_activitypointCfg()
	if self._t_alliance_activitypoint == nil then
		local module = self:_loadDeginData("t_alliance_activitypoint")
		if not self.inited then return module end
		self._t_alliance_activitypoint = module
	end
	return self._t_alliance_activitypoint
end

ConfigDataUtils._t_alliance_authority = nil
---@return DataTables.CommonData.t_alliance_authority
function ConfigDataUtils:alliance_authorityCfg()
	if self._t_alliance_authority == nil then
		local module = self:_loadDeginData("t_alliance_authority")
		if not self.inited then return module end
		self._t_alliance_authority = module
	end
	return self._t_alliance_authority
end

ConfigDataUtils._t_alliance_banner = nil
---@return DataTables.CommonData.t_alliance_banner
function ConfigDataUtils:alliance_bannerCfg()
	if self._t_alliance_banner == nil then
		local module = self:_loadDeginData("t_alliance_banner")
		if not self.inited then return module end
		self._t_alliance_banner = module
	end
	return self._t_alliance_banner
end

ConfigDataUtils._t_alliance_base = nil
---@return DataTables.CommonData.t_alliance_base
function ConfigDataUtils:alliance_baseCfg()
	if self._t_alliance_base == nil then
		local module = self:_loadDeginData("t_alliance_base")
		if not self.inited then return module end
		self._t_alliance_base = module
	end
	return self._t_alliance_base
end

ConfigDataUtils._t_alliance_battle_activity = nil
---@return DataTables.CommonData.t_alliance_battle_activity
function ConfigDataUtils:alliance_battle_activityCfg()
	if self._t_alliance_battle_activity == nil then
		local module = self:_loadDeginData("t_alliance_battle_activity")
		if not self.inited then return module end
		self._t_alliance_battle_activity = module
	end
	return self._t_alliance_battle_activity
end

ConfigDataUtils._t_alliance_battle_camp = nil
---@return DataTables.CommonData.t_alliance_battle_camp
function ConfigDataUtils:alliance_battle_campCfg()
	if self._t_alliance_battle_camp == nil then
		local module = self:_loadDeginData("t_alliance_battle_camp")
		if not self.inited then return module end
		self._t_alliance_battle_camp = module
	end
	return self._t_alliance_battle_camp
end

ConfigDataUtils._t_alliance_battle_level = nil
---@return DataTables.CommonData.t_alliance_battle_level
function ConfigDataUtils:alliance_battle_levelCfg()
	if self._t_alliance_battle_level == nil then
		local module = self:_loadDeginData("t_alliance_battle_level")
		if not self.inited then return module end
		self._t_alliance_battle_level = module
	end
	return self._t_alliance_battle_level
end

ConfigDataUtils._t_alliance_battle_main = nil
---@return DataTables.CommonData.t_alliance_battle_main
function ConfigDataUtils:alliance_battle_mainCfg()
	if self._t_alliance_battle_main == nil then
		local module = self:_loadDeginData("t_alliance_battle_main")
		if not self.inited then return module end
		self._t_alliance_battle_main = module
	end
	return self._t_alliance_battle_main
end

ConfigDataUtils._t_alliance_battle_stronghold = nil
---@return DataTables.CommonData.t_alliance_battle_stronghold
function ConfigDataUtils:alliance_battle_strongholdCfg()
	if self._t_alliance_battle_stronghold == nil then
		local module = self:_loadDeginData("t_alliance_battle_stronghold")
		if not self.inited then return module end
		self._t_alliance_battle_stronghold = module
	end
	return self._t_alliance_battle_stronghold
end

ConfigDataUtils._t_alliance_battle_tip = nil
---@return DataTables.CommonData.t_alliance_battle_tip
function ConfigDataUtils:alliance_battle_tipCfg()
	if self._t_alliance_battle_tip == nil then
		local module = self:_loadDeginData("t_alliance_battle_tip")
		if not self.inited then return module end
		self._t_alliance_battle_tip = module
	end
	return self._t_alliance_battle_tip
end

ConfigDataUtils._t_alliance_button = nil
---@return DataTables.CommonData.t_alliance_button
function ConfigDataUtils:alliance_buttonCfg()
	if self._t_alliance_button == nil then
		local module = self:_loadDeginData("t_alliance_button")
		if not self.inited then return module end
		self._t_alliance_button = module
	end
	return self._t_alliance_button
end

ConfigDataUtils._t_alliance_challenge_difficulty = nil
---@return DataTables.CommonData.t_alliance_challenge_difficulty
function ConfigDataUtils:alliance_challenge_difficultyCfg()
	if self._t_alliance_challenge_difficulty == nil then
		local module = self:_loadDeginData("t_alliance_challenge_difficulty")
		if not self.inited then return module end
		self._t_alliance_challenge_difficulty = module
	end
	return self._t_alliance_challenge_difficulty
end

ConfigDataUtils._t_alliance_challenge_main = nil
---@return DataTables.CommonData.t_alliance_challenge_main
function ConfigDataUtils:alliance_challenge_mainCfg()
	if self._t_alliance_challenge_main == nil then
		local module = self:_loadDeginData("t_alliance_challenge_main")
		if not self.inited then return module end
		self._t_alliance_challenge_main = module
	end
	return self._t_alliance_challenge_main
end

ConfigDataUtils._t_alliance_challenge_rally = nil
---@return DataTables.CommonData.t_alliance_challenge_rally
function ConfigDataUtils:alliance_challenge_rallyCfg()
	if self._t_alliance_challenge_rally == nil then
		local module = self:_loadDeginData("t_alliance_challenge_rally")
		if not self.inited then return module end
		self._t_alliance_challenge_rally = module
	end
	return self._t_alliance_challenge_rally
end

ConfigDataUtils._t_alliance_challenge_reward = nil
---@return DataTables.CommonData.t_alliance_challenge_reward
function ConfigDataUtils:alliance_challenge_rewardCfg()
	if self._t_alliance_challenge_reward == nil then
		local module = self:_loadDeginData("t_alliance_challenge_reward")
		if not self.inited then return module end
		self._t_alliance_challenge_reward = module
	end
	return self._t_alliance_challenge_reward
end

ConfigDataUtils._t_alliance_coloring = nil
---@return DataTables.CommonData.t_alliance_coloring
function ConfigDataUtils:alliance_coloringCfg()
	if self._t_alliance_coloring == nil then
		local module = self:_loadDeginData("t_alliance_coloring")
		if not self.inited then return module end
		self._t_alliance_coloring = module
	end
	return self._t_alliance_coloring
end

ConfigDataUtils._t_alliance_donate = nil
---@return DataTables.CommonData.t_alliance_donate
function ConfigDataUtils:alliance_donateCfg()
	if self._t_alliance_donate == nil then
		local module = self:_loadDeginData("t_alliance_donate")
		if not self.inited then return module end
		self._t_alliance_donate = module
	end
	return self._t_alliance_donate
end

ConfigDataUtils._t_alliance_exp = nil
---@return DataTables.CommonData.t_alliance_exp
function ConfigDataUtils:alliance_expCfg()
	if self._t_alliance_exp == nil then
		local module = self:_loadDeginData("t_alliance_exp")
		if not self.inited then return module end
		self._t_alliance_exp = module
	end
	return self._t_alliance_exp
end

ConfigDataUtils._t_alliance_flag = nil
---@return DataTables.CommonData.t_alliance_flag
function ConfigDataUtils:alliance_flagCfg()
	if self._t_alliance_flag == nil then
		local module = self:_loadDeginData("t_alliance_flag")
		if not self.inited then return module end
		self._t_alliance_flag = module
	end
	return self._t_alliance_flag
end

ConfigDataUtils._t_alliance_gift = nil
---@return DataTables.CommonData.t_alliance_gift
function ConfigDataUtils:alliance_giftCfg()
	if self._t_alliance_gift == nil then
		local module = self:_loadDeginData("t_alliance_gift")
		if not self.inited then return module end
		self._t_alliance_gift = module
	end
	return self._t_alliance_gift
end

ConfigDataUtils._t_alliance_help = nil
---@return DataTables.CommonData.t_alliance_help
function ConfigDataUtils:alliance_helpCfg()
	if self._t_alliance_help == nil then
		local module = self:_loadDeginData("t_alliance_help")
		if not self.inited then return module end
		self._t_alliance_help = module
	end
	return self._t_alliance_help
end

ConfigDataUtils._t_alliance_join = nil
---@return DataTables.CommonData.t_alliance_join
function ConfigDataUtils:alliance_joinCfg()
	if self._t_alliance_join == nil then
		local module = self:_loadDeginData("t_alliance_join")
		if not self.inited then return module end
		self._t_alliance_join = module
	end
	return self._t_alliance_join
end

ConfigDataUtils._t_alliance_language = nil
---@return DataTables.CommonData.t_alliance_language
function ConfigDataUtils:alliance_languageCfg()
	if self._t_alliance_language == nil then
		local module = self:_loadDeginData("t_alliance_language")
		if not self.inited then return module end
		self._t_alliance_language = module
	end
	return self._t_alliance_language
end

ConfigDataUtils._t_alliance_level = nil
---@return DataTables.CommonData.t_alliance_level
function ConfigDataUtils:alliance_levelCfg()
	if self._t_alliance_level == nil then
		local module = self:_loadDeginData("t_alliance_level")
		if not self.inited then return module end
		self._t_alliance_level = module
	end
	return self._t_alliance_level
end

ConfigDataUtils._t_alliance_mark = nil
---@return DataTables.CommonData.t_alliance_mark
function ConfigDataUtils:alliance_markCfg()
	if self._t_alliance_mark == nil then
		local module = self:_loadDeginData("t_alliance_mark")
		if not self.inited then return module end
		self._t_alliance_mark = module
	end
	return self._t_alliance_mark
end

ConfigDataUtils._t_alliance_pattern = nil
---@return DataTables.CommonData.t_alliance_pattern
function ConfigDataUtils:alliance_patternCfg()
	if self._t_alliance_pattern == nil then
		local module = self:_loadDeginData("t_alliance_pattern")
		if not self.inited then return module end
		self._t_alliance_pattern = module
	end
	return self._t_alliance_pattern
end

ConfigDataUtils._t_alliance_research_base = nil
---@return DataTables.CommonData.t_alliance_research_base
function ConfigDataUtils:alliance_research_baseCfg()
	if self._t_alliance_research_base == nil then
		local module = self:_loadDeginData("t_alliance_research_base")
		if not self.inited then return module end
		self._t_alliance_research_base = module
	end
	return self._t_alliance_research_base
end

ConfigDataUtils._t_alliance_research_level_data = nil
---@return DataTables.CommonData.t_alliance_research_level_data
function ConfigDataUtils:alliance_research_level_dataCfg()
	if self._t_alliance_research_level_data == nil then
		local module = self:_loadDeginData("t_alliance_research_level_data")
		if not self.inited then return module end
		self._t_alliance_research_level_data = module
	end
	return self._t_alliance_research_level_data
end

ConfigDataUtils._t_alliance_research_type = nil
---@return DataTables.CommonData.t_alliance_research_type
function ConfigDataUtils:alliance_research_typeCfg()
	if self._t_alliance_research_type == nil then
		local module = self:_loadDeginData("t_alliance_research_type")
		if not self.inited then return module end
		self._t_alliance_research_type = module
	end
	return self._t_alliance_research_type
end

ConfigDataUtils._t_alliance_set = nil
---@return DataTables.CommonData.t_alliance_set
function ConfigDataUtils:alliance_setCfg()
	if self._t_alliance_set == nil then
		local module = self:_loadDeginData("t_alliance_set")
		if not self.inited then return module end
		self._t_alliance_set = module
	end
	return self._t_alliance_set
end

ConfigDataUtils._t_alliance_ship = nil
---@return DataTables.CommonData.t_alliance_ship
function ConfigDataUtils:alliance_shipCfg()
	if self._t_alliance_ship == nil then
		local module = self:_loadDeginData("t_alliance_ship")
		if not self.inited then return module end
		self._t_alliance_ship = module
	end
	return self._t_alliance_ship
end

ConfigDataUtils._t_alliance_ship_difficulty = nil
---@return DataTables.CommonData.t_alliance_ship_difficulty
function ConfigDataUtils:alliance_ship_difficultyCfg()
	if self._t_alliance_ship_difficulty == nil then
		local module = self:_loadDeginData("t_alliance_ship_difficulty")
		if not self.inited then return module end
		self._t_alliance_ship_difficulty = module
	end
	return self._t_alliance_ship_difficulty
end

ConfigDataUtils._t_alliance_ship_main = nil
---@return DataTables.CommonData.t_alliance_ship_main
function ConfigDataUtils:alliance_ship_mainCfg()
	if self._t_alliance_ship_main == nil then
		local module = self:_loadDeginData("t_alliance_ship_main")
		if not self.inited then return module end
		self._t_alliance_ship_main = module
	end
	return self._t_alliance_ship_main
end

ConfigDataUtils._t_alliance_ship_map = nil
---@return DataTables.CommonData.t_alliance_ship_map
function ConfigDataUtils:alliance_ship_mapCfg()
	if self._t_alliance_ship_map == nil then
		local module = self:_loadDeginData("t_alliance_ship_map")
		if not self.inited then return module end
		self._t_alliance_ship_map = module
	end
	return self._t_alliance_ship_map
end

ConfigDataUtils._t_alliance_ship_monster = nil
---@return DataTables.CommonData.t_alliance_ship_monster
function ConfigDataUtils:alliance_ship_monsterCfg()
	if self._t_alliance_ship_monster == nil then
		local module = self:_loadDeginData("t_alliance_ship_monster")
		if not self.inited then return module end
		self._t_alliance_ship_monster = module
	end
	return self._t_alliance_ship_monster
end

ConfigDataUtils._t_alliance_star = nil
---@return DataTables.CommonData.t_alliance_star
function ConfigDataUtils:alliance_starCfg()
	if self._t_alliance_star == nil then
		local module = self:_loadDeginData("t_alliance_star")
		if not self.inited then return module end
		self._t_alliance_star = module
	end
	return self._t_alliance_star
end

ConfigDataUtils._t_alliance_star_main = nil
---@return DataTables.CommonData.t_alliance_star_main
function ConfigDataUtils:alliance_star_mainCfg()
	if self._t_alliance_star_main == nil then
		local module = self:_loadDeginData("t_alliance_star_main")
		if not self.inited then return module end
		self._t_alliance_star_main = module
	end
	return self._t_alliance_star_main
end

ConfigDataUtils._t_alliance_symbol = nil
---@return DataTables.CommonData.t_alliance_symbol
function ConfigDataUtils:alliance_symbolCfg()
	if self._t_alliance_symbol == nil then
		local module = self:_loadDeginData("t_alliance_symbol")
		if not self.inited then return module end
		self._t_alliance_symbol = module
	end
	return self._t_alliance_symbol
end

ConfigDataUtils._t_arena_pvp_main = nil
---@return DataTables.CommonData.t_arena_pvp_main
function ConfigDataUtils:arena_pvp_mainCfg()
	if self._t_arena_pvp_main == nil then
		local module = self:_loadDeginData("t_arena_pvp_main")
		if not self.inited then return module end
		self._t_arena_pvp_main = module
	end
	return self._t_arena_pvp_main
end

ConfigDataUtils._t_arena_pvp_rank = nil
---@return DataTables.CommonData.t_arena_pvp_rank
function ConfigDataUtils:arena_pvp_rankCfg()
	if self._t_arena_pvp_rank == nil then
		local module = self:_loadDeginData("t_arena_pvp_rank")
		if not self.inited then return module end
		self._t_arena_pvp_rank = module
	end
	return self._t_arena_pvp_rank
end

ConfigDataUtils._t_arena_pvp_rank_grade = nil
---@return DataTables.CommonData.t_arena_pvp_rank_grade
function ConfigDataUtils:arena_pvp_rank_gradeCfg()
	if self._t_arena_pvp_rank_grade == nil then
		local module = self:_loadDeginData("t_arena_pvp_rank_grade")
		if not self.inited then return module end
		self._t_arena_pvp_rank_grade = module
	end
	return self._t_arena_pvp_rank_grade
end

ConfigDataUtils._t_arena_pvp_rule_match = nil
---@return DataTables.CommonData.t_arena_pvp_rule_match
function ConfigDataUtils:arena_pvp_rule_matchCfg()
	if self._t_arena_pvp_rule_match == nil then
		local module = self:_loadDeginData("t_arena_pvp_rule_match")
		if not self.inited then return module end
		self._t_arena_pvp_rule_match = module
	end
	return self._t_arena_pvp_rule_match
end

ConfigDataUtils._t_arena_pvp_rule_point = nil
---@return DataTables.CommonData.t_arena_pvp_rule_point
function ConfigDataUtils:arena_pvp_rule_pointCfg()
	if self._t_arena_pvp_rule_point == nil then
		local module = self:_loadDeginData("t_arena_pvp_rule_point")
		if not self.inited then return module end
		self._t_arena_pvp_rule_point = module
	end
	return self._t_arena_pvp_rule_point
end

ConfigDataUtils._t_attr_group_base = nil
---@return DataTables.CommonData.t_attr_group_base
function ConfigDataUtils:attr_group_baseCfg()
	if self._t_attr_group_base == nil then
		local module = self:_loadDeginData("t_attr_group_base")
		if not self.inited then return module end
		self._t_attr_group_base = module
	end
	return self._t_attr_group_base
end

ConfigDataUtils._t_attr_show_details = nil
---@return DataTables.CommonData.t_attr_show_details
function ConfigDataUtils:attr_show_detailsCfg()
	if self._t_attr_show_details == nil then
		local module = self:_loadDeginData("t_attr_show_details")
		if not self.inited then return module end
		self._t_attr_show_details = module
	end
	return self._t_attr_show_details
end

ConfigDataUtils._t_attr_show_source = nil
---@return DataTables.CommonData.t_attr_show_source
function ConfigDataUtils:attr_show_sourceCfg()
	if self._t_attr_show_source == nil then
		local module = self:_loadDeginData("t_attr_show_source")
		if not self.inited then return module end
		self._t_attr_show_source = module
	end
	return self._t_attr_show_source
end

ConfigDataUtils._t_attribute = nil
---@return DataTables.CommonData.t_attribute
function ConfigDataUtils:attributeCfg()
	if self._t_attribute == nil then
		local module = self:_loadDeginData("t_attribute")
		if not self.inited then return module end
		self._t_attribute = module
	end
	return self._t_attribute
end

ConfigDataUtils._t_attribute_related = nil
---@return DataTables.CommonData.t_attribute_related
function ConfigDataUtils:attribute_relatedCfg()
	if self._t_attribute_related == nil then
		local module = self:_loadDeginData("t_attribute_related")
		if not self.inited then return module end
		self._t_attribute_related = module
	end
	return self._t_attribute_related
end

ConfigDataUtils._t_auto_emoji = nil
---@return DataTables.CommonData.t_auto_emoji
function ConfigDataUtils:auto_emojiCfg()
	if self._t_auto_emoji == nil then
		local module = self:_loadDeginData("t_auto_emoji")
		if not self.inited then return module end
		self._t_auto_emoji = module
	end
	return self._t_auto_emoji
end

ConfigDataUtils._t_avatar_buff = nil
---@return DataTables.CommonData.t_avatar_buff
function ConfigDataUtils:avatar_buffCfg()
	if self._t_avatar_buff == nil then
		local module = self:_loadDeginData("t_avatar_buff")
		if not self.inited then return module end
		self._t_avatar_buff = module
	end
	return self._t_avatar_buff
end

ConfigDataUtils._t_base_config = nil
---@return DataTables.CommonData.t_base_config
function ConfigDataUtils:base_configCfg()
	if self._t_base_config == nil then
		local module = self:_loadDeginData("t_base_config")
		if not self.inited then return module end
		self._t_base_config = module
	end
	return self._t_base_config
end

ConfigDataUtils._t_base_sys_genre_config = nil
---@return DataTables.CommonData.t_base_sys_genre_config
function ConfigDataUtils:base_sys_genre_configCfg()
	if self._t_base_sys_genre_config == nil then
		local module = self:_loadDeginData("t_base_sys_genre_config")
		if not self.inited then return module end
		self._t_base_sys_genre_config = module
	end
	return self._t_base_sys_genre_config
end

ConfigDataUtils._t_base_sys_manufacturer_config = nil
---@return DataTables.CommonData.t_base_sys_manufacturer_config
function ConfigDataUtils:base_sys_manufacturer_configCfg()
	if self._t_base_sys_manufacturer_config == nil then
		local module = self:_loadDeginData("t_base_sys_manufacturer_config")
		if not self.inited then return module end
		self._t_base_sys_manufacturer_config = module
	end
	return self._t_base_sys_manufacturer_config
end

ConfigDataUtils._t_base_sys_tag_content = nil
---@return DataTables.CommonData.t_base_sys_tag_content
function ConfigDataUtils:base_sys_tag_contentCfg()
	if self._t_base_sys_tag_content == nil then
		local module = self:_loadDeginData("t_base_sys_tag_content")
		if not self.inited then return module end
		self._t_base_sys_tag_content = module
	end
	return self._t_base_sys_tag_content
end

ConfigDataUtils._t_bestlord_point_get = nil
---@return DataTables.CommonData.t_bestlord_point_get
function ConfigDataUtils:bestlord_point_getCfg()
	if self._t_bestlord_point_get == nil then
		local module = self:_loadDeginData("t_bestlord_point_get")
		if not self.inited then return module end
		self._t_bestlord_point_get = module
	end
	return self._t_bestlord_point_get
end

ConfigDataUtils._t_bestlord_point_get_stage = nil
---@return DataTables.CommonData.t_bestlord_point_get_stage
function ConfigDataUtils:bestlord_point_get_stageCfg()
	if self._t_bestlord_point_get_stage == nil then
		local module = self:_loadDeginData("t_bestlord_point_get_stage")
		if not self.inited then return module end
		self._t_bestlord_point_get_stage = module
	end
	return self._t_bestlord_point_get_stage
end

ConfigDataUtils._t_bestlord_point_reward = nil
---@return DataTables.CommonData.t_bestlord_point_reward
function ConfigDataUtils:bestlord_point_rewardCfg()
	if self._t_bestlord_point_reward == nil then
		local module = self:_loadDeginData("t_bestlord_point_reward")
		if not self.inited then return module end
		self._t_bestlord_point_reward = module
	end
	return self._t_bestlord_point_reward
end

ConfigDataUtils._t_bestlord_rank_reward = nil
---@return DataTables.CommonData.t_bestlord_rank_reward
function ConfigDataUtils:bestlord_rank_rewardCfg()
	if self._t_bestlord_rank_reward == nil then
		local module = self:_loadDeginData("t_bestlord_rank_reward")
		if not self.inited then return module end
		self._t_bestlord_rank_reward = module
	end
	return self._t_bestlord_rank_reward
end

ConfigDataUtils._t_bestlord_stage_group = nil
---@return DataTables.CommonData.t_bestlord_stage_group
function ConfigDataUtils:bestlord_stage_groupCfg()
	if self._t_bestlord_stage_group == nil then
		local module = self:_loadDeginData("t_bestlord_stage_group")
		if not self.inited then return module end
		self._t_bestlord_stage_group = module
	end
	return self._t_bestlord_stage_group
end

ConfigDataUtils._t_box_group = nil
---@return DataTables.CommonData.t_box_group
function ConfigDataUtils:box_groupCfg()
	if self._t_box_group == nil then
		local module = self:_loadDeginData("t_box_group")
		if not self.inited then return module end
		self._t_box_group = module
	end
	return self._t_box_group
end

ConfigDataUtils._t_buff = nil
---@return DataTables.CommonData.t_buff
function ConfigDataUtils:buffCfg()
	if self._t_buff == nil then
		local module = self:_loadDeginData("t_buff")
		if not self.inited then return module end
		self._t_buff = module
	end
	return self._t_buff
end

ConfigDataUtils._t_buff_show = nil
---@return DataTables.CommonData.t_buff_show
function ConfigDataUtils:buff_showCfg()
	if self._t_buff_show == nil then
		local module = self:_loadDeginData("t_buff_show")
		if not self.inited then return module end
		self._t_buff_show = module
	end
	return self._t_buff_show
end

ConfigDataUtils._t_buff_show_hud = nil
---@return DataTables.CommonData.t_buff_show_hud
function ConfigDataUtils:buff_show_hudCfg()
	if self._t_buff_show_hud == nil then
		local module = self:_loadDeginData("t_buff_show_hud")
		if not self.inited then return module end
		self._t_buff_show_hud = module
	end
	return self._t_buff_show_hud
end

ConfigDataUtils._t_camp_base = nil
---@return DataTables.CommonData.t_camp_base
function ConfigDataUtils:camp_baseCfg()
	if self._t_camp_base == nil then
		local module = self:_loadDeginData("t_camp_base")
		if not self.inited then return module end
		self._t_camp_base = module
	end
	return self._t_camp_base
end

ConfigDataUtils._t_camp_button = nil
---@return DataTables.CommonData.t_camp_button
function ConfigDataUtils:camp_buttonCfg()
	if self._t_camp_button == nil then
		local module = self:_loadDeginData("t_camp_button")
		if not self.inited then return module end
		self._t_camp_button = module
	end
	return self._t_camp_button
end

ConfigDataUtils._t_camp_relation_authority = nil
---@return DataTables.CommonData.t_camp_relation_authority
function ConfigDataUtils:camp_relation_authorityCfg()
	if self._t_camp_relation_authority == nil then
		local module = self:_loadDeginData("t_camp_relation_authority")
		if not self.inited then return module end
		self._t_camp_relation_authority = module
	end
	return self._t_camp_relation_authority
end

ConfigDataUtils._t_campsite_challenge_spine_offset = nil
---@return DataTables.CommonData.t_campsite_challenge_spine_offset
function ConfigDataUtils:campsite_challenge_spine_offsetCfg()
	if self._t_campsite_challenge_spine_offset == nil then
		local module = self:_loadDeginData("t_campsite_challenge_spine_offset")
		if not self.inited then return module end
		self._t_campsite_challenge_spine_offset = module
	end
	return self._t_campsite_challenge_spine_offset
end

ConfigDataUtils._t_casualization_options = nil
---@return DataTables.CommonData.t_casualization_options
function ConfigDataUtils:casualization_optionsCfg()
	if self._t_casualization_options == nil then
		local module = self:_loadDeginData("t_casualization_options")
		if not self.inited then return module end
		self._t_casualization_options = module
	end
	return self._t_casualization_options
end

ConfigDataUtils._t_celebrations_info = nil
---@return DataTables.CommonData.t_celebrations_info
function ConfigDataUtils:celebrations_infoCfg()
	if self._t_celebrations_info == nil then
		local module = self:_loadDeginData("t_celebrations_info")
		if not self.inited then return module end
		self._t_celebrations_info = module
	end
	return self._t_celebrations_info
end

ConfigDataUtils._t_challenger_constant = nil
---@return DataTables.CommonData.t_challenger_constant
function ConfigDataUtils:challenger_constantCfg()
	if self._t_challenger_constant == nil then
		local module = self:_loadDeginData("t_challenger_constant")
		if not self.inited then return module end
		self._t_challenger_constant = module
	end
	return self._t_challenger_constant
end

ConfigDataUtils._t_challenger_level_date = nil
---@return DataTables.CommonData.t_challenger_level_date
function ConfigDataUtils:challenger_level_dateCfg()
	if self._t_challenger_level_date == nil then
		local module = self:_loadDeginData("t_challenger_level_date")
		if not self.inited then return module end
		self._t_challenger_level_date = module
	end
	return self._t_challenger_level_date
end

ConfigDataUtils._t_challenger_task = nil
---@return DataTables.CommonData.t_challenger_task
function ConfigDataUtils:challenger_taskCfg()
	if self._t_challenger_task == nil then
		local module = self:_loadDeginData("t_challenger_task")
		if not self.inited then return module end
		self._t_challenger_task = module
	end
	return self._t_challenger_task
end

ConfigDataUtils._t_chapter_base = nil
---@return DataTables.CommonData.t_chapter_base
function ConfigDataUtils:chapter_baseCfg()
	if self._t_chapter_base == nil then
		local module = self:_loadDeginData("t_chapter_base")
		if not self.inited then return module end
		self._t_chapter_base = module
	end
	return self._t_chapter_base
end

ConfigDataUtils._t_chapter_inherit = nil
---@return DataTables.CommonData.t_chapter_inherit
function ConfigDataUtils:chapter_inheritCfg()
	if self._t_chapter_inherit == nil then
		local module = self:_loadDeginData("t_chapter_inherit")
		if not self.inited then return module end
		self._t_chapter_inherit = module
	end
	return self._t_chapter_inherit
end

ConfigDataUtils._t_chapter_level = nil
---@return DataTables.CommonData.t_chapter_level
function ConfigDataUtils:chapter_levelCfg()
	if self._t_chapter_level == nil then
		local module = self:_loadDeginData("t_chapter_level")
		if not self.inited then return module end
		self._t_chapter_level = module
	end
	return self._t_chapter_level
end

ConfigDataUtils._t_chapter_level_show = nil
---@return DataTables.CommonData.t_chapter_level_show
function ConfigDataUtils:chapter_level_showCfg()
	if self._t_chapter_level_show == nil then
		local module = self:_loadDeginData("t_chapter_level_show")
		if not self.inited then return module end
		self._t_chapter_level_show = module
	end
	return self._t_chapter_level_show
end

ConfigDataUtils._t_chapter_story_base = nil
---@return DataTables.CommonData.t_chapter_story_base
function ConfigDataUtils:chapter_story_baseCfg()
	if self._t_chapter_story_base == nil then
		local module = self:_loadDeginData("t_chapter_story_base")
		if not self.inited then return module end
		self._t_chapter_story_base = module
	end
	return self._t_chapter_story_base
end

ConfigDataUtils._t_chat_emoji = nil
---@return DataTables.CommonData.t_chat_emoji
function ConfigDataUtils:chat_emojiCfg()
	if self._t_chat_emoji == nil then
		local module = self:_loadDeginData("t_chat_emoji")
		if not self.inited then return module end
		self._t_chat_emoji = module
	end
	return self._t_chat_emoji
end

ConfigDataUtils._t_chat_frame_show = nil
---@return DataTables.CommonData.t_chat_frame_show
function ConfigDataUtils:chat_frame_showCfg()
	if self._t_chat_frame_show == nil then
		local module = self:_loadDeginData("t_chat_frame_show")
		if not self.inited then return module end
		self._t_chat_frame_show = module
	end
	return self._t_chat_frame_show
end

ConfigDataUtils._t_chat_icon_show = nil
---@return DataTables.CommonData.t_chat_icon_show
function ConfigDataUtils:chat_icon_showCfg()
	if self._t_chat_icon_show == nil then
		local module = self:_loadDeginData("t_chat_icon_show")
		if not self.inited then return module end
		self._t_chat_icon_show = module
	end
	return self._t_chat_icon_show
end

ConfigDataUtils._t_chat_special_template = nil
---@return DataTables.CommonData.t_chat_special_template
function ConfigDataUtils:chat_special_templateCfg()
	if self._t_chat_special_template == nil then
		local module = self:_loadDeginData("t_chat_special_template")
		if not self.inited then return module end
		self._t_chat_special_template = module
	end
	return self._t_chat_special_template
end

ConfigDataUtils._t_chat_system_config = nil
---@return DataTables.CommonData.t_chat_system_config
function ConfigDataUtils:chat_system_configCfg()
	if self._t_chat_system_config == nil then
		local module = self:_loadDeginData("t_chat_system_config")
		if not self.inited then return module end
		self._t_chat_system_config = module
	end
	return self._t_chat_system_config
end

ConfigDataUtils._t_check_condition_param = nil
---@return DataTables.CommonData.t_check_condition_param
function ConfigDataUtils:check_condition_paramCfg()
	if self._t_check_condition_param == nil then
		local module = self:_loadDeginData("t_check_condition_param")
		if not self.inited then return module end
		self._t_check_condition_param = module
	end
	return self._t_check_condition_param
end

ConfigDataUtils._t_chirstmas_kill_reward = nil
---@return DataTables.CommonData.t_chirstmas_kill_reward
function ConfigDataUtils:chirstmas_kill_rewardCfg()
	if self._t_chirstmas_kill_reward == nil then
		local module = self:_loadDeginData("t_chirstmas_kill_reward")
		if not self.inited then return module end
		self._t_chirstmas_kill_reward = module
	end
	return self._t_chirstmas_kill_reward
end

ConfigDataUtils._t_christmas_tps_event = nil
---@return DataTables.CommonData.t_christmas_tps_event
function ConfigDataUtils:christmas_tps_eventCfg()
	if self._t_christmas_tps_event == nil then
		local module = self:_loadDeginData("t_christmas_tps_event")
		if not self.inited then return module end
		self._t_christmas_tps_event = module
	end
	return self._t_christmas_tps_event
end

ConfigDataUtils._t_coin_constant = nil
---@return DataTables.CommonData.t_coin_constant
function ConfigDataUtils:coin_constantCfg()
	if self._t_coin_constant == nil then
		local module = self:_loadDeginData("t_coin_constant")
		if not self.inited then return module end
		self._t_coin_constant = module
	end
	return self._t_coin_constant
end

ConfigDataUtils._t_coin_main = nil
---@return DataTables.CommonData.t_coin_main
function ConfigDataUtils:coin_mainCfg()
	if self._t_coin_main == nil then
		local module = self:_loadDeginData("t_coin_main")
		if not self.inited then return module end
		self._t_coin_main = module
	end
	return self._t_coin_main
end

ConfigDataUtils._t_coin_monster = nil
---@return DataTables.CommonData.t_coin_monster
function ConfigDataUtils:coin_monsterCfg()
	if self._t_coin_monster == nil then
		local module = self:_loadDeginData("t_coin_monster")
		if not self.inited then return module end
		self._t_coin_monster = module
	end
	return self._t_coin_monster
end

ConfigDataUtils._t_coin_monster_point = nil
---@return DataTables.CommonData.t_coin_monster_point
function ConfigDataUtils:coin_monster_pointCfg()
	if self._t_coin_monster_point == nil then
		local module = self:_loadDeginData("t_coin_monster_point")
		if not self.inited then return module end
		self._t_coin_monster_point = module
	end
	return self._t_coin_monster_point
end

ConfigDataUtils._t_coin_shop = nil
---@return DataTables.CommonData.t_coin_shop
function ConfigDataUtils:coin_shopCfg()
	if self._t_coin_shop == nil then
		local module = self:_loadDeginData("t_coin_shop")
		if not self.inited then return module end
		self._t_coin_shop = module
	end
	return self._t_coin_shop
end

ConfigDataUtils._t_color_rule = nil
---@return DataTables.CommonData.t_color_rule
function ConfigDataUtils:color_ruleCfg()
	if self._t_color_rule == nil then
		local module = self:_loadDeginData("t_color_rule")
		if not self.inited then return module end
		self._t_color_rule = module
	end
	return self._t_color_rule
end

ConfigDataUtils._t_common_reward = nil
---@return DataTables.CommonData.t_common_reward
function ConfigDataUtils:common_rewardCfg()
	if self._t_common_reward == nil then
		local module = self:_loadDeginData("t_common_reward")
		if not self.inited then return module end
		self._t_common_reward = module
	end
	return self._t_common_reward
end

ConfigDataUtils._t_community_event_center = nil
---@return DataTables.CommonData.t_community_event_center
function ConfigDataUtils:community_event_centerCfg()
	if self._t_community_event_center == nil then
		local module = self:_loadDeginData("t_community_event_center")
		if not self.inited then return module end
		self._t_community_event_center = module
	end
	return self._t_community_event_center
end

ConfigDataUtils._t_community_follow_main = nil
---@return DataTables.CommonData.t_community_follow_main
function ConfigDataUtils:community_follow_mainCfg()
	if self._t_community_follow_main == nil then
		local module = self:_loadDeginData("t_community_follow_main")
		if not self.inited then return module end
		self._t_community_follow_main = module
	end
	return self._t_community_follow_main
end

ConfigDataUtils._t_community_jump_main = nil
---@return DataTables.CommonData.t_community_jump_main
function ConfigDataUtils:community_jump_mainCfg()
	if self._t_community_jump_main == nil then
		local module = self:_loadDeginData("t_community_jump_main")
		if not self.inited then return module end
		self._t_community_jump_main = module
	end
	return self._t_community_jump_main
end

ConfigDataUtils._t_community_list = nil
---@return DataTables.CommonData.t_community_list
function ConfigDataUtils:community_listCfg()
	if self._t_community_list == nil then
		local module = self:_loadDeginData("t_community_list")
		if not self.inited then return module end
		self._t_community_list = module
	end
	return self._t_community_list
end

ConfigDataUtils._t_community_special_link = nil
---@return DataTables.CommonData.t_community_special_link
function ConfigDataUtils:community_special_linkCfg()
	if self._t_community_special_link == nil then
		local module = self:_loadDeginData("t_community_special_link")
		if not self.inited then return module end
		self._t_community_special_link = module
	end
	return self._t_community_special_link
end

ConfigDataUtils._t_communityactivity_list = nil
---@return DataTables.CommonData.t_communityactivity_list
function ConfigDataUtils:communityactivity_listCfg()
	if self._t_communityactivity_list == nil then
		local module = self:_loadDeginData("t_communityactivity_list")
		if not self.inited then return module end
		self._t_communityactivity_list = module
	end
	return self._t_communityactivity_list
end

ConfigDataUtils._t_communityactivity_main = nil
---@return DataTables.CommonData.t_communityactivity_main
function ConfigDataUtils:communityactivity_mainCfg()
	if self._t_communityactivity_main == nil then
		local module = self:_loadDeginData("t_communityactivity_main")
		if not self.inited then return module end
		self._t_communityactivity_main = module
	end
	return self._t_communityactivity_main
end

ConfigDataUtils._t_component_growth_break = nil
---@return DataTables.CommonData.t_component_growth_break
function ConfigDataUtils:component_growth_breakCfg()
	if self._t_component_growth_break == nil then
		local module = self:_loadDeginData("t_component_growth_break")
		if not self.inited then return module end
		self._t_component_growth_break = module
	end
	return self._t_component_growth_break
end

ConfigDataUtils._t_component_growth_level = nil
---@return DataTables.CommonData.t_component_growth_level
function ConfigDataUtils:component_growth_levelCfg()
	if self._t_component_growth_level == nil then
		local module = self:_loadDeginData("t_component_growth_level")
		if not self.inited then return module end
		self._t_component_growth_level = module
	end
	return self._t_component_growth_level
end

ConfigDataUtils._t_component_growth_starup = nil
---@return DataTables.CommonData.t_component_growth_starup
function ConfigDataUtils:component_growth_starupCfg()
	if self._t_component_growth_starup == nil then
		local module = self:_loadDeginData("t_component_growth_starup")
		if not self.inited then return module end
		self._t_component_growth_starup = module
	end
	return self._t_component_growth_starup
end

ConfigDataUtils._t_component_growth_superstarup = nil
---@return DataTables.CommonData.t_component_growth_superstarup
function ConfigDataUtils:component_growth_superstarupCfg()
	if self._t_component_growth_superstarup == nil then
		local module = self:_loadDeginData("t_component_growth_superstarup")
		if not self.inited then return module end
		self._t_component_growth_superstarup = module
	end
	return self._t_component_growth_superstarup
end

ConfigDataUtils._t_constant = nil
---@return DataTables.CommonData.t_constant
function ConfigDataUtils:constantCfg()
	if self._t_constant == nil then
		local module = self:_loadDeginData("t_constant")
		if not self.inited then return module end
		self._t_constant = module
	end
	return self._t_constant
end

ConfigDataUtils._t_constant_newbee = nil
---@return DataTables.CommonData.t_constant_newbee
function ConfigDataUtils:constant_newbeeCfg()
	if self._t_constant_newbee == nil then
		local module = self:_loadDeginData("t_constant_newbee")
		if not self.inited then return module end
		self._t_constant_newbee = module
	end
	return self._t_constant_newbee
end

ConfigDataUtils._t_county_born_limit = nil
---@return DataTables.CommonData.t_county_born_limit
function ConfigDataUtils:county_born_limitCfg()
	if self._t_county_born_limit == nil then
		local module = self:_loadDeginData("t_county_born_limit")
		if not self.inited then return module end
		self._t_county_born_limit = module
	end
	return self._t_county_born_limit
end

ConfigDataUtils._t_credits = nil
---@return DataTables.CommonData.t_credits
function ConfigDataUtils:creditsCfg()
	if self._t_credits == nil then
		local module = self:_loadDeginData("t_credits")
		if not self.inited then return module end
		self._t_credits = module
	end
	return self._t_credits
end

ConfigDataUtils._t_crew_base = nil
---@return DataTables.CommonData.t_crew_base
function ConfigDataUtils:crew_baseCfg()
	if self._t_crew_base == nil then
		local module = self:_loadDeginData("t_crew_base")
		if not self.inited then return module end
		self._t_crew_base = module
	end
	return self._t_crew_base
end

ConfigDataUtils._t_crew_field_break = nil
---@return DataTables.CommonData.t_crew_field_break
function ConfigDataUtils:crew_field_breakCfg()
	if self._t_crew_field_break == nil then
		local module = self:_loadDeginData("t_crew_field_break")
		if not self.inited then return module end
		self._t_crew_field_break = module
	end
	return self._t_crew_field_break
end

ConfigDataUtils._t_crew_field_level = nil
---@return DataTables.CommonData.t_crew_field_level
function ConfigDataUtils:crew_field_levelCfg()
	if self._t_crew_field_level == nil then
		local module = self:_loadDeginData("t_crew_field_level")
		if not self.inited then return module end
		self._t_crew_field_level = module
	end
	return self._t_crew_field_level
end

ConfigDataUtils._t_crew_field_stage = nil
---@return DataTables.CommonData.t_crew_field_stage
function ConfigDataUtils:crew_field_stageCfg()
	if self._t_crew_field_stage == nil then
		local module = self:_loadDeginData("t_crew_field_stage")
		if not self.inited then return module end
		self._t_crew_field_stage = module
	end
	return self._t_crew_field_stage
end

ConfigDataUtils._t_crew_growth = nil
---@return DataTables.CommonData.t_crew_growth
function ConfigDataUtils:crew_growthCfg()
	if self._t_crew_growth == nil then
		local module = self:_loadDeginData("t_crew_growth")
		if not self.inited then return module end
		self._t_crew_growth = module
	end
	return self._t_crew_growth
end

ConfigDataUtils._t_crew_hero = nil
---@return DataTables.CommonData.t_crew_hero
function ConfigDataUtils:crew_heroCfg()
	if self._t_crew_hero == nil then
		local module = self:_loadDeginData("t_crew_hero")
		if not self.inited then return module end
		self._t_crew_hero = module
	end
	return self._t_crew_hero
end

ConfigDataUtils._t_crew_npc = nil
---@return DataTables.CommonData.t_crew_npc
function ConfigDataUtils:crew_npcCfg()
	if self._t_crew_npc == nil then
		local module = self:_loadDeginData("t_crew_npc")
		if not self.inited then return module end
		self._t_crew_npc = module
	end
	return self._t_crew_npc
end

ConfigDataUtils._t_crew_profession = nil
---@return DataTables.CommonData.t_crew_profession
function ConfigDataUtils:crew_professionCfg()
	if self._t_crew_profession == nil then
		local module = self:_loadDeginData("t_crew_profession")
		if not self.inited then return module end
		self._t_crew_profession = module
	end
	return self._t_crew_profession
end

ConfigDataUtils._t_crew_quality = nil
---@return DataTables.CommonData.t_crew_quality
function ConfigDataUtils:crew_qualityCfg()
	if self._t_crew_quality == nil then
		local module = self:_loadDeginData("t_crew_quality")
		if not self.inited then return module end
		self._t_crew_quality = module
	end
	return self._t_crew_quality
end

ConfigDataUtils._t_crew_show = nil
---@return DataTables.CommonData.t_crew_show
function ConfigDataUtils:crew_showCfg()
	if self._t_crew_show == nil then
		local module = self:_loadDeginData("t_crew_show")
		if not self.inited then return module end
		self._t_crew_show = module
	end
	return self._t_crew_show
end

ConfigDataUtils._t_daily_group = nil
---@return DataTables.CommonData.t_daily_group
function ConfigDataUtils:daily_groupCfg()
	if self._t_daily_group == nil then
		local module = self:_loadDeginData("t_daily_group")
		if not self.inited then return module end
		self._t_daily_group = module
	end
	return self._t_daily_group
end

ConfigDataUtils._t_daily_signin = nil
---@return DataTables.CommonData.t_daily_signin
function ConfigDataUtils:daily_signinCfg()
	if self._t_daily_signin == nil then
		local module = self:_loadDeginData("t_daily_signin")
		if not self.inited then return module end
		self._t_daily_signin = module
	end
	return self._t_daily_signin
end

ConfigDataUtils._t_daily_signin_group = nil
---@return DataTables.CommonData.t_daily_signin_group
function ConfigDataUtils:daily_signin_groupCfg()
	if self._t_daily_signin_group == nil then
		local module = self:_loadDeginData("t_daily_signin_group")
		if not self.inited then return module end
		self._t_daily_signin_group = module
	end
	return self._t_daily_signin_group
end

ConfigDataUtils._t_daily_task = nil
---@return DataTables.CommonData.t_daily_task
function ConfigDataUtils:daily_taskCfg()
	if self._t_daily_task == nil then
		local module = self:_loadDeginData("t_daily_task")
		if not self.inited then return module end
		self._t_daily_task = module
	end
	return self._t_daily_task
end

ConfigDataUtils._t_daily_task_progress = nil
---@return DataTables.CommonData.t_daily_task_progress
function ConfigDataUtils:daily_task_progressCfg()
	if self._t_daily_task_progress == nil then
		local module = self:_loadDeginData("t_daily_task_progress")
		if not self.inited then return module end
		self._t_daily_task_progress = module
	end
	return self._t_daily_task_progress
end

ConfigDataUtils._t_daily_task_progress_reward = nil
---@return DataTables.CommonData.t_daily_task_progress_reward
function ConfigDataUtils:daily_task_progress_rewardCfg()
	if self._t_daily_task_progress_reward == nil then
		local module = self:_loadDeginData("t_daily_task_progress_reward")
		if not self.inited then return module end
		self._t_daily_task_progress_reward = module
	end
	return self._t_daily_task_progress_reward
end

ConfigDataUtils._t_dead_rules = nil
---@return DataTables.CommonData.t_dead_rules
function ConfigDataUtils:dead_rulesCfg()
	if self._t_dead_rules == nil then
		local module = self:_loadDeginData("t_dead_rules")
		if not self.inited then return module end
		self._t_dead_rules = module
	end
	return self._t_dead_rules
end

ConfigDataUtils._t_decoration_base = nil
---@return DataTables.CommonData.t_decoration_base
function ConfigDataUtils:decoration_baseCfg()
	if self._t_decoration_base == nil then
		local module = self:_loadDeginData("t_decoration_base")
		if not self.inited then return module end
		self._t_decoration_base = module
	end
	return self._t_decoration_base
end

ConfigDataUtils._t_def_monster_task_sub = nil
---@return DataTables.CommonData.t_def_monster_task_sub
function ConfigDataUtils:def_monster_task_subCfg()
	if self._t_def_monster_task_sub == nil then
		local module = self:_loadDeginData("t_def_monster_task_sub")
		if not self.inited then return module end
		self._t_def_monster_task_sub = module
	end
	return self._t_def_monster_task_sub
end

ConfigDataUtils._t_dress_up_main = nil
---@return DataTables.CommonData.t_dress_up_main
function ConfigDataUtils:dress_up_mainCfg()
	if self._t_dress_up_main == nil then
		local module = self:_loadDeginData("t_dress_up_main")
		if not self.inited then return module end
		self._t_dress_up_main = module
	end
	return self._t_dress_up_main
end

ConfigDataUtils._t_drop_group = nil
---@return DataTables.CommonData.t_drop_group
function ConfigDataUtils:drop_groupCfg()
	if self._t_drop_group == nil then
		local module = self:_loadDeginData("t_drop_group")
		if not self.inited then return module end
		self._t_drop_group = module
	end
	return self._t_drop_group
end

ConfigDataUtils._t_dungeon_chapter = nil
---@return DataTables.CommonData.t_dungeon_chapter
function ConfigDataUtils:dungeon_chapterCfg()
	if self._t_dungeon_chapter == nil then
		local module = self:_loadDeginData("t_dungeon_chapter")
		if not self.inited then return module end
		self._t_dungeon_chapter = module
	end
	return self._t_dungeon_chapter
end

ConfigDataUtils._t_economy_skill = nil
---@return DataTables.CommonData.t_economy_skill
function ConfigDataUtils:economy_skillCfg()
	if self._t_economy_skill == nil then
		local module = self:_loadDeginData("t_economy_skill")
		if not self.inited then return module end
		self._t_economy_skill = module
	end
	return self._t_economy_skill
end

ConfigDataUtils._t_emoji = nil
---@return DataTables.CommonData.t_emoji
function ConfigDataUtils:emojiCfg()
	if self._t_emoji == nil then
		local module = self:_loadDeginData("t_emoji")
		if not self.inited then return module end
		self._t_emoji = module
	end
	return self._t_emoji
end

ConfigDataUtils._t_encyclopedia_galactica = nil
---@return DataTables.CommonData.t_encyclopedia_galactica
function ConfigDataUtils:encyclopedia_galacticaCfg()
	if self._t_encyclopedia_galactica == nil then
		local module = self:_loadDeginData("t_encyclopedia_galactica")
		if not self.inited then return module end
		self._t_encyclopedia_galactica = module
	end
	return self._t_encyclopedia_galactica
end

ConfigDataUtils._t_encyclopedia_galactica_task = nil
---@return DataTables.CommonData.t_encyclopedia_galactica_task
function ConfigDataUtils:encyclopedia_galactica_taskCfg()
	if self._t_encyclopedia_galactica_task == nil then
		local module = self:_loadDeginData("t_encyclopedia_galactica_task")
		if not self.inited then return module end
		self._t_encyclopedia_galactica_task = module
	end
	return self._t_encyclopedia_galactica_task
end

ConfigDataUtils._t_entity_layer = nil
---@return DataTables.CommonData.t_entity_layer
function ConfigDataUtils:entity_layerCfg()
	if self._t_entity_layer == nil then
		local module = self:_loadDeginData("t_entity_layer")
		if not self.inited then return module end
		self._t_entity_layer = module
	end
	return self._t_entity_layer
end

ConfigDataUtils._t_enum_type = nil
---@return DataTables.CommonData.t_enum_type
function ConfigDataUtils:enum_typeCfg()
	if self._t_enum_type == nil then
		local module = self:_loadDeginData("t_enum_type")
		if not self.inited then return module end
		self._t_enum_type = module
	end
	return self._t_enum_type
end

ConfigDataUtils._t_enum_type_c = nil
---@return DataTables.CommonData.t_enum_type_c
function ConfigDataUtils:enum_type_cCfg()
	if self._t_enum_type_c == nil then
		local module = self:_loadDeginData("t_enum_type_c")
		if not self.inited then return module end
		self._t_enum_type_c = module
	end
	return self._t_enum_type_c
end

ConfigDataUtils._t_event_attrs = nil
---@return DataTables.CommonData.t_event_attrs
function ConfigDataUtils:event_attrsCfg()
	if self._t_event_attrs == nil then
		local module = self:_loadDeginData("t_event_attrs")
		if not self.inited then return module end
		self._t_event_attrs = module
	end
	return self._t_event_attrs
end

ConfigDataUtils._t_event_common = nil
---@return DataTables.CommonData.t_event_common
function ConfigDataUtils:event_commonCfg()
	if self._t_event_common == nil then
		local module = self:_loadDeginData("t_event_common")
		if not self.inited then return module end
		self._t_event_common = module
	end
	return self._t_event_common
end

ConfigDataUtils._t_event_reward = nil
---@return DataTables.CommonData.t_event_reward
function ConfigDataUtils:event_rewardCfg()
	if self._t_event_reward == nil then
		local module = self:_loadDeginData("t_event_reward")
		if not self.inited then return module end
		self._t_event_reward = module
	end
	return self._t_event_reward
end

ConfigDataUtils._t_event_seed_tps = nil
---@return DataTables.CommonData.t_event_seed_tps
function ConfigDataUtils:event_seed_tpsCfg()
	if self._t_event_seed_tps == nil then
		local module = self:_loadDeginData("t_event_seed_tps")
		if not self.inited then return module end
		self._t_event_seed_tps = module
	end
	return self._t_event_seed_tps
end

ConfigDataUtils._t_event_slg = nil
---@return DataTables.CommonData.t_event_slg
function ConfigDataUtils:event_slgCfg()
	if self._t_event_slg == nil then
		local module = self:_loadDeginData("t_event_slg")
		if not self.inited then return module end
		self._t_event_slg = module
	end
	return self._t_event_slg
end

ConfigDataUtils._t_event_story = nil
---@return DataTables.CommonData.t_event_story
function ConfigDataUtils:event_storyCfg()
	if self._t_event_story == nil then
		local module = self:_loadDeginData("t_event_story")
		if not self.inited then return module end
		self._t_event_story = module
	end
	return self._t_event_story
end

ConfigDataUtils._t_event_tps = nil
---@return DataTables.CommonData.t_event_tps
function ConfigDataUtils:event_tpsCfg()
	if self._t_event_tps == nil then
		local module = self:_loadDeginData("t_event_tps")
		if not self.inited then return module end
		self._t_event_tps = module
	end
	return self._t_event_tps
end

ConfigDataUtils._t_explore_const = nil
---@return DataTables.CommonData.t_explore_const
function ConfigDataUtils:explore_constCfg()
	if self._t_explore_const == nil then
		local module = self:_loadDeginData("t_explore_const")
		if not self.inited then return module end
		self._t_explore_const = module
	end
	return self._t_explore_const
end

ConfigDataUtils._t_explore_interactive = nil
---@return DataTables.CommonData.t_explore_interactive
function ConfigDataUtils:explore_interactiveCfg()
	if self._t_explore_interactive == nil then
		local module = self:_loadDeginData("t_explore_interactive")
		if not self.inited then return module end
		self._t_explore_interactive = module
	end
	return self._t_explore_interactive
end

ConfigDataUtils._t_explore_interactive_atom = nil
---@return DataTables.CommonData.t_explore_interactive_atom
function ConfigDataUtils:explore_interactive_atomCfg()
	if self._t_explore_interactive_atom == nil then
		local module = self:_loadDeginData("t_explore_interactive_atom")
		if not self.inited then return module end
		self._t_explore_interactive_atom = module
	end
	return self._t_explore_interactive_atom
end

ConfigDataUtils._t_explore_interactive_metal = nil
---@return DataTables.CommonData.t_explore_interactive_metal
function ConfigDataUtils:explore_interactive_metalCfg()
	if self._t_explore_interactive_metal == nil then
		local module = self:_loadDeginData("t_explore_interactive_metal")
		if not self.inited then return module end
		self._t_explore_interactive_metal = module
	end
	return self._t_explore_interactive_metal
end

ConfigDataUtils._t_explore_interactive_poly = nil
---@return DataTables.CommonData.t_explore_interactive_poly
function ConfigDataUtils:explore_interactive_polyCfg()
	if self._t_explore_interactive_poly == nil then
		local module = self:_loadDeginData("t_explore_interactive_poly")
		if not self.inited then return module end
		self._t_explore_interactive_poly = module
	end
	return self._t_explore_interactive_poly
end

ConfigDataUtils._t_explore_interactive_special = nil
---@return DataTables.CommonData.t_explore_interactive_special
function ConfigDataUtils:explore_interactive_specialCfg()
	if self._t_explore_interactive_special == nil then
		local module = self:_loadDeginData("t_explore_interactive_special")
		if not self.inited then return module end
		self._t_explore_interactive_special = module
	end
	return self._t_explore_interactive_special
end

ConfigDataUtils._t_explore_level_slg = nil
---@return DataTables.CommonData.t_explore_level_slg
function ConfigDataUtils:explore_level_slgCfg()
	if self._t_explore_level_slg == nil then
		local module = self:_loadDeginData("t_explore_level_slg")
		if not self.inited then return module end
		self._t_explore_level_slg = module
	end
	return self._t_explore_level_slg
end

ConfigDataUtils._t_explore_level_tps = nil
---@return DataTables.CommonData.t_explore_level_tps
function ConfigDataUtils:explore_level_tpsCfg()
	if self._t_explore_level_tps == nil then
		local module = self:_loadDeginData("t_explore_level_tps")
		if not self.inited then return module end
		self._t_explore_level_tps = module
	end
	return self._t_explore_level_tps
end

ConfigDataUtils._t_explore_lootwheel = nil
---@return DataTables.CommonData.t_explore_lootwheel
function ConfigDataUtils:explore_lootwheelCfg()
	if self._t_explore_lootwheel == nil then
		local module = self:_loadDeginData("t_explore_lootwheel")
		if not self.inited then return module end
		self._t_explore_lootwheel = module
	end
	return self._t_explore_lootwheel
end

ConfigDataUtils._t_explore_mine = nil
---@return DataTables.CommonData.t_explore_mine
function ConfigDataUtils:explore_mineCfg()
	if self._t_explore_mine == nil then
		local module = self:_loadDeginData("t_explore_mine")
		if not self.inited then return module end
		self._t_explore_mine = module
	end
	return self._t_explore_mine
end

ConfigDataUtils._t_explore_shop = nil
---@return DataTables.CommonData.t_explore_shop
function ConfigDataUtils:explore_shopCfg()
	if self._t_explore_shop == nil then
		local module = self:_loadDeginData("t_explore_shop")
		if not self.inited then return module end
		self._t_explore_shop = module
	end
	return self._t_explore_shop
end

ConfigDataUtils._t_explore_story = nil
---@return DataTables.CommonData.t_explore_story
function ConfigDataUtils:explore_storyCfg()
	if self._t_explore_story == nil then
		local module = self:_loadDeginData("t_explore_story")
		if not self.inited then return module end
		self._t_explore_story = module
	end
	return self._t_explore_story
end

ConfigDataUtils._t_explore_story_civilcontact = nil
---@return DataTables.CommonData.t_explore_story_civilcontact
function ConfigDataUtils:explore_story_civilcontactCfg()
	if self._t_explore_story_civilcontact == nil then
		local module = self:_loadDeginData("t_explore_story_civilcontact")
		if not self.inited then return module end
		self._t_explore_story_civilcontact = module
	end
	return self._t_explore_story_civilcontact
end

ConfigDataUtils._t_explore_story_common = nil
---@return DataTables.CommonData.t_explore_story_common
function ConfigDataUtils:explore_story_commonCfg()
	if self._t_explore_story_common == nil then
		local module = self:_loadDeginData("t_explore_story_common")
		if not self.inited then return module end
		self._t_explore_story_common = module
	end
	return self._t_explore_story_common
end

ConfigDataUtils._t_explore_story_gangster = nil
---@return DataTables.CommonData.t_explore_story_gangster
function ConfigDataUtils:explore_story_gangsterCfg()
	if self._t_explore_story_gangster == nil then
		local module = self:_loadDeginData("t_explore_story_gangster")
		if not self.inited then return module end
		self._t_explore_story_gangster = module
	end
	return self._t_explore_story_gangster
end

ConfigDataUtils._t_explore_story_landscape = nil
---@return DataTables.CommonData.t_explore_story_landscape
function ConfigDataUtils:explore_story_landscapeCfg()
	if self._t_explore_story_landscape == nil then
		local module = self:_loadDeginData("t_explore_story_landscape")
		if not self.inited then return module end
		self._t_explore_story_landscape = module
	end
	return self._t_explore_story_landscape
end

ConfigDataUtils._t_explore_story_relic = nil
---@return DataTables.CommonData.t_explore_story_relic
function ConfigDataUtils:explore_story_relicCfg()
	if self._t_explore_story_relic == nil then
		local module = self:_loadDeginData("t_explore_story_relic")
		if not self.inited then return module end
		self._t_explore_story_relic = module
	end
	return self._t_explore_story_relic
end

ConfigDataUtils._t_explore_story_rescue = nil
---@return DataTables.CommonData.t_explore_story_rescue
function ConfigDataUtils:explore_story_rescueCfg()
	if self._t_explore_story_rescue == nil then
		local module = self:_loadDeginData("t_explore_story_rescue")
		if not self.inited then return module end
		self._t_explore_story_rescue = module
	end
	return self._t_explore_story_rescue
end

ConfigDataUtils._t_explore_story_resource = nil
---@return DataTables.CommonData.t_explore_story_resource
function ConfigDataUtils:explore_story_resourceCfg()
	if self._t_explore_story_resource == nil then
		local module = self:_loadDeginData("t_explore_story_resource")
		if not self.inited then return module end
		self._t_explore_story_resource = module
	end
	return self._t_explore_story_resource
end

ConfigDataUtils._t_explore_story_signal = nil
---@return DataTables.CommonData.t_explore_story_signal
function ConfigDataUtils:explore_story_signalCfg()
	if self._t_explore_story_signal == nil then
		local module = self:_loadDeginData("t_explore_story_signal")
		if not self.inited then return module end
		self._t_explore_story_signal = module
	end
	return self._t_explore_story_signal
end

ConfigDataUtils._t_explore_story_species = nil
---@return DataTables.CommonData.t_explore_story_species
function ConfigDataUtils:explore_story_speciesCfg()
	if self._t_explore_story_species == nil then
		local module = self:_loadDeginData("t_explore_story_species")
		if not self.inited then return module end
		self._t_explore_story_species = module
	end
	return self._t_explore_story_species
end

ConfigDataUtils._t_explore_story_weather = nil
---@return DataTables.CommonData.t_explore_story_weather
function ConfigDataUtils:explore_story_weatherCfg()
	if self._t_explore_story_weather == nil then
		local module = self:_loadDeginData("t_explore_story_weather")
		if not self.inited then return module end
		self._t_explore_story_weather = module
	end
	return self._t_explore_story_weather
end

ConfigDataUtils._t_explore_story_wreckage = nil
---@return DataTables.CommonData.t_explore_story_wreckage
function ConfigDataUtils:explore_story_wreckageCfg()
	if self._t_explore_story_wreckage == nil then
		local module = self:_loadDeginData("t_explore_story_wreckage")
		if not self.inited then return module end
		self._t_explore_story_wreckage = module
	end
	return self._t_explore_story_wreckage
end

ConfigDataUtils._t_explore_valueadd = nil
---@return DataTables.CommonData.t_explore_valueadd
function ConfigDataUtils:explore_valueaddCfg()
	if self._t_explore_valueadd == nil then
		local module = self:_loadDeginData("t_explore_valueadd")
		if not self.inited then return module end
		self._t_explore_valueadd = module
	end
	return self._t_explore_valueadd
end

ConfigDataUtils._t_festivals_activity = nil
---@return DataTables.CommonData.t_festivals_activity
function ConfigDataUtils:festivals_activityCfg()
	if self._t_festivals_activity == nil then
		local module = self:_loadDeginData("t_festivals_activity")
		if not self.inited then return module end
		self._t_festivals_activity = module
	end
	return self._t_festivals_activity
end

ConfigDataUtils._t_festivals_activity_details = nil
---@return DataTables.CommonData.t_festivals_activity_details
function ConfigDataUtils:festivals_activity_detailsCfg()
	if self._t_festivals_activity_details == nil then
		local module = self:_loadDeginData("t_festivals_activity_details")
		if not self.inited then return module end
		self._t_festivals_activity_details = module
	end
	return self._t_festivals_activity_details
end

ConfigDataUtils._t_festivals_activity_main = nil
---@return DataTables.CommonData.t_festivals_activity_main
function ConfigDataUtils:festivals_activity_mainCfg()
	if self._t_festivals_activity_main == nil then
		local module = self:_loadDeginData("t_festivals_activity_main")
		if not self.inited then return module end
		self._t_festivals_activity_main = module
	end
	return self._t_festivals_activity_main
end

ConfigDataUtils._t_festivals_activity_menu = nil
---@return DataTables.CommonData.t_festivals_activity_menu
function ConfigDataUtils:festivals_activity_menuCfg()
	if self._t_festivals_activity_menu == nil then
		local module = self:_loadDeginData("t_festivals_activity_menu")
		if not self.inited then return module end
		self._t_festivals_activity_menu = module
	end
	return self._t_festivals_activity_menu
end

ConfigDataUtils._t_festivals_activity_re = nil
---@return DataTables.CommonData.t_festivals_activity_re
function ConfigDataUtils:festivals_activity_reCfg()
	if self._t_festivals_activity_re == nil then
		local module = self:_loadDeginData("t_festivals_activity_re")
		if not self.inited then return module end
		self._t_festivals_activity_re = module
	end
	return self._t_festivals_activity_re
end

ConfigDataUtils._t_festivals_center = nil
---@return DataTables.CommonData.t_festivals_center
function ConfigDataUtils:festivals_centerCfg()
	if self._t_festivals_center == nil then
		local module = self:_loadDeginData("t_festivals_center")
		if not self.inited then return module end
		self._t_festivals_center = module
	end
	return self._t_festivals_center
end

ConfigDataUtils._t_fixedlevel_base = nil
---@return DataTables.CommonData.t_fixedlevel_base
function ConfigDataUtils:fixedlevel_baseCfg()
	if self._t_fixedlevel_base == nil then
		local module = self:_loadDeginData("t_fixedlevel_base")
		if not self.inited then return module end
		self._t_fixedlevel_base = module
	end
	return self._t_fixedlevel_base
end

ConfigDataUtils._t_flag_ship_show = nil
---@return DataTables.CommonData.t_flag_ship_show
function ConfigDataUtils:flag_ship_showCfg()
	if self._t_flag_ship_show == nil then
		local module = self:_loadDeginData("t_flag_ship_show")
		if not self.inited then return module end
		self._t_flag_ship_show = module
	end
	return self._t_flag_ship_show
end

ConfigDataUtils._t_frame_show = nil
---@return DataTables.CommonData.t_frame_show
function ConfigDataUtils:frame_showCfg()
	if self._t_frame_show == nil then
		local module = self:_loadDeginData("t_frame_show")
		if not self.inited then return module end
		self._t_frame_show = module
	end
	return self._t_frame_show
end

ConfigDataUtils._t_frontline_battle_supershrine = nil
---@return DataTables.CommonData.t_frontline_battle_supershrine
function ConfigDataUtils:frontline_battle_supershrineCfg()
	if self._t_frontline_battle_supershrine == nil then
		local module = self:_loadDeginData("t_frontline_battle_supershrine")
		if not self.inited then return module end
		self._t_frontline_battle_supershrine = module
	end
	return self._t_frontline_battle_supershrine
end

ConfigDataUtils._t_frontline_difficulty = nil
---@return DataTables.CommonData.t_frontline_difficulty
function ConfigDataUtils:frontline_difficultyCfg()
	if self._t_frontline_difficulty == nil then
		local module = self:_loadDeginData("t_frontline_difficulty")
		if not self.inited then return module end
		self._t_frontline_difficulty = module
	end
	return self._t_frontline_difficulty
end

ConfigDataUtils._t_frontline_dungeon_supershrine = nil
---@return DataTables.CommonData.t_frontline_dungeon_supershrine
function ConfigDataUtils:frontline_dungeon_supershrineCfg()
	if self._t_frontline_dungeon_supershrine == nil then
		local module = self:_loadDeginData("t_frontline_dungeon_supershrine")
		if not self.inited then return module end
		self._t_frontline_dungeon_supershrine = module
	end
	return self._t_frontline_dungeon_supershrine
end

ConfigDataUtils._t_frontline_main = nil
---@return DataTables.CommonData.t_frontline_main
function ConfigDataUtils:frontline_mainCfg()
	if self._t_frontline_main == nil then
		local module = self:_loadDeginData("t_frontline_main")
		if not self.inited then return module end
		self._t_frontline_main = module
	end
	return self._t_frontline_main
end

ConfigDataUtils._t_frontline_monster_supershrine = nil
---@return DataTables.CommonData.t_frontline_monster_supershrine
function ConfigDataUtils:frontline_monster_supershrineCfg()
	if self._t_frontline_monster_supershrine == nil then
		local module = self:_loadDeginData("t_frontline_monster_supershrine")
		if not self.inited then return module end
		self._t_frontline_monster_supershrine = module
	end
	return self._t_frontline_monster_supershrine
end

ConfigDataUtils._t_frontline_server = nil
---@return DataTables.CommonData.t_frontline_server
function ConfigDataUtils:frontline_serverCfg()
	if self._t_frontline_server == nil then
		local module = self:_loadDeginData("t_frontline_server")
		if not self.inited then return module end
		self._t_frontline_server = module
	end
	return self._t_frontline_server
end

ConfigDataUtils._t_function_base = nil
---@return DataTables.CommonData.t_function_base
function ConfigDataUtils:function_baseCfg()
	if self._t_function_base == nil then
		local module = self:_loadDeginData("t_function_base")
		if not self.inited then return module end
		self._t_function_base = module
	end
	return self._t_function_base
end

ConfigDataUtils._t_gacha_item = nil
---@return DataTables.CommonData.t_gacha_item
function ConfigDataUtils:gacha_itemCfg()
	if self._t_gacha_item == nil then
		local module = self:_loadDeginData("t_gacha_item")
		if not self.inited then return module end
		self._t_gacha_item = module
	end
	return self._t_gacha_item
end

ConfigDataUtils._t_gacha_item_group = nil
---@return DataTables.CommonData.t_gacha_item_group
function ConfigDataUtils:gacha_item_groupCfg()
	if self._t_gacha_item_group == nil then
		local module = self:_loadDeginData("t_gacha_item_group")
		if not self.inited then return module end
		self._t_gacha_item_group = module
	end
	return self._t_gacha_item_group
end

ConfigDataUtils._t_gacha_main = nil
---@return DataTables.CommonData.t_gacha_main
function ConfigDataUtils:gacha_mainCfg()
	if self._t_gacha_main == nil then
		local module = self:_loadDeginData("t_gacha_main")
		if not self.inited then return module end
		self._t_gacha_main = module
	end
	return self._t_gacha_main
end

ConfigDataUtils._t_gacha_main_group = nil
---@return DataTables.CommonData.t_gacha_main_group
function ConfigDataUtils:gacha_main_groupCfg()
	if self._t_gacha_main_group == nil then
		local module = self:_loadDeginData("t_gacha_main_group")
		if not self.inited then return module end
		self._t_gacha_main_group = module
	end
	return self._t_gacha_main_group
end

ConfigDataUtils._t_gacha_mapping = nil
---@return DataTables.CommonData.t_gacha_mapping
function ConfigDataUtils:gacha_mappingCfg()
	if self._t_gacha_mapping == nil then
		local module = self:_loadDeginData("t_gacha_mapping")
		if not self.inited then return module end
		self._t_gacha_mapping = module
	end
	return self._t_gacha_mapping
end

ConfigDataUtils._t_gacha_progress = nil
---@return DataTables.CommonData.t_gacha_progress
function ConfigDataUtils:gacha_progressCfg()
	if self._t_gacha_progress == nil then
		local module = self:_loadDeginData("t_gacha_progress")
		if not self.inited then return module end
		self._t_gacha_progress = module
	end
	return self._t_gacha_progress
end

ConfigDataUtils._t_gacha_progress_reward = nil
---@return DataTables.CommonData.t_gacha_progress_reward
function ConfigDataUtils:gacha_progress_rewardCfg()
	if self._t_gacha_progress_reward == nil then
		local module = self:_loadDeginData("t_gacha_progress_reward")
		if not self.inited then return module end
		self._t_gacha_progress_reward = module
	end
	return self._t_gacha_progress_reward
end

ConfigDataUtils._t_galactica_sheet = nil
---@return DataTables.CommonData.t_galactica_sheet
function ConfigDataUtils:galactica_sheetCfg()
	if self._t_galactica_sheet == nil then
		local module = self:_loadDeginData("t_galactica_sheet")
		if not self.inited then return module end
		self._t_galactica_sheet = module
	end
	return self._t_galactica_sheet
end

ConfigDataUtils._t_galaxy_fix_monster = nil
---@return DataTables.CommonData.t_galaxy_fix_monster
function ConfigDataUtils:galaxy_fix_monsterCfg()
	if self._t_galaxy_fix_monster == nil then
		local module = self:_loadDeginData("t_galaxy_fix_monster")
		if not self.inited then return module end
		self._t_galaxy_fix_monster = module
	end
	return self._t_galaxy_fix_monster
end

ConfigDataUtils._t_galaxy_monster_new = nil
---@return DataTables.CommonData.t_galaxy_monster_new
function ConfigDataUtils:galaxy_monster_newCfg()
	if self._t_galaxy_monster_new == nil then
		local module = self:_loadDeginData("t_galaxy_monster_new")
		if not self.inited then return module end
		self._t_galaxy_monster_new = module
	end
	return self._t_galaxy_monster_new
end

ConfigDataUtils._t_galaxy_rule = nil
---@return DataTables.CommonData.t_galaxy_rule
function ConfigDataUtils:galaxy_ruleCfg()
	if self._t_galaxy_rule == nil then
		local module = self:_loadDeginData("t_galaxy_rule")
		if not self.inited then return module end
		self._t_galaxy_rule = module
	end
	return self._t_galaxy_rule
end

ConfigDataUtils._t_get_more = nil
---@return DataTables.CommonData.t_get_more
function ConfigDataUtils:get_moreCfg()
	if self._t_get_more == nil then
		local module = self:_loadDeginData("t_get_more")
		if not self.inited then return module end
		self._t_get_more = module
	end
	return self._t_get_more
end

ConfigDataUtils._t_get_more_price = nil
---@return DataTables.CommonData.t_get_more_price
function ConfigDataUtils:get_more_priceCfg()
	if self._t_get_more_price == nil then
		local module = self:_loadDeginData("t_get_more_price")
		if not self.inited then return module end
		self._t_get_more_price = module
	end
	return self._t_get_more_price
end

ConfigDataUtils._t_get_more_special = nil
---@return DataTables.CommonData.t_get_more_special
function ConfigDataUtils:get_more_specialCfg()
	if self._t_get_more_special == nil then
		local module = self:_loadDeginData("t_get_more_special")
		if not self.inited then return module end
		self._t_get_more_special = module
	end
	return self._t_get_more_special
end

ConfigDataUtils._t_get_more_speedup = nil
---@return DataTables.CommonData.t_get_more_speedup
function ConfigDataUtils:get_more_speedupCfg()
	if self._t_get_more_speedup == nil then
		local module = self:_loadDeginData("t_get_more_speedup")
		if not self.inited then return module end
		self._t_get_more_speedup = module
	end
	return self._t_get_more_speedup
end

ConfigDataUtils._t_goods_group = nil
---@return DataTables.CommonData.t_goods_group
function ConfigDataUtils:goods_groupCfg()
	if self._t_goods_group == nil then
		local module = self:_loadDeginData("t_goods_group")
		if not self.inited then return module end
		self._t_goods_group = module
	end
	return self._t_goods_group
end

ConfigDataUtils._t_guide_step_group = nil
---@return DataTables.CommonData.t_guide_step_group
function ConfigDataUtils:guide_step_groupCfg()
	if self._t_guide_step_group == nil then
		local module = self:_loadDeginData("t_guide_step_group")
		if not self.inited then return module end
		self._t_guide_step_group = module
	end
	return self._t_guide_step_group
end

ConfigDataUtils._t_guild_clash_league = nil
---@return DataTables.CommonData.t_guild_clash_league
function ConfigDataUtils:guild_clash_leagueCfg()
	if self._t_guild_clash_league == nil then
		local module = self:_loadDeginData("t_guild_clash_league")
		if not self.inited then return module end
		self._t_guild_clash_league = module
	end
	return self._t_guild_clash_league
end

ConfigDataUtils._t_guild_clash_league_base = nil
---@return DataTables.CommonData.t_guild_clash_league_base
function ConfigDataUtils:guild_clash_league_baseCfg()
	if self._t_guild_clash_league_base == nil then
		local module = self:_loadDeginData("t_guild_clash_league_base")
		if not self.inited then return module end
		self._t_guild_clash_league_base = module
	end
	return self._t_guild_clash_league_base
end

ConfigDataUtils._t_guild_clash_league_constant = nil
---@return DataTables.CommonData.t_guild_clash_league_constant
function ConfigDataUtils:guild_clash_league_constantCfg()
	if self._t_guild_clash_league_constant == nil then
		local module = self:_loadDeginData("t_guild_clash_league_constant")
		if not self.inited then return module end
		self._t_guild_clash_league_constant = module
	end
	return self._t_guild_clash_league_constant
end

ConfigDataUtils._t_guild_clash_league_rewards = nil
---@return DataTables.CommonData.t_guild_clash_league_rewards
function ConfigDataUtils:guild_clash_league_rewardsCfg()
	if self._t_guild_clash_league_rewards == nil then
		local module = self:_loadDeginData("t_guild_clash_league_rewards")
		if not self.inited then return module end
		self._t_guild_clash_league_rewards = module
	end
	return self._t_guild_clash_league_rewards
end

ConfigDataUtils._t_guild_clash_league_task = nil
---@return DataTables.CommonData.t_guild_clash_league_task
function ConfigDataUtils:guild_clash_league_taskCfg()
	if self._t_guild_clash_league_task == nil then
		local module = self:_loadDeginData("t_guild_clash_league_task")
		if not self.inited then return module end
		self._t_guild_clash_league_task = module
	end
	return self._t_guild_clash_league_task
end

ConfigDataUtils._t_guild_clash_league_tier = nil
---@return DataTables.CommonData.t_guild_clash_league_tier
function ConfigDataUtils:guild_clash_league_tierCfg()
	if self._t_guild_clash_league_tier == nil then
		local module = self:_loadDeginData("t_guild_clash_league_tier")
		if not self.inited then return module end
		self._t_guild_clash_league_tier = module
	end
	return self._t_guild_clash_league_tier
end

ConfigDataUtils._t_gvg_galaxy = nil
---@return DataTables.CommonData.t_gvg_galaxy
function ConfigDataUtils:gvg_galaxyCfg()
	if self._t_gvg_galaxy == nil then
		local module = self:_loadDeginData("t_gvg_galaxy")
		if not self.inited then return module end
		self._t_gvg_galaxy = module
	end
	return self._t_gvg_galaxy
end

ConfigDataUtils._t_gvg_galaxy_cross_server = nil
---@return DataTables.CommonData.t_gvg_galaxy_cross_server
function ConfigDataUtils:gvg_galaxy_cross_serverCfg()
	if self._t_gvg_galaxy_cross_server == nil then
		local module = self:_loadDeginData("t_gvg_galaxy_cross_server")
		if not self.inited then return module end
		self._t_gvg_galaxy_cross_server = module
	end
	return self._t_gvg_galaxy_cross_server
end

ConfigDataUtils._t_gvg_gameplay = nil
---@return DataTables.CommonData.t_gvg_gameplay
function ConfigDataUtils:gvg_gameplayCfg()
	if self._t_gvg_gameplay == nil then
		local module = self:_loadDeginData("t_gvg_gameplay")
		if not self.inited then return module end
		self._t_gvg_gameplay = module
	end
	return self._t_gvg_gameplay
end

ConfigDataUtils._t_gvg_gameplay_cross = nil
---@return DataTables.CommonData.t_gvg_gameplay_cross
function ConfigDataUtils:gvg_gameplay_crossCfg()
	if self._t_gvg_gameplay_cross == nil then
		local module = self:_loadDeginData("t_gvg_gameplay_cross")
		if not self.inited then return module end
		self._t_gvg_gameplay_cross = module
	end
	return self._t_gvg_gameplay_cross
end

ConfigDataUtils._t_havel_challenge = nil
---@return DataTables.CommonData.t_havel_challenge
function ConfigDataUtils:havel_challengeCfg()
	if self._t_havel_challenge == nil then
		local module = self:_loadDeginData("t_havel_challenge")
		if not self.inited then return module end
		self._t_havel_challenge = module
	end
	return self._t_havel_challenge
end

ConfigDataUtils._t_havel_monster = nil
---@return DataTables.CommonData.t_havel_monster
function ConfigDataUtils:havel_monsterCfg()
	if self._t_havel_monster == nil then
		local module = self:_loadDeginData("t_havel_monster")
		if not self.inited then return module end
		self._t_havel_monster = module
	end
	return self._t_havel_monster
end

ConfigDataUtils._t_hero_allybond = nil
---@return DataTables.CommonData.t_hero_allybond
function ConfigDataUtils:hero_allybondCfg()
	if self._t_hero_allybond == nil then
		local module = self:_loadDeginData("t_hero_allybond")
		if not self.inited then return module end
		self._t_hero_allybond = module
	end
	return self._t_hero_allybond
end

ConfigDataUtils._t_hero_base = nil
---@return DataTables.CommonData.t_hero_base
function ConfigDataUtils:hero_baseCfg()
	if self._t_hero_base == nil then
		local module = self:_loadDeginData("t_hero_base")
		if not self.inited then return module end
		self._t_hero_base = module
	end
	return self._t_hero_base
end

ConfigDataUtils._t_hero_growth_attr_group = nil
---@return DataTables.CommonData.t_hero_growth_attr_group
function ConfigDataUtils:hero_growth_attr_groupCfg()
	if self._t_hero_growth_attr_group == nil then
		local module = self:_loadDeginData("t_hero_growth_attr_group")
		if not self.inited then return module end
		self._t_hero_growth_attr_group = module
	end
	return self._t_hero_growth_attr_group
end

ConfigDataUtils._t_hero_growth_star = nil
---@return DataTables.CommonData.t_hero_growth_star
function ConfigDataUtils:hero_growth_starCfg()
	if self._t_hero_growth_star == nil then
		local module = self:_loadDeginData("t_hero_growth_star")
		if not self.inited then return module end
		self._t_hero_growth_star = module
	end
	return self._t_hero_growth_star
end

ConfigDataUtils._t_hero_quality = nil
---@return DataTables.CommonData.t_hero_quality
function ConfigDataUtils:hero_qualityCfg()
	if self._t_hero_quality == nil then
		local module = self:_loadDeginData("t_hero_quality")
		if not self.inited then return module end
		self._t_hero_quality = module
	end
	return self._t_hero_quality
end

ConfigDataUtils._t_hero_show = nil
---@return DataTables.CommonData.t_hero_show
function ConfigDataUtils:hero_showCfg()
	if self._t_hero_show == nil then
		local module = self:_loadDeginData("t_hero_show")
		if not self.inited then return module end
		self._t_hero_show = module
	end
	return self._t_hero_show
end

ConfigDataUtils._t_hero_skin_show = nil
---@return DataTables.CommonData.t_hero_skin_show
function ConfigDataUtils:hero_skin_showCfg()
	if self._t_hero_skin_show == nil then
		local module = self:_loadDeginData("t_hero_skin_show")
		if not self.inited then return module end
		self._t_hero_skin_show = module
	end
	return self._t_hero_skin_show
end

ConfigDataUtils._t_hero_tier_exchange = nil
---@return DataTables.CommonData.t_hero_tier_exchange
function ConfigDataUtils:hero_tier_exchangeCfg()
	if self._t_hero_tier_exchange == nil then
		local module = self:_loadDeginData("t_hero_tier_exchange")
		if not self.inited then return module end
		self._t_hero_tier_exchange = module
	end
	return self._t_hero_tier_exchange
end

ConfigDataUtils._t_hero_tier_level = nil
---@return DataTables.CommonData.t_hero_tier_level
function ConfigDataUtils:hero_tier_levelCfg()
	if self._t_hero_tier_level == nil then
		local module = self:_loadDeginData("t_hero_tier_level")
		if not self.inited then return module end
		self._t_hero_tier_level = module
	end
	return self._t_hero_tier_level
end

ConfigDataUtils._t_hero_tier_up = nil
---@return DataTables.CommonData.t_hero_tier_up
function ConfigDataUtils:hero_tier_upCfg()
	if self._t_hero_tier_up == nil then
		local module = self:_loadDeginData("t_hero_tier_up")
		if not self.inited then return module end
		self._t_hero_tier_up = module
	end
	return self._t_hero_tier_up
end

ConfigDataUtils._t_hero_weapon_base = nil
---@return DataTables.CommonData.t_hero_weapon_base
function ConfigDataUtils:hero_weapon_baseCfg()
	if self._t_hero_weapon_base == nil then
		local module = self:_loadDeginData("t_hero_weapon_base")
		if not self.inited then return module end
		self._t_hero_weapon_base = module
	end
	return self._t_hero_weapon_base
end

ConfigDataUtils._t_hero_weapon_growth = nil
---@return DataTables.CommonData.t_hero_weapon_growth
function ConfigDataUtils:hero_weapon_growthCfg()
	if self._t_hero_weapon_growth == nil then
		local module = self:_loadDeginData("t_hero_weapon_growth")
		if not self.inited then return module end
		self._t_hero_weapon_growth = module
	end
	return self._t_hero_weapon_growth
end

ConfigDataUtils._t_hero_weapon_quality = nil
---@return DataTables.CommonData.t_hero_weapon_quality
function ConfigDataUtils:hero_weapon_qualityCfg()
	if self._t_hero_weapon_quality == nil then
		local module = self:_loadDeginData("t_hero_weapon_quality")
		if not self.inited then return module end
		self._t_hero_weapon_quality = module
	end
	return self._t_hero_weapon_quality
end

ConfigDataUtils._t_hero_weapon_show = nil
---@return DataTables.CommonData.t_hero_weapon_show
function ConfigDataUtils:hero_weapon_showCfg()
	if self._t_hero_weapon_show == nil then
		local module = self:_loadDeginData("t_hero_weapon_show")
		if not self.inited then return module end
		self._t_hero_weapon_show = module
	end
	return self._t_hero_weapon_show
end

ConfigDataUtils._t_hero_weapon_upgrade_preview = nil
---@return DataTables.CommonData.t_hero_weapon_upgrade_preview
function ConfigDataUtils:hero_weapon_upgrade_previewCfg()
	if self._t_hero_weapon_upgrade_preview == nil then
		local module = self:_loadDeginData("t_hero_weapon_upgrade_preview")
		if not self.inited then return module end
		self._t_hero_weapon_upgrade_preview = module
	end
	return self._t_hero_weapon_upgrade_preview
end

ConfigDataUtils._t_honorwall_achive = nil
---@return DataTables.CommonData.t_honorwall_achive
function ConfigDataUtils:honorwall_achiveCfg()
	if self._t_honorwall_achive == nil then
		local module = self:_loadDeginData("t_honorwall_achive")
		if not self.inited then return module end
		self._t_honorwall_achive = module
	end
	return self._t_honorwall_achive
end

ConfigDataUtils._t_honorwall_leve_genadata = nil
---@return DataTables.CommonData.t_honorwall_leve_genadata
function ConfigDataUtils:honorwall_leve_genadataCfg()
	if self._t_honorwall_leve_genadata == nil then
		local module = self:_loadDeginData("t_honorwall_leve_genadata")
		if not self.inited then return module end
		self._t_honorwall_leve_genadata = module
	end
	return self._t_honorwall_leve_genadata
end

ConfigDataUtils._t_honorwall_level_data = nil
---@return DataTables.CommonData.t_honorwall_level_data
function ConfigDataUtils:honorwall_level_dataCfg()
	if self._t_honorwall_level_data == nil then
		local module = self:_loadDeginData("t_honorwall_level_data")
		if not self.inited then return module end
		self._t_honorwall_level_data = module
	end
	return self._t_honorwall_level_data
end

ConfigDataUtils._t_hud_config = nil
---@return DataTables.CommonData.t_hud_config
function ConfigDataUtils:hud_configCfg()
	if self._t_hud_config == nil then
		local module = self:_loadDeginData("t_hud_config")
		if not self.inited then return module end
		self._t_hud_config = module
	end
	return self._t_hud_config
end

ConfigDataUtils._t_hud_model = nil
---@return DataTables.CommonData.t_hud_model
function ConfigDataUtils:hud_modelCfg()
	if self._t_hud_model == nil then
		local module = self:_loadDeginData("t_hud_model")
		if not self.inited then return module end
		self._t_hud_model = module
	end
	return self._t_hud_model
end

ConfigDataUtils._t_hud_set_options = nil
---@return DataTables.CommonData.t_hud_set_options
function ConfigDataUtils:hud_set_optionsCfg()
	if self._t_hud_set_options == nil then
		local module = self:_loadDeginData("t_hud_set_options")
		if not self.inited then return module end
		self._t_hud_set_options = module
	end
	return self._t_hud_set_options
end

ConfigDataUtils._t_iap_gold_package = nil
---@return DataTables.CommonData.t_iap_gold_package
function ConfigDataUtils:iap_gold_packageCfg()
	if self._t_iap_gold_package == nil then
		local module = self:_loadDeginData("t_iap_gold_package")
		if not self.inited then return module end
		self._t_iap_gold_package = module
	end
	return self._t_iap_gold_package
end

ConfigDataUtils._t_iap_platform = nil
---@return DataTables.CommonData.t_iap_platform
function ConfigDataUtils:iap_platformCfg()
	if self._t_iap_platform == nil then
		local module = self:_loadDeginData("t_iap_platform")
		if not self.inited then return module end
		self._t_iap_platform = module
	end
	return self._t_iap_platform
end

ConfigDataUtils._t_icon_season = nil
---@return DataTables.CommonData.t_icon_season
function ConfigDataUtils:icon_seasonCfg()
	if self._t_icon_season == nil then
		local module = self:_loadDeginData("t_icon_season")
		if not self.inited then return module end
		self._t_icon_season = module
	end
	return self._t_icon_season
end

ConfigDataUtils._t_icon_star = nil
---@return DataTables.CommonData.t_icon_star
function ConfigDataUtils:icon_starCfg()
	if self._t_icon_star == nil then
		local module = self:_loadDeginData("t_icon_star")
		if not self.inited then return module end
		self._t_icon_star = module
	end
	return self._t_icon_star
end

ConfigDataUtils._t_immigrationalliancelabel = nil
---@return DataTables.CommonData.t_immigrationalliancelabel
function ConfigDataUtils:immigrationalliancelabelCfg()
	if self._t_immigrationalliancelabel == nil then
		local module = self:_loadDeginData("t_immigrationalliancelabel")
		if not self.inited then return module end
		self._t_immigrationalliancelabel = module
	end
	return self._t_immigrationalliancelabel
end

ConfigDataUtils._t_immigrationconfig = nil
---@return DataTables.CommonData.t_immigrationconfig
function ConfigDataUtils:immigrationconfigCfg()
	if self._t_immigrationconfig == nil then
		local module = self:_loadDeginData("t_immigrationconfig")
		if not self.inited then return module end
		self._t_immigrationconfig = module
	end
	return self._t_immigrationconfig
end

ConfigDataUtils._t_immigrationconstant = nil
---@return DataTables.CommonData.t_immigrationconstant
function ConfigDataUtils:immigrationconstantCfg()
	if self._t_immigrationconstant == nil then
		local module = self:_loadDeginData("t_immigrationconstant")
		if not self.inited then return module end
		self._t_immigrationconstant = module
	end
	return self._t_immigrationconstant
end

ConfigDataUtils._t_immigrationlanguage = nil
---@return DataTables.CommonData.t_immigrationlanguage
function ConfigDataUtils:immigrationlanguageCfg()
	if self._t_immigrationlanguage == nil then
		local module = self:_loadDeginData("t_immigrationlanguage")
		if not self.inited then return module end
		self._t_immigrationlanguage = module
	end
	return self._t_immigrationlanguage
end

ConfigDataUtils._t_immigrationpersonal = nil
---@return DataTables.CommonData.t_immigrationpersonal
function ConfigDataUtils:immigrationpersonalCfg()
	if self._t_immigrationpersonal == nil then
		local module = self:_loadDeginData("t_immigrationpersonal")
		if not self.inited then return module end
		self._t_immigrationpersonal = module
	end
	return self._t_immigrationpersonal
end

ConfigDataUtils._t_immigrationsp = nil
---@return DataTables.CommonData.t_immigrationsp
function ConfigDataUtils:immigrationspCfg()
	if self._t_immigrationsp == nil then
		local module = self:_loadDeginData("t_immigrationsp")
		if not self.inited then return module end
		self._t_immigrationsp = module
	end
	return self._t_immigrationsp
end

ConfigDataUtils._t_immigrationtip = nil
---@return DataTables.CommonData.t_immigrationtip
function ConfigDataUtils:immigrationtipCfg()
	if self._t_immigrationtip == nil then
		local module = self:_loadDeginData("t_immigrationtip")
		if not self.inited then return module end
		self._t_immigrationtip = module
	end
	return self._t_immigrationtip
end

ConfigDataUtils._t_init_event = nil
---@return DataTables.CommonData.t_init_event
function ConfigDataUtils:init_eventCfg()
	if self._t_init_event == nil then
		local module = self:_loadDeginData("t_init_event")
		if not self.inited then return module end
		self._t_init_event = module
	end
	return self._t_init_event
end

ConfigDataUtils._t_interaction_drop = nil
---@return DataTables.CommonData.t_interaction_drop
function ConfigDataUtils:interaction_dropCfg()
	if self._t_interaction_drop == nil then
		local module = self:_loadDeginData("t_interaction_drop")
		if not self.inited then return module end
		self._t_interaction_drop = module
	end
	return self._t_interaction_drop
end

ConfigDataUtils._t_interaction_level_drop = nil
---@return DataTables.CommonData.t_interaction_level_drop
function ConfigDataUtils:interaction_level_dropCfg()
	if self._t_interaction_level_drop == nil then
		local module = self:_loadDeginData("t_interaction_level_drop")
		if not self.inited then return module end
		self._t_interaction_level_drop = module
	end
	return self._t_interaction_level_drop
end

ConfigDataUtils._t_investigation = nil
---@return DataTables.CommonData.t_investigation
function ConfigDataUtils:investigationCfg()
	if self._t_investigation == nil then
		local module = self:_loadDeginData("t_investigation")
		if not self.inited then return module end
		self._t_investigation = module
	end
	return self._t_investigation
end

ConfigDataUtils._t_invite_type = nil
---@return DataTables.CommonData.t_invite_type
function ConfigDataUtils:invite_typeCfg()
	if self._t_invite_type == nil then
		local module = self:_loadDeginData("t_invite_type")
		if not self.inited then return module end
		self._t_invite_type = module
	end
	return self._t_invite_type
end

ConfigDataUtils._t_item = nil
---@return DataTables.CommonData.t_item
function ConfigDataUtils:itemCfg()
	if self._t_item == nil then
		local module = self:_loadDeginData("t_item")
		if not self.inited then return module end
		self._t_item = module
	end
	return self._t_item
end

ConfigDataUtils._t_item_consume_base = nil
---@return DataTables.CommonData.t_item_consume_base
function ConfigDataUtils:item_consume_baseCfg()
	if self._t_item_consume_base == nil then
		local module = self:_loadDeginData("t_item_consume_base")
		if not self.inited then return module end
		self._t_item_consume_base = module
	end
	return self._t_item_consume_base
end

ConfigDataUtils._t_item_drop_base = nil
---@return DataTables.CommonData.t_item_drop_base
function ConfigDataUtils:item_drop_baseCfg()
	if self._t_item_drop_base == nil then
		local module = self:_loadDeginData("t_item_drop_base")
		if not self.inited then return module end
		self._t_item_drop_base = module
	end
	return self._t_item_drop_base
end

ConfigDataUtils._t_item_modify_reason = nil
---@return DataTables.CommonData.t_item_modify_reason
function ConfigDataUtils:item_modify_reasonCfg()
	if self._t_item_modify_reason == nil then
		local module = self:_loadDeginData("t_item_modify_reason")
		if not self.inited then return module end
		self._t_item_modify_reason = module
	end
	return self._t_item_modify_reason
end

ConfigDataUtils._t_item_quality = nil
---@return DataTables.CommonData.t_item_quality
function ConfigDataUtils:item_qualityCfg()
	if self._t_item_quality == nil then
		local module = self:_loadDeginData("t_item_quality")
		if not self.inited then return module end
		self._t_item_quality = module
	end
	return self._t_item_quality
end

ConfigDataUtils._t_item_recycle = nil
---@return DataTables.CommonData.t_item_recycle
function ConfigDataUtils:item_recycleCfg()
	if self._t_item_recycle == nil then
		local module = self:_loadDeginData("t_item_recycle")
		if not self.inited then return module end
		self._t_item_recycle = module
	end
	return self._t_item_recycle
end

ConfigDataUtils._t_item_send = nil
---@return DataTables.CommonData.t_item_send
function ConfigDataUtils:item_sendCfg()
	if self._t_item_send == nil then
		local module = self:_loadDeginData("t_item_send")
		if not self.inited then return module end
		self._t_item_send = module
	end
	return self._t_item_send
end

ConfigDataUtils._t_item_type = nil
---@return DataTables.CommonData.t_item_type
function ConfigDataUtils:item_typeCfg()
	if self._t_item_type == nil then
		local module = self:_loadDeginData("t_item_type")
		if not self.inited then return module end
		self._t_item_type = module
	end
	return self._t_item_type
end

ConfigDataUtils._t_jumppoint_unlock = nil
---@return DataTables.CommonData.t_jumppoint_unlock
function ConfigDataUtils:jumppoint_unlockCfg()
	if self._t_jumppoint_unlock == nil then
		local module = self:_loadDeginData("t_jumppoint_unlock")
		if not self.inited then return module end
		self._t_jumppoint_unlock = module
	end
	return self._t_jumppoint_unlock
end

ConfigDataUtils._t_kill_normal_monster_rank = nil
---@return DataTables.CommonData.t_kill_normal_monster_rank
function ConfigDataUtils:kill_normal_monster_rankCfg()
	if self._t_kill_normal_monster_rank == nil then
		local module = self:_loadDeginData("t_kill_normal_monster_rank")
		if not self.inited then return module end
		self._t_kill_normal_monster_rank = module
	end
	return self._t_kill_normal_monster_rank
end

ConfigDataUtils._t_kill_reward = nil
---@return DataTables.CommonData.t_kill_reward
function ConfigDataUtils:kill_rewardCfg()
	if self._t_kill_reward == nil then
		local module = self:_loadDeginData("t_kill_reward")
		if not self.inited then return module end
		self._t_kill_reward = module
	end
	return self._t_kill_reward
end

ConfigDataUtils._t_killing_effect = nil
---@return DataTables.CommonData.t_killing_effect
function ConfigDataUtils:killing_effectCfg()
	if self._t_killing_effect == nil then
		local module = self:_loadDeginData("t_killing_effect")
		if not self.inited then return module end
		self._t_killing_effect = module
	end
	return self._t_killing_effect
end

ConfigDataUtils._t_kingdom_constant = nil
---@return DataTables.CommonData.t_kingdom_constant
function ConfigDataUtils:kingdom_constantCfg()
	if self._t_kingdom_constant == nil then
		local module = self:_loadDeginData("t_kingdom_constant")
		if not self.inited then return module end
		self._t_kingdom_constant = module
	end
	return self._t_kingdom_constant
end

ConfigDataUtils._t_kingdom_gift = nil
---@return DataTables.CommonData.t_kingdom_gift
function ConfigDataUtils:kingdom_giftCfg()
	if self._t_kingdom_gift == nil then
		local module = self:_loadDeginData("t_kingdom_gift")
		if not self.inited then return module end
		self._t_kingdom_gift = module
	end
	return self._t_kingdom_gift
end

ConfigDataUtils._t_kingdom_main = nil
---@return DataTables.CommonData.t_kingdom_main
function ConfigDataUtils:kingdom_mainCfg()
	if self._t_kingdom_main == nil then
		local module = self:_loadDeginData("t_kingdom_main")
		if not self.inited then return module end
		self._t_kingdom_main = module
	end
	return self._t_kingdom_main
end

ConfigDataUtils._t_kingdom_rights = nil
---@return DataTables.CommonData.t_kingdom_rights
function ConfigDataUtils:kingdom_rightsCfg()
	if self._t_kingdom_rights == nil then
		local module = self:_loadDeginData("t_kingdom_rights")
		if not self.inited then return module end
		self._t_kingdom_rights = module
	end
	return self._t_kingdom_rights
end

ConfigDataUtils._t_kingdom_skill = nil
---@return DataTables.CommonData.t_kingdom_skill
function ConfigDataUtils:kingdom_skillCfg()
	if self._t_kingdom_skill == nil then
		local module = self:_loadDeginData("t_kingdom_skill")
		if not self.inited then return module end
		self._t_kingdom_skill = module
	end
	return self._t_kingdom_skill
end

ConfigDataUtils._t_kingdom_war_point_reward = nil
---@return DataTables.CommonData.t_kingdom_war_point_reward
function ConfigDataUtils:kingdom_war_point_rewardCfg()
	if self._t_kingdom_war_point_reward == nil then
		local module = self:_loadDeginData("t_kingdom_war_point_reward")
		if not self.inited then return module end
		self._t_kingdom_war_point_reward = module
	end
	return self._t_kingdom_war_point_reward
end

ConfigDataUtils._t_kvk_building = nil
---@return DataTables.CommonData.t_kvk_building
function ConfigDataUtils:kvk_buildingCfg()
	if self._t_kvk_building == nil then
		local module = self:_loadDeginData("t_kvk_building")
		if not self.inited then return module end
		self._t_kvk_building = module
	end
	return self._t_kvk_building
end

ConfigDataUtils._t_kvk_constant = nil
---@return DataTables.CommonData.t_kvk_constant
function ConfigDataUtils:kvk_constantCfg()
	if self._t_kvk_constant == nil then
		local module = self:_loadDeginData("t_kvk_constant")
		if not self.inited then return module end
		self._t_kvk_constant = module
	end
	return self._t_kvk_constant
end

ConfigDataUtils._t_kvk_point_for_offense = nil
---@return DataTables.CommonData.t_kvk_point_for_offense
function ConfigDataUtils:kvk_point_for_offenseCfg()
	if self._t_kvk_point_for_offense == nil then
		local module = self:_loadDeginData("t_kvk_point_for_offense")
		if not self.inited then return module end
		self._t_kvk_point_for_offense = module
	end
	return self._t_kvk_point_for_offense
end

ConfigDataUtils._t_kvk_point_get = nil
---@return DataTables.CommonData.t_kvk_point_get
function ConfigDataUtils:kvk_point_getCfg()
	if self._t_kvk_point_get == nil then
		local module = self:_loadDeginData("t_kvk_point_get")
		if not self.inited then return module end
		self._t_kvk_point_get = module
	end
	return self._t_kvk_point_get
end

ConfigDataUtils._t_kvk_point_get_stage = nil
---@return DataTables.CommonData.t_kvk_point_get_stage
function ConfigDataUtils:kvk_point_get_stageCfg()
	if self._t_kvk_point_get_stage == nil then
		local module = self:_loadDeginData("t_kvk_point_get_stage")
		if not self.inited then return module end
		self._t_kvk_point_get_stage = module
	end
	return self._t_kvk_point_get_stage
end

ConfigDataUtils._t_kvk_point_reward = nil
---@return DataTables.CommonData.t_kvk_point_reward
function ConfigDataUtils:kvk_point_rewardCfg()
	if self._t_kvk_point_reward == nil then
		local module = self:_loadDeginData("t_kvk_point_reward")
		if not self.inited then return module end
		self._t_kvk_point_reward = module
	end
	return self._t_kvk_point_reward
end

ConfigDataUtils._t_kvk_rank_reward = nil
---@return DataTables.CommonData.t_kvk_rank_reward
function ConfigDataUtils:kvk_rank_rewardCfg()
	if self._t_kvk_rank_reward == nil then
		local module = self:_loadDeginData("t_kvk_rank_reward")
		if not self.inited then return module end
		self._t_kvk_rank_reward = module
	end
	return self._t_kvk_rank_reward
end

ConfigDataUtils._t_kvk_stage_group = nil
---@return DataTables.CommonData.t_kvk_stage_group
function ConfigDataUtils:kvk_stage_groupCfg()
	if self._t_kvk_stage_group == nil then
		local module = self:_loadDeginData("t_kvk_stage_group")
		if not self.inited then return module end
		self._t_kvk_stage_group = module
	end
	return self._t_kvk_stage_group
end

ConfigDataUtils._t_level_base = nil
---@return DataTables.CommonData.t_level_base
function ConfigDataUtils:level_baseCfg()
	if self._t_level_base == nil then
		local module = self:_loadDeginData("t_level_base")
		if not self.inited then return module end
		self._t_level_base = module
	end
	return self._t_level_base
end

ConfigDataUtils._t_level_base_slg = nil
---@return DataTables.CommonData.t_level_base_slg
function ConfigDataUtils:level_base_slgCfg()
	if self._t_level_base_slg == nil then
		local module = self:_loadDeginData("t_level_base_slg")
		if not self.inited then return module end
		self._t_level_base_slg = module
	end
	return self._t_level_base_slg
end

ConfigDataUtils._t_level_fail_show = nil
---@return DataTables.CommonData.t_level_fail_show
function ConfigDataUtils:level_fail_showCfg()
	if self._t_level_fail_show == nil then
		local module = self:_loadDeginData("t_level_fail_show")
		if not self.inited then return module end
		self._t_level_fail_show = module
	end
	return self._t_level_fail_show
end

ConfigDataUtils._t_level_interaction_typeresource = nil
---@return DataTables.CommonData.t_level_interaction_typeresource
function ConfigDataUtils:level_interaction_typeresourceCfg()
	if self._t_level_interaction_typeresource == nil then
		local module = self:_loadDeginData("t_level_interaction_typeresource")
		if not self.inited then return module end
		self._t_level_interaction_typeresource = module
	end
	return self._t_level_interaction_typeresource
end

ConfigDataUtils._t_level_item_interaction = nil
---@return DataTables.CommonData.t_level_item_interaction
function ConfigDataUtils:level_item_interactionCfg()
	if self._t_level_item_interaction == nil then
		local module = self:_loadDeginData("t_level_item_interaction")
		if not self.inited then return module end
		self._t_level_item_interaction = module
	end
	return self._t_level_item_interaction
end

ConfigDataUtils._t_level_monster = nil
---@return DataTables.CommonData.t_level_monster
function ConfigDataUtils:level_monsterCfg()
	if self._t_level_monster == nil then
		local module = self:_loadDeginData("t_level_monster")
		if not self.inited then return module end
		self._t_level_monster = module
	end
	return self._t_level_monster
end

ConfigDataUtils._t_level_slg_target_type = nil
---@return DataTables.CommonData.t_level_slg_target_type
function ConfigDataUtils:level_slg_target_typeCfg()
	if self._t_level_slg_target_type == nil then
		local module = self:_loadDeginData("t_level_slg_target_type")
		if not self.inited then return module end
		self._t_level_slg_target_type = module
	end
	return self._t_level_slg_target_type
end

ConfigDataUtils._t_level_task_base = nil
---@return DataTables.CommonData.t_level_task_base
function ConfigDataUtils:level_task_baseCfg()
	if self._t_level_task_base == nil then
		local module = self:_loadDeginData("t_level_task_base")
		if not self.inited then return module end
		self._t_level_task_base = module
	end
	return self._t_level_task_base
end

ConfigDataUtils._t_level_task_base_slg = nil
---@return DataTables.CommonData.t_level_task_base_slg
function ConfigDataUtils:level_task_base_slgCfg()
	if self._t_level_task_base_slg == nil then
		local module = self:_loadDeginData("t_level_task_base_slg")
		if not self.inited then return module end
		self._t_level_task_base_slg = module
	end
	return self._t_level_task_base_slg
end

ConfigDataUtils._t_level_task_sub = nil
---@return DataTables.CommonData.t_level_task_sub
function ConfigDataUtils:level_task_subCfg()
	if self._t_level_task_sub == nil then
		local module = self:_loadDeginData("t_level_task_sub")
		if not self.inited then return module end
		self._t_level_task_sub = module
	end
	return self._t_level_task_sub
end

ConfigDataUtils._t_level_task_sub_slg = nil
---@return DataTables.CommonData.t_level_task_sub_slg
function ConfigDataUtils:level_task_sub_slgCfg()
	if self._t_level_task_sub_slg == nil then
		local module = self:_loadDeginData("t_level_task_sub_slg")
		if not self.inited then return module end
		self._t_level_task_sub_slg = module
	end
	return self._t_level_task_sub_slg
end

ConfigDataUtils._t_level_type = nil
---@return DataTables.CommonData.t_level_type
function ConfigDataUtils:level_typeCfg()
	if self._t_level_type == nil then
		local module = self:_loadDeginData("t_level_type")
		if not self.inited then return module end
		self._t_level_type = module
	end
	return self._t_level_type
end

ConfigDataUtils._t_level_zone = nil
---@return DataTables.CommonData.t_level_zone
function ConfigDataUtils:level_zoneCfg()
	if self._t_level_zone == nil then
		local module = self:_loadDeginData("t_level_zone")
		if not self.inited then return module end
		self._t_level_zone = module
	end
	return self._t_level_zone
end

ConfigDataUtils._t_lod_config = nil
---@return DataTables.CommonData.t_lod_config
function ConfigDataUtils:lod_configCfg()
	if self._t_lod_config == nil then
		local module = self:_loadDeginData("t_lod_config")
		if not self.inited then return module end
		self._t_lod_config = module
	end
	return self._t_lod_config
end

ConfigDataUtils._t_lod_mode = nil
---@return DataTables.CommonData.t_lod_mode
function ConfigDataUtils:lod_modeCfg()
	if self._t_lod_mode == nil then
		local module = self:_loadDeginData("t_lod_mode")
		if not self.inited then return module end
		self._t_lod_mode = module
	end
	return self._t_lod_mode
end

ConfigDataUtils._t_lod_overview_config = nil
---@return DataTables.CommonData.t_lod_overview_config
function ConfigDataUtils:lod_overview_configCfg()
	if self._t_lod_overview_config == nil then
		local module = self:_loadDeginData("t_lod_overview_config")
		if not self.inited then return module end
		self._t_lod_overview_config = module
	end
	return self._t_lod_overview_config
end

ConfigDataUtils._t_lod_space_interaction_show = nil
---@return DataTables.CommonData.t_lod_space_interaction_show
function ConfigDataUtils:lod_space_interaction_showCfg()
	if self._t_lod_space_interaction_show == nil then
		local module = self:_loadDeginData("t_lod_space_interaction_show")
		if not self.inited then return module end
		self._t_lod_space_interaction_show = module
	end
	return self._t_lod_space_interaction_show
end

ConfigDataUtils._t_login_face = nil
---@return DataTables.CommonData.t_login_face
function ConfigDataUtils:login_faceCfg()
	if self._t_login_face == nil then
		local module = self:_loadDeginData("t_login_face")
		if not self.inited then return module end
		self._t_login_face = module
	end
	return self._t_login_face
end

ConfigDataUtils._t_lootwheel_group = nil
---@return DataTables.CommonData.t_lootwheel_group
function ConfigDataUtils:lootwheel_groupCfg()
	if self._t_lootwheel_group == nil then
		local module = self:_loadDeginData("t_lootwheel_group")
		if not self.inited then return module end
		self._t_lootwheel_group = module
	end
	return self._t_lootwheel_group
end

ConfigDataUtils._t_lootwheel_reward = nil
---@return DataTables.CommonData.t_lootwheel_reward
function ConfigDataUtils:lootwheel_rewardCfg()
	if self._t_lootwheel_reward == nil then
		local module = self:_loadDeginData("t_lootwheel_reward")
		if not self.inited then return module end
		self._t_lootwheel_reward = module
	end
	return self._t_lootwheel_reward
end

ConfigDataUtils._t_magnate_constant = nil
---@return DataTables.CommonData.t_magnate_constant
function ConfigDataUtils:magnate_constantCfg()
	if self._t_magnate_constant == nil then
		local module = self:_loadDeginData("t_magnate_constant")
		if not self.inited then return module end
		self._t_magnate_constant = module
	end
	return self._t_magnate_constant
end

ConfigDataUtils._t_magnate_main = nil
---@return DataTables.CommonData.t_magnate_main
function ConfigDataUtils:magnate_mainCfg()
	if self._t_magnate_main == nil then
		local module = self:_loadDeginData("t_magnate_main")
		if not self.inited then return module end
		self._t_magnate_main = module
	end
	return self._t_magnate_main
end

ConfigDataUtils._t_magnate_rights = nil
---@return DataTables.CommonData.t_magnate_rights
function ConfigDataUtils:magnate_rightsCfg()
	if self._t_magnate_rights == nil then
		local module = self:_loadDeginData("t_magnate_rights")
		if not self.inited then return module end
		self._t_magnate_rights = module
	end
	return self._t_magnate_rights
end

ConfigDataUtils._t_mail_battle = nil
---@return DataTables.CommonData.t_mail_battle
function ConfigDataUtils:mail_battleCfg()
	if self._t_mail_battle == nil then
		local module = self:_loadDeginData("t_mail_battle")
		if not self.inited then return module end
		self._t_mail_battle = module
	end
	return self._t_mail_battle
end

ConfigDataUtils._t_mail_config = nil
---@return DataTables.CommonData.t_mail_config
function ConfigDataUtils:mail_configCfg()
	if self._t_mail_config == nil then
		local module = self:_loadDeginData("t_mail_config")
		if not self.inited then return module end
		self._t_mail_config = module
	end
	return self._t_mail_config
end

ConfigDataUtils._t_mail_type = nil
---@return DataTables.CommonData.t_mail_type
function ConfigDataUtils:mail_typeCfg()
	if self._t_mail_type == nil then
		local module = self:_loadDeginData("t_mail_type")
		if not self.inited then return module end
		self._t_mail_type = module
	end
	return self._t_mail_type
end

ConfigDataUtils._t_main_dungeon = nil
---@return DataTables.CommonData.t_main_dungeon
function ConfigDataUtils:main_dungeonCfg()
	if self._t_main_dungeon == nil then
		local module = self:_loadDeginData("t_main_dungeon")
		if not self.inited then return module end
		self._t_main_dungeon = module
	end
	return self._t_main_dungeon
end

ConfigDataUtils._t_main_story_base = nil
---@return DataTables.CommonData.t_main_story_base
function ConfigDataUtils:main_story_baseCfg()
	if self._t_main_story_base == nil then
		local module = self:_loadDeginData("t_main_story_base")
		if not self.inited then return module end
		self._t_main_story_base = module
	end
	return self._t_main_story_base
end

ConfigDataUtils._t_main_story_task = nil
---@return DataTables.CommonData.t_main_story_task
function ConfigDataUtils:main_story_taskCfg()
	if self._t_main_story_task == nil then
		local module = self:_loadDeginData("t_main_story_task")
		if not self.inited then return module end
		self._t_main_story_task = module
	end
	return self._t_main_story_task
end

ConfigDataUtils._t_mainlevel_treasure_drop = nil
---@return DataTables.CommonData.t_mainlevel_treasure_drop
function ConfigDataUtils:mainlevel_treasure_dropCfg()
	if self._t_mainlevel_treasure_drop == nil then
		local module = self:_loadDeginData("t_mainlevel_treasure_drop")
		if not self.inited then return module end
		self._t_mainlevel_treasure_drop = module
	end
	return self._t_mainlevel_treasure_drop
end

ConfigDataUtils._t_map_mark = nil
---@return DataTables.CommonData.t_map_mark
function ConfigDataUtils:map_markCfg()
	if self._t_map_mark == nil then
		local module = self:_loadDeginData("t_map_mark")
		if not self.inited then return module end
		self._t_map_mark = module
	end
	return self._t_map_mark
end

ConfigDataUtils._t_marquee = nil
---@return DataTables.CommonData.t_marquee
function ConfigDataUtils:marqueeCfg()
	if self._t_marquee == nil then
		local module = self:_loadDeginData("t_marquee")
		if not self.inited then return module end
		self._t_marquee = module
	end
	return self._t_marquee
end

ConfigDataUtils._t_message = nil
---@return DataTables.CommonData.t_message
function ConfigDataUtils:messageCfg()
	if self._t_message == nil then
		local module = self:_loadDeginData("t_message")
		if not self.inited then return module end
		self._t_message = module
	end
	return self._t_message
end

ConfigDataUtils._t_milestone_basic = nil
---@return DataTables.CommonData.t_milestone_basic
function ConfigDataUtils:milestone_basicCfg()
	if self._t_milestone_basic == nil then
		local module = self:_loadDeginData("t_milestone_basic")
		if not self.inited then return module end
		self._t_milestone_basic = module
	end
	return self._t_milestone_basic
end

ConfigDataUtils._t_milestone_level = nil
---@return DataTables.CommonData.t_milestone_level
function ConfigDataUtils:milestone_levelCfg()
	if self._t_milestone_level == nil then
		local module = self:_loadDeginData("t_milestone_level")
		if not self.inited then return module end
		self._t_milestone_level = module
	end
	return self._t_milestone_level
end

ConfigDataUtils._t_mineral = nil
---@return DataTables.CommonData.t_mineral
function ConfigDataUtils:mineralCfg()
	if self._t_mineral == nil then
		local module = self:_loadDeginData("t_mineral")
		if not self.inited then return module end
		self._t_mineral = module
	end
	return self._t_mineral
end

ConfigDataUtils._t_money = nil
---@return DataTables.CommonData.t_money
function ConfigDataUtils:moneyCfg()
	if self._t_money == nil then
		local module = self:_loadDeginData("t_money")
		if not self.inited then return module end
		self._t_money = module
	end
	return self._t_money
end

ConfigDataUtils._t_money_ui_show = nil
---@return DataTables.CommonData.t_money_ui_show
function ConfigDataUtils:money_ui_showCfg()
	if self._t_money_ui_show == nil then
		local module = self:_loadDeginData("t_money_ui_show")
		if not self.inited then return module end
		self._t_money_ui_show = module
	end
	return self._t_money_ui_show
end

ConfigDataUtils._t_monster_attack_activity = nil
---@return DataTables.CommonData.t_monster_attack_activity
function ConfigDataUtils:monster_attack_activityCfg()
	if self._t_monster_attack_activity == nil then
		local module = self:_loadDeginData("t_monster_attack_activity")
		if not self.inited then return module end
		self._t_monster_attack_activity = module
	end
	return self._t_monster_attack_activity
end

ConfigDataUtils._t_monster_attack_difficulty = nil
---@return DataTables.CommonData.t_monster_attack_difficulty
function ConfigDataUtils:monster_attack_difficultyCfg()
	if self._t_monster_attack_difficulty == nil then
		local module = self:_loadDeginData("t_monster_attack_difficulty")
		if not self.inited then return module end
		self._t_monster_attack_difficulty = module
	end
	return self._t_monster_attack_difficulty
end

ConfigDataUtils._t_monster_attack_main = nil
---@return DataTables.CommonData.t_monster_attack_main
function ConfigDataUtils:monster_attack_mainCfg()
	if self._t_monster_attack_main == nil then
		local module = self:_loadDeginData("t_monster_attack_main")
		if not self.inited then return module end
		self._t_monster_attack_main = module
	end
	return self._t_monster_attack_main
end

ConfigDataUtils._t_monster_attack_reward = nil
---@return DataTables.CommonData.t_monster_attack_reward
function ConfigDataUtils:monster_attack_rewardCfg()
	if self._t_monster_attack_reward == nil then
		local module = self:_loadDeginData("t_monster_attack_reward")
		if not self.inited then return module end
		self._t_monster_attack_reward = module
	end
	return self._t_monster_attack_reward
end

ConfigDataUtils._t_monster_growth_attr_group = nil
---@return DataTables.CommonData.t_monster_growth_attr_group
function ConfigDataUtils:monster_growth_attr_groupCfg()
	if self._t_monster_growth_attr_group == nil then
		local module = self:_loadDeginData("t_monster_growth_attr_group")
		if not self.inited then return module end
		self._t_monster_growth_attr_group = module
	end
	return self._t_monster_growth_attr_group
end

ConfigDataUtils._t_monster_ship = nil
---@return DataTables.CommonData.t_monster_ship
function ConfigDataUtils:monster_shipCfg()
	if self._t_monster_ship == nil then
		local module = self:_loadDeginData("t_monster_ship")
		if not self.inited then return module end
		self._t_monster_ship = module
	end
	return self._t_monster_ship
end

ConfigDataUtils._t_monster_slg_base = nil
---@return DataTables.CommonData.t_monster_slg_base
function ConfigDataUtils:monster_slg_baseCfg()
	if self._t_monster_slg_base == nil then
		local module = self:_loadDeginData("t_monster_slg_base")
		if not self.inited then return module end
		self._t_monster_slg_base = module
	end
	return self._t_monster_slg_base
end

ConfigDataUtils._t_monster_slg_base_data = nil
---@return DataTables.CommonData.t_monster_slg_base_data
function ConfigDataUtils:monster_slg_base_dataCfg()
	if self._t_monster_slg_base_data == nil then
		local module = self:_loadDeginData("t_monster_slg_base_data")
		if not self.inited then return module end
		self._t_monster_slg_base_data = module
	end
	return self._t_monster_slg_base_data
end

ConfigDataUtils._t_monster_slg_base_new = nil
---@return DataTables.CommonData.t_monster_slg_base_new
function ConfigDataUtils:monster_slg_base_newCfg()
	if self._t_monster_slg_base_new == nil then
		local module = self:_loadDeginData("t_monster_slg_base_new")
		if not self.inited then return module end
		self._t_monster_slg_base_new = module
	end
	return self._t_monster_slg_base_new
end

ConfigDataUtils._t_monster_slg_chat = nil
---@return DataTables.CommonData.t_monster_slg_chat
function ConfigDataUtils:monster_slg_chatCfg()
	if self._t_monster_slg_chat == nil then
		local module = self:_loadDeginData("t_monster_slg_chat")
		if not self.inited then return module end
		self._t_monster_slg_chat = module
	end
	return self._t_monster_slg_chat
end

ConfigDataUtils._t_monster_slg_cross_server = nil
---@return DataTables.CommonData.t_monster_slg_cross_server
function ConfigDataUtils:monster_slg_cross_serverCfg()
	if self._t_monster_slg_cross_server == nil then
		local module = self:_loadDeginData("t_monster_slg_cross_server")
		if not self.inited then return module end
		self._t_monster_slg_cross_server = module
	end
	return self._t_monster_slg_cross_server
end

ConfigDataUtils._t_monster_slg_growth_attr_group = nil
---@return DataTables.CommonData.t_monster_slg_growth_attr_group
function ConfigDataUtils:monster_slg_growth_attr_groupCfg()
	if self._t_monster_slg_growth_attr_group == nil then
		local module = self:_loadDeginData("t_monster_slg_growth_attr_group")
		if not self.inited then return module end
		self._t_monster_slg_growth_attr_group = module
	end
	return self._t_monster_slg_growth_attr_group
end

ConfigDataUtils._t_monster_spawner = nil
---@return DataTables.CommonData.t_monster_spawner
function ConfigDataUtils:monster_spawnerCfg()
	if self._t_monster_spawner == nil then
		local module = self:_loadDeginData("t_monster_spawner")
		if not self.inited then return module end
		self._t_monster_spawner = module
	end
	return self._t_monster_spawner
end

ConfigDataUtils._t_monster_tps_base = nil
---@return DataTables.CommonData.t_monster_tps_base
function ConfigDataUtils:monster_tps_baseCfg()
	if self._t_monster_tps_base == nil then
		local module = self:_loadDeginData("t_monster_tps_base")
		if not self.inited then return module end
		self._t_monster_tps_base = module
	end
	return self._t_monster_tps_base
end

ConfigDataUtils._t_monster_warship = nil
---@return DataTables.CommonData.t_monster_warship
function ConfigDataUtils:monster_warshipCfg()
	if self._t_monster_warship == nil then
		local module = self:_loadDeginData("t_monster_warship")
		if not self.inited then return module end
		self._t_monster_warship = module
	end
	return self._t_monster_warship
end

ConfigDataUtils._t_mothership_growth_attr_group = nil
---@return DataTables.CommonData.t_mothership_growth_attr_group
function ConfigDataUtils:mothership_growth_attr_groupCfg()
	if self._t_mothership_growth_attr_group == nil then
		local module = self:_loadDeginData("t_mothership_growth_attr_group")
		if not self.inited then return module end
		self._t_mothership_growth_attr_group = module
	end
	return self._t_mothership_growth_attr_group
end

ConfigDataUtils._t_mothership_level_main = nil
---@return DataTables.CommonData.t_mothership_level_main
function ConfigDataUtils:mothership_level_mainCfg()
	if self._t_mothership_level_main == nil then
		local module = self:_loadDeginData("t_mothership_level_main")
		if not self.inited then return module end
		self._t_mothership_level_main = module
	end
	return self._t_mothership_level_main
end

ConfigDataUtils._t_mothership_skin = nil
---@return DataTables.CommonData.t_mothership_skin
function ConfigDataUtils:mothership_skinCfg()
	if self._t_mothership_skin == nil then
		local module = self:_loadDeginData("t_mothership_skin")
		if not self.inited then return module end
		self._t_mothership_skin = module
	end
	return self._t_mothership_skin
end

ConfigDataUtils._t_mothership_star_main = nil
---@return DataTables.CommonData.t_mothership_star_main
function ConfigDataUtils:mothership_star_mainCfg()
	if self._t_mothership_star_main == nil then
		local module = self:_loadDeginData("t_mothership_star_main")
		if not self.inited then return module end
		self._t_mothership_star_main = module
	end
	return self._t_mothership_star_main
end

ConfigDataUtils._t_mothership_switch_base_layer = nil
---@return DataTables.CommonData.t_mothership_switch_base_layer
function ConfigDataUtils:mothership_switch_base_layerCfg()
	if self._t_mothership_switch_base_layer == nil then
		local module = self:_loadDeginData("t_mothership_switch_base_layer")
		if not self.inited then return module end
		self._t_mothership_switch_base_layer = module
	end
	return self._t_mothership_switch_base_layer
end

ConfigDataUtils._t_multi_mine = nil
---@return DataTables.CommonData.t_multi_mine
function ConfigDataUtils:multi_mineCfg()
	if self._t_multi_mine == nil then
		local module = self:_loadDeginData("t_multi_mine")
		if not self.inited then return module end
		self._t_multi_mine = module
	end
	return self._t_multi_mine
end

ConfigDataUtils._t_multi_mine_type = nil
---@return DataTables.CommonData.t_multi_mine_type
function ConfigDataUtils:multi_mine_typeCfg()
	if self._t_multi_mine_type == nil then
		local module = self:_loadDeginData("t_multi_mine_type")
		if not self.inited then return module end
		self._t_multi_mine_type = module
	end
	return self._t_multi_mine_type
end

ConfigDataUtils._t_nameplate_show = nil
---@return DataTables.CommonData.t_nameplate_show
function ConfigDataUtils:nameplate_showCfg()
	if self._t_nameplate_show == nil then
		local module = self:_loadDeginData("t_nameplate_show")
		if not self.inited then return module end
		self._t_nameplate_show = module
	end
	return self._t_nameplate_show
end

ConfigDataUtils._t_newbie_guide_base = nil
---@return DataTables.CommonData.t_newbie_guide_base
function ConfigDataUtils:newbie_guide_baseCfg()
	if self._t_newbie_guide_base == nil then
		local module = self:_loadDeginData("t_newbie_guide_base")
		if not self.inited then return module end
		self._t_newbie_guide_base = module
	end
	return self._t_newbie_guide_base
end

ConfigDataUtils._t_newbie_task = nil
---@return DataTables.CommonData.t_newbie_task
function ConfigDataUtils:newbie_taskCfg()
	if self._t_newbie_task == nil then
		local module = self:_loadDeginData("t_newbie_task")
		if not self.inited then return module end
		self._t_newbie_task = module
	end
	return self._t_newbie_task
end

ConfigDataUtils._t_normalsecret_treasure_drop = nil
---@return DataTables.CommonData.t_normalsecret_treasure_drop
function ConfigDataUtils:normalsecret_treasure_dropCfg()
	if self._t_normalsecret_treasure_drop == nil then
		local module = self:_loadDeginData("t_normalsecret_treasure_drop")
		if not self.inited then return module end
		self._t_normalsecret_treasure_drop = module
	end
	return self._t_normalsecret_treasure_drop
end

ConfigDataUtils._t_npc_ai_logic = nil
---@return DataTables.CommonData.t_npc_ai_logic
function ConfigDataUtils:npc_ai_logicCfg()
	if self._t_npc_ai_logic == nil then
		local module = self:_loadDeginData("t_npc_ai_logic")
		if not self.inited then return module end
		self._t_npc_ai_logic = module
	end
	return self._t_npc_ai_logic
end

ConfigDataUtils._t_npc_base = nil
---@return DataTables.CommonData.t_npc_base
function ConfigDataUtils:npc_baseCfg()
	if self._t_npc_base == nil then
		local module = self:_loadDeginData("t_npc_base")
		if not self.inited then return module end
		self._t_npc_base = module
	end
	return self._t_npc_base
end

ConfigDataUtils._t_npc_refresh = nil
---@return DataTables.CommonData.t_npc_refresh
function ConfigDataUtils:npc_refreshCfg()
	if self._t_npc_refresh == nil then
		local module = self:_loadDeginData("t_npc_refresh")
		if not self.inited then return module end
		self._t_npc_refresh = module
	end
	return self._t_npc_refresh
end

ConfigDataUtils._t_number_language = nil
---@return DataTables.CommonData.t_number_language
function ConfigDataUtils:number_languageCfg()
	if self._t_number_language == nil then
		local module = self:_loadDeginData("t_number_language")
		if not self.inited then return module end
		self._t_number_language = module
	end
	return self._t_number_language
end

ConfigDataUtils._t_number_rule = nil
---@return DataTables.CommonData.t_number_rule
function ConfigDataUtils:number_ruleCfg()
	if self._t_number_rule == nil then
		local module = self:_loadDeginData("t_number_rule")
		if not self.inited then return module end
		self._t_number_rule = module
	end
	return self._t_number_rule
end

ConfigDataUtils._t_outfit_effect = nil
---@return DataTables.CommonData.t_outfit_effect
function ConfigDataUtils:outfit_effectCfg()
	if self._t_outfit_effect == nil then
		local module = self:_loadDeginData("t_outfit_effect")
		if not self.inited then return module end
		self._t_outfit_effect = module
	end
	return self._t_outfit_effect
end

ConfigDataUtils._t_outfit_starlevel_effect = nil
---@return DataTables.CommonData.t_outfit_starlevel_effect
function ConfigDataUtils:outfit_starlevel_effectCfg()
	if self._t_outfit_starlevel_effect == nil then
		local module = self:_loadDeginData("t_outfit_starlevel_effect")
		if not self.inited then return module end
		self._t_outfit_starlevel_effect = module
	end
	return self._t_outfit_starlevel_effect
end

ConfigDataUtils._t_pack_center = nil
---@return DataTables.CommonData.t_pack_center
function ConfigDataUtils:pack_centerCfg()
	if self._t_pack_center == nil then
		local module = self:_loadDeginData("t_pack_center")
		if not self.inited then return module end
		self._t_pack_center = module
	end
	return self._t_pack_center
end

ConfigDataUtils._t_pack_open = nil
---@return DataTables.CommonData.t_pack_open
function ConfigDataUtils:pack_openCfg()
	if self._t_pack_open == nil then
		local module = self:_loadDeginData("t_pack_open")
		if not self.inited then return module end
		self._t_pack_open = module
	end
	return self._t_pack_open
end

ConfigDataUtils._t_pack_puash = nil
---@return DataTables.CommonData.t_pack_puash
function ConfigDataUtils:pack_puashCfg()
	if self._t_pack_puash == nil then
		local module = self:_loadDeginData("t_pack_puash")
		if not self.inited then return module end
		self._t_pack_puash = module
	end
	return self._t_pack_puash
end

ConfigDataUtils._t_packbag_push_detail = nil
---@return DataTables.CommonData.t_packbag_push_detail
function ConfigDataUtils:packbag_push_detailCfg()
	if self._t_packbag_push_detail == nil then
		local module = self:_loadDeginData("t_packbag_push_detail")
		if not self.inited then return module end
		self._t_packbag_push_detail = module
	end
	return self._t_packbag_push_detail
end

ConfigDataUtils._t_pay_activity = nil
---@return DataTables.CommonData.t_pay_activity
function ConfigDataUtils:pay_activityCfg()
	if self._t_pay_activity == nil then
		local module = self:_loadDeginData("t_pay_activity")
		if not self.inited then return module end
		self._t_pay_activity = module
	end
	return self._t_pay_activity
end

ConfigDataUtils._t_pay_config = nil
---@return DataTables.CommonData.t_pay_config
function ConfigDataUtils:pay_configCfg()
	if self._t_pay_config == nil then
		local module = self:_loadDeginData("t_pay_config")
		if not self.inited then return module end
		self._t_pay_config = module
	end
	return self._t_pay_config
end

ConfigDataUtils._t_pay_custom = nil
---@return DataTables.CommonData.t_pay_custom
function ConfigDataUtils:pay_customCfg()
	if self._t_pay_custom == nil then
		local module = self:_loadDeginData("t_pay_custom")
		if not self.inited then return module end
		self._t_pay_custom = module
	end
	return self._t_pay_custom
end

ConfigDataUtils._t_pay_custom_main = nil
---@return DataTables.CommonData.t_pay_custom_main
function ConfigDataUtils:pay_custom_mainCfg()
	if self._t_pay_custom_main == nil then
		local module = self:_loadDeginData("t_pay_custom_main")
		if not self.inited then return module end
		self._t_pay_custom_main = module
	end
	return self._t_pay_custom_main
end

ConfigDataUtils._t_pay_custom_second = nil
---@return DataTables.CommonData.t_pay_custom_second
function ConfigDataUtils:pay_custom_secondCfg()
	if self._t_pay_custom_second == nil then
		local module = self:_loadDeginData("t_pay_custom_second")
		if not self.inited then return module end
		self._t_pay_custom_second = module
	end
	return self._t_pay_custom_second
end

ConfigDataUtils._t_pay_daily = nil
---@return DataTables.CommonData.t_pay_daily
function ConfigDataUtils:pay_dailyCfg()
	if self._t_pay_daily == nil then
		local module = self:_loadDeginData("t_pay_daily")
		if not self.inited then return module end
		self._t_pay_daily = module
	end
	return self._t_pay_daily
end

ConfigDataUtils._t_pay_done_show = nil
---@return DataTables.CommonData.t_pay_done_show
function ConfigDataUtils:pay_done_showCfg()
	if self._t_pay_done_show == nil then
		local module = self:_loadDeginData("t_pay_done_show")
		if not self.inited then return module end
		self._t_pay_done_show = module
	end
	return self._t_pay_done_show
end

ConfigDataUtils._t_pay_goal = nil
---@return DataTables.CommonData.t_pay_goal
function ConfigDataUtils:pay_goalCfg()
	if self._t_pay_goal == nil then
		local module = self:_loadDeginData("t_pay_goal")
		if not self.inited then return module end
		self._t_pay_goal = module
	end
	return self._t_pay_goal
end

ConfigDataUtils._t_pay_month = nil
---@return DataTables.CommonData.t_pay_month
function ConfigDataUtils:pay_monthCfg()
	if self._t_pay_month == nil then
		local module = self:_loadDeginData("t_pay_month")
		if not self.inited then return module end
		self._t_pay_month = module
	end
	return self._t_pay_month
end

ConfigDataUtils._t_pay_normal = nil
---@return DataTables.CommonData.t_pay_normal
function ConfigDataUtils:pay_normalCfg()
	if self._t_pay_normal == nil then
		local module = self:_loadDeginData("t_pay_normal")
		if not self.inited then return module end
		self._t_pay_normal = module
	end
	return self._t_pay_normal
end

ConfigDataUtils._t_pay_pack = nil
---@return DataTables.CommonData.t_pay_pack
function ConfigDataUtils:pay_packCfg()
	if self._t_pay_pack == nil then
		local module = self:_loadDeginData("t_pay_pack")
		if not self.inited then return module end
		self._t_pay_pack = module
	end
	return self._t_pay_pack
end

ConfigDataUtils._t_pay_scene = nil
---@return DataTables.CommonData.t_pay_scene
function ConfigDataUtils:pay_sceneCfg()
	if self._t_pay_scene == nil then
		local module = self:_loadDeginData("t_pay_scene")
		if not self.inited then return module end
		self._t_pay_scene = module
	end
	return self._t_pay_scene
end

ConfigDataUtils._t_pay_special = nil
---@return DataTables.CommonData.t_pay_special
function ConfigDataUtils:pay_specialCfg()
	if self._t_pay_special == nil then
		local module = self:_loadDeginData("t_pay_special")
		if not self.inited then return module end
		self._t_pay_special = module
	end
	return self._t_pay_special
end

ConfigDataUtils._t_pay_supervalue = nil
---@return DataTables.CommonData.t_pay_supervalue
function ConfigDataUtils:pay_supervalueCfg()
	if self._t_pay_supervalue == nil then
		local module = self:_loadDeginData("t_pay_supervalue")
		if not self.inited then return module end
		self._t_pay_supervalue = module
	end
	return self._t_pay_supervalue
end

ConfigDataUtils._t_pay_total_group = nil
---@return DataTables.CommonData.t_pay_total_group
function ConfigDataUtils:pay_total_groupCfg()
	if self._t_pay_total_group == nil then
		local module = self:_loadDeginData("t_pay_total_group")
		if not self.inited then return module end
		self._t_pay_total_group = module
	end
	return self._t_pay_total_group
end

ConfigDataUtils._t_pay_type = nil
---@return DataTables.CommonData.t_pay_type
function ConfigDataUtils:pay_typeCfg()
	if self._t_pay_type == nil then
		local module = self:_loadDeginData("t_pay_type")
		if not self.inited then return module end
		self._t_pay_type = module
	end
	return self._t_pay_type
end

ConfigDataUtils._t_pay_vip = nil
---@return DataTables.CommonData.t_pay_vip
function ConfigDataUtils:pay_vipCfg()
	if self._t_pay_vip == nil then
		local module = self:_loadDeginData("t_pay_vip")
		if not self.inited then return module end
		self._t_pay_vip = module
	end
	return self._t_pay_vip
end

ConfigDataUtils._t_payevent_main = nil
---@return DataTables.CommonData.t_payevent_main
function ConfigDataUtils:payevent_mainCfg()
	if self._t_payevent_main == nil then
		local module = self:_loadDeginData("t_payevent_main")
		if not self.inited then return module end
		self._t_payevent_main = module
	end
	return self._t_payevent_main
end

ConfigDataUtils._t_payevent_rewards = nil
---@return DataTables.CommonData.t_payevent_rewards
function ConfigDataUtils:payevent_rewardsCfg()
	if self._t_payevent_rewards == nil then
		local module = self:_loadDeginData("t_payevent_rewards")
		if not self.inited then return module end
		self._t_payevent_rewards = module
	end
	return self._t_payevent_rewards
end

ConfigDataUtils._t_planet_base_config = nil
---@return DataTables.CommonData.t_planet_base_config
function ConfigDataUtils:planet_base_configCfg()
	if self._t_planet_base_config == nil then
		local module = self:_loadDeginData("t_planet_base_config")
		if not self.inited then return module end
		self._t_planet_base_config = module
	end
	return self._t_planet_base_config
end

ConfigDataUtils._t_planet_level_rule = nil
---@return DataTables.CommonData.t_planet_level_rule
function ConfigDataUtils:planet_level_ruleCfg()
	if self._t_planet_level_rule == nil then
		local module = self:_loadDeginData("t_planet_level_rule")
		if not self.inited then return module end
		self._t_planet_level_rule = module
	end
	return self._t_planet_level_rule
end

ConfigDataUtils._t_player_card_show = nil
---@return DataTables.CommonData.t_player_card_show
function ConfigDataUtils:player_card_showCfg()
	if self._t_player_card_show == nil then
		local module = self:_loadDeginData("t_player_card_show")
		if not self.inited then return module end
		self._t_player_card_show = module
	end
	return self._t_player_card_show
end

ConfigDataUtils._t_player_skin_headframe = nil
---@return DataTables.CommonData.t_player_skin_headframe
function ConfigDataUtils:player_skin_headframeCfg()
	if self._t_player_skin_headframe == nil then
		local module = self:_loadDeginData("t_player_skin_headframe")
		if not self.inited then return module end
		self._t_player_skin_headframe = module
	end
	return self._t_player_skin_headframe
end

ConfigDataUtils._t_player_skin_headprotrait = nil
---@return DataTables.CommonData.t_player_skin_headprotrait
function ConfigDataUtils:player_skin_headprotraitCfg()
	if self._t_player_skin_headprotrait == nil then
		local module = self:_loadDeginData("t_player_skin_headprotrait")
		if not self.inited then return module end
		self._t_player_skin_headprotrait = module
	end
	return self._t_player_skin_headprotrait
end

ConfigDataUtils._t_point_get = nil
---@return DataTables.CommonData.t_point_get
function ConfigDataUtils:point_getCfg()
	if self._t_point_get == nil then
		local module = self:_loadDeginData("t_point_get")
		if not self.inited then return module end
		self._t_point_get = module
	end
	return self._t_point_get
end

ConfigDataUtils._t_point_get_group = nil
---@return DataTables.CommonData.t_point_get_group
function ConfigDataUtils:point_get_groupCfg()
	if self._t_point_get_group == nil then
		local module = self:_loadDeginData("t_point_get_group")
		if not self.inited then return module end
		self._t_point_get_group = module
	end
	return self._t_point_get_group
end

ConfigDataUtils._t_point_reward = nil
---@return DataTables.CommonData.t_point_reward
function ConfigDataUtils:point_rewardCfg()
	if self._t_point_reward == nil then
		local module = self:_loadDeginData("t_point_reward")
		if not self.inited then return module end
		self._t_point_reward = module
	end
	return self._t_point_reward
end

ConfigDataUtils._t_pool_configuration = nil
---@return DataTables.CommonData.t_pool_configuration
function ConfigDataUtils:pool_configurationCfg()
	if self._t_pool_configuration == nil then
		local module = self:_loadDeginData("t_pool_configuration")
		if not self.inited then return module end
		self._t_pool_configuration = module
	end
	return self._t_pool_configuration
end

ConfigDataUtils._t_portbattle_chest = nil
---@return DataTables.CommonData.t_portbattle_chest
function ConfigDataUtils:portbattle_chestCfg()
	if self._t_portbattle_chest == nil then
		local module = self:_loadDeginData("t_portbattle_chest")
		if not self.inited then return module end
		self._t_portbattle_chest = module
	end
	return self._t_portbattle_chest
end

ConfigDataUtils._t_portbattle_group = nil
---@return DataTables.CommonData.t_portbattle_group
function ConfigDataUtils:portbattle_groupCfg()
	if self._t_portbattle_group == nil then
		local module = self:_loadDeginData("t_portbattle_group")
		if not self.inited then return module end
		self._t_portbattle_group = module
	end
	return self._t_portbattle_group
end

ConfigDataUtils._t_portbattle_mission = nil
---@return DataTables.CommonData.t_portbattle_mission
function ConfigDataUtils:portbattle_missionCfg()
	if self._t_portbattle_mission == nil then
		local module = self:_loadDeginData("t_portbattle_mission")
		if not self.inited then return module end
		self._t_portbattle_mission = module
	end
	return self._t_portbattle_mission
end

ConfigDataUtils._t_portbattle_order = nil
---@return DataTables.CommonData.t_portbattle_order
function ConfigDataUtils:portbattle_orderCfg()
	if self._t_portbattle_order == nil then
		local module = self:_loadDeginData("t_portbattle_order")
		if not self.inited then return module end
		self._t_portbattle_order = module
	end
	return self._t_portbattle_order
end

ConfigDataUtils._t_portstrike_constant = nil
---@return DataTables.CommonData.t_portstrike_constant
function ConfigDataUtils:portstrike_constantCfg()
	if self._t_portstrike_constant == nil then
		local module = self:_loadDeginData("t_portstrike_constant")
		if not self.inited then return module end
		self._t_portstrike_constant = module
	end
	return self._t_portstrike_constant
end

ConfigDataUtils._t_portstrike_damagereward = nil
---@return DataTables.CommonData.t_portstrike_damagereward
function ConfigDataUtils:portstrike_damagerewardCfg()
	if self._t_portstrike_damagereward == nil then
		local module = self:_loadDeginData("t_portstrike_damagereward")
		if not self.inited then return module end
		self._t_portstrike_damagereward = module
	end
	return self._t_portstrike_damagereward
end

ConfigDataUtils._t_portstrike_group = nil
---@return DataTables.CommonData.t_portstrike_group
function ConfigDataUtils:portstrike_groupCfg()
	if self._t_portstrike_group == nil then
		local module = self:_loadDeginData("t_portstrike_group")
		if not self.inited then return module end
		self._t_portstrike_group = module
	end
	return self._t_portstrike_group
end

ConfigDataUtils._t_portstrike_main = nil
---@return DataTables.CommonData.t_portstrike_main
function ConfigDataUtils:portstrike_mainCfg()
	if self._t_portstrike_main == nil then
		local module = self:_loadDeginData("t_portstrike_main")
		if not self.inited then return module end
		self._t_portstrike_main = module
	end
	return self._t_portstrike_main
end

ConfigDataUtils._t_power_analyze = nil
---@return DataTables.CommonData.t_power_analyze
function ConfigDataUtils:power_analyzeCfg()
	if self._t_power_analyze == nil then
		local module = self:_loadDeginData("t_power_analyze")
		if not self.inited then return module end
		self._t_power_analyze = module
	end
	return self._t_power_analyze
end

ConfigDataUtils._t_power_detail = nil
---@return DataTables.CommonData.t_power_detail
function ConfigDataUtils:power_detailCfg()
	if self._t_power_detail == nil then
		local module = self:_loadDeginData("t_power_detail")
		if not self.inited then return module end
		self._t_power_detail = module
	end
	return self._t_power_detail
end

ConfigDataUtils._t_power_details = nil
---@return DataTables.CommonData.t_power_details
function ConfigDataUtils:power_detailsCfg()
	if self._t_power_details == nil then
		local module = self:_loadDeginData("t_power_details")
		if not self.inited then return module end
		self._t_power_details = module
	end
	return self._t_power_details
end

ConfigDataUtils._t_power_group = nil
---@return DataTables.CommonData.t_power_group
function ConfigDataUtils:power_groupCfg()
	if self._t_power_group == nil then
		local module = self:_loadDeginData("t_power_group")
		if not self.inited then return module end
		self._t_power_group = module
	end
	return self._t_power_group
end

ConfigDataUtils._t_power_type = nil
---@return DataTables.CommonData.t_power_type
function ConfigDataUtils:power_typeCfg()
	if self._t_power_type == nil then
		local module = self:_loadDeginData("t_power_type")
		if not self.inited then return module end
		self._t_power_type = module
	end
	return self._t_power_type
end

ConfigDataUtils._t_powerlevel = nil
---@return DataTables.CommonData.t_powerlevel
function ConfigDataUtils:powerlevelCfg()
	if self._t_powerlevel == nil then
		local module = self:_loadDeginData("t_powerlevel")
		if not self.inited then return module end
		self._t_powerlevel = module
	end
	return self._t_powerlevel
end

ConfigDataUtils._t_powermilestonechapter = nil
---@return DataTables.CommonData.t_powermilestonechapter
function ConfigDataUtils:powermilestonechapterCfg()
	if self._t_powermilestonechapter == nil then
		local module = self:_loadDeginData("t_powermilestonechapter")
		if not self.inited then return module end
		self._t_powermilestonechapter = module
	end
	return self._t_powermilestonechapter
end

ConfigDataUtils._t_powermilestonetask = nil
---@return DataTables.CommonData.t_powermilestonetask
function ConfigDataUtils:powermilestonetaskCfg()
	if self._t_powermilestonetask == nil then
		local module = self:_loadDeginData("t_powermilestonetask")
		if not self.inited then return module end
		self._t_powermilestonetask = module
	end
	return self._t_powermilestonetask
end

ConfigDataUtils._t_powerratingcategory = nil
---@return DataTables.CommonData.t_powerratingcategory
function ConfigDataUtils:powerratingcategoryCfg()
	if self._t_powerratingcategory == nil then
		local module = self:_loadDeginData("t_powerratingcategory")
		if not self.inited then return module end
		self._t_powerratingcategory = module
	end
	return self._t_powerratingcategory
end

ConfigDataUtils._t_powerratingresult = nil
---@return DataTables.CommonData.t_powerratingresult
function ConfigDataUtils:powerratingresultCfg()
	if self._t_powerratingresult == nil then
		local module = self:_loadDeginData("t_powerratingresult")
		if not self.inited then return module end
		self._t_powerratingresult = module
	end
	return self._t_powerratingresult
end

ConfigDataUtils._t_powerratingsubcategory = nil
---@return DataTables.CommonData.t_powerratingsubcategory
function ConfigDataUtils:powerratingsubcategoryCfg()
	if self._t_powerratingsubcategory == nil then
		local module = self:_loadDeginData("t_powerratingsubcategory")
		if not self.inited then return module end
		self._t_powerratingsubcategory = module
	end
	return self._t_powerratingsubcategory
end

ConfigDataUtils._t_powerup = nil
---@return DataTables.CommonData.t_powerup
function ConfigDataUtils:powerupCfg()
	if self._t_powerup == nil then
		local module = self:_loadDeginData("t_powerup")
		if not self.inited then return module end
		self._t_powerup = module
	end
	return self._t_powerup
end

ConfigDataUtils._t_productinfo = nil
---@return DataTables.CommonData.t_productinfo
function ConfigDataUtils:productinfoCfg()
	if self._t_productinfo == nil then
		local module = self:_loadDeginData("t_productinfo")
		if not self.inited then return module end
		self._t_productinfo = module
	end
	return self._t_productinfo
end

ConfigDataUtils._t_projectile = nil
---@return DataTables.CommonData.t_projectile
function ConfigDataUtils:projectileCfg()
	if self._t_projectile == nil then
		local module = self:_loadDeginData("t_projectile")
		if not self.inited then return module end
		self._t_projectile = module
	end
	return self._t_projectile
end

ConfigDataUtils._t_projectile_show = nil
---@return DataTables.CommonData.t_projectile_show
function ConfigDataUtils:projectile_showCfg()
	if self._t_projectile_show == nil then
		local module = self:_loadDeginData("t_projectile_show")
		if not self.inited then return module end
		self._t_projectile_show = module
	end
	return self._t_projectile_show
end

ConfigDataUtils._t_push = nil
---@return DataTables.CommonData.t_push
function ConfigDataUtils:pushCfg()
	if self._t_push == nil then
		local module = self:_loadDeginData("t_push")
		if not self.inited then return module end
		self._t_push = module
	end
	return self._t_push
end

ConfigDataUtils._t_push_shine = nil
---@return DataTables.CommonData.t_push_shine
function ConfigDataUtils:push_shineCfg()
	if self._t_push_shine == nil then
		local module = self:_loadDeginData("t_push_shine")
		if not self.inited then return module end
		self._t_push_shine = module
	end
	return self._t_push_shine
end

ConfigDataUtils._t_pvpstellar_burst = nil
---@return DataTables.CommonData.t_pvpstellar_burst
function ConfigDataUtils:pvpstellar_burstCfg()
	if self._t_pvpstellar_burst == nil then
		local module = self:_loadDeginData("t_pvpstellar_burst")
		if not self.inited then return module end
		self._t_pvpstellar_burst = module
	end
	return self._t_pvpstellar_burst
end

ConfigDataUtils._t_pvpstellar_main = nil
---@return DataTables.CommonData.t_pvpstellar_main
function ConfigDataUtils:pvpstellar_mainCfg()
	if self._t_pvpstellar_main == nil then
		local module = self:_loadDeginData("t_pvpstellar_main")
		if not self.inited then return module end
		self._t_pvpstellar_main = module
	end
	return self._t_pvpstellar_main
end

ConfigDataUtils._t_pvpstellar_point_reward = nil
---@return DataTables.CommonData.t_pvpstellar_point_reward
function ConfigDataUtils:pvpstellar_point_rewardCfg()
	if self._t_pvpstellar_point_reward == nil then
		local module = self:_loadDeginData("t_pvpstellar_point_reward")
		if not self.inited then return module end
		self._t_pvpstellar_point_reward = module
	end
	return self._t_pvpstellar_point_reward
end

ConfigDataUtils._t_questionnaire = nil
---@return DataTables.CommonData.t_questionnaire
function ConfigDataUtils:questionnaireCfg()
	if self._t_questionnaire == nil then
		local module = self:_loadDeginData("t_questionnaire")
		if not self.inited then return module end
		self._t_questionnaire = module
	end
	return self._t_questionnaire
end

ConfigDataUtils._t_rally_target_type = nil
---@return DataTables.CommonData.t_rally_target_type
function ConfigDataUtils:rally_target_typeCfg()
	if self._t_rally_target_type == nil then
		local module = self:_loadDeginData("t_rally_target_type")
		if not self.inited then return module end
		self._t_rally_target_type = module
	end
	return self._t_rally_target_type
end

ConfigDataUtils._t_random_growth_group = nil
---@return DataTables.CommonData.t_random_growth_group
function ConfigDataUtils:random_growth_groupCfg()
	if self._t_random_growth_group == nil then
		local module = self:_loadDeginData("t_random_growth_group")
		if not self.inited then return module end
		self._t_random_growth_group = module
	end
	return self._t_random_growth_group
end

ConfigDataUtils._t_rank = nil
---@return DataTables.CommonData.t_rank
function ConfigDataUtils:rankCfg()
	if self._t_rank == nil then
		local module = self:_loadDeginData("t_rank")
		if not self.inited then return module end
		self._t_rank = module
	end
	return self._t_rank
end

ConfigDataUtils._t_rank_reward = nil
---@return DataTables.CommonData.t_rank_reward
function ConfigDataUtils:rank_rewardCfg()
	if self._t_rank_reward == nil then
		local module = self:_loadDeginData("t_rank_reward")
		if not self.inited then return module end
		self._t_rank_reward = module
	end
	return self._t_rank_reward
end

ConfigDataUtils._t_rank_server_group = nil
---@return DataTables.CommonData.t_rank_server_group
function ConfigDataUtils:rank_server_groupCfg()
	if self._t_rank_server_group == nil then
		local module = self:_loadDeginData("t_rank_server_group")
		if not self.inited then return module end
		self._t_rank_server_group = module
	end
	return self._t_rank_server_group
end

ConfigDataUtils._t_rank_up_show = nil
---@return DataTables.CommonData.t_rank_up_show
function ConfigDataUtils:rank_up_showCfg()
	if self._t_rank_up_show == nil then
		local module = self:_loadDeginData("t_rank_up_show")
		if not self.inited then return module end
		self._t_rank_up_show = module
	end
	return self._t_rank_up_show
end

ConfigDataUtils._t_recharge_shop_active_reward = nil
---@return DataTables.CommonData.t_recharge_shop_active_reward
function ConfigDataUtils:recharge_shop_active_rewardCfg()
	if self._t_recharge_shop_active_reward == nil then
		local module = self:_loadDeginData("t_recharge_shop_active_reward")
		if not self.inited then return module end
		self._t_recharge_shop_active_reward = module
	end
	return self._t_recharge_shop_active_reward
end

ConfigDataUtils._t_recharge_shop_goods = nil
---@return DataTables.CommonData.t_recharge_shop_goods
function ConfigDataUtils:recharge_shop_goodsCfg()
	if self._t_recharge_shop_goods == nil then
		local module = self:_loadDeginData("t_recharge_shop_goods")
		if not self.inited then return module end
		self._t_recharge_shop_goods = module
	end
	return self._t_recharge_shop_goods
end

ConfigDataUtils._t_recharge_shop_main = nil
---@return DataTables.CommonData.t_recharge_shop_main
function ConfigDataUtils:recharge_shop_mainCfg()
	if self._t_recharge_shop_main == nil then
		local module = self:_loadDeginData("t_recharge_shop_main")
		if not self.inited then return module end
		self._t_recharge_shop_main = module
	end
	return self._t_recharge_shop_main
end

ConfigDataUtils._t_recharge_shop_progress = nil
---@return DataTables.CommonData.t_recharge_shop_progress
function ConfigDataUtils:recharge_shop_progressCfg()
	if self._t_recharge_shop_progress == nil then
		local module = self:_loadDeginData("t_recharge_shop_progress")
		if not self.inited then return module end
		self._t_recharge_shop_progress = module
	end
	return self._t_recharge_shop_progress
end

ConfigDataUtils._t_recycle_main = nil
---@return DataTables.CommonData.t_recycle_main
function ConfigDataUtils:recycle_mainCfg()
	if self._t_recycle_main == nil then
		local module = self:_loadDeginData("t_recycle_main")
		if not self.inited then return module end
		self._t_recycle_main = module
	end
	return self._t_recycle_main
end

ConfigDataUtils._t_red_packet = nil
---@return DataTables.CommonData.t_red_packet
function ConfigDataUtils:red_packetCfg()
	if self._t_red_packet == nil then
		local module = self:_loadDeginData("t_red_packet")
		if not self.inited then return module end
		self._t_red_packet = module
	end
	return self._t_red_packet
end

ConfigDataUtils._t_red_packet_chat = nil
---@return DataTables.CommonData.t_red_packet_chat
function ConfigDataUtils:red_packet_chatCfg()
	if self._t_red_packet_chat == nil then
		local module = self:_loadDeginData("t_red_packet_chat")
		if not self.inited then return module end
		self._t_red_packet_chat = module
	end
	return self._t_red_packet_chat
end

ConfigDataUtils._t_red_packet_event = nil
---@return DataTables.CommonData.t_red_packet_event
function ConfigDataUtils:red_packet_eventCfg()
	if self._t_red_packet_event == nil then
		local module = self:_loadDeginData("t_red_packet_event")
		if not self.inited then return module end
		self._t_red_packet_event = module
	end
	return self._t_red_packet_event
end

ConfigDataUtils._t_red_packet_event_reward = nil
---@return DataTables.CommonData.t_red_packet_event_reward
function ConfigDataUtils:red_packet_event_rewardCfg()
	if self._t_red_packet_event_reward == nil then
		local module = self:_loadDeginData("t_red_packet_event_reward")
		if not self.inited then return module end
		self._t_red_packet_event_reward = module
	end
	return self._t_red_packet_event_reward
end

ConfigDataUtils._t_redpoint = nil
---@return DataTables.CommonData.t_redpoint
function ConfigDataUtils:redpointCfg()
	if self._t_redpoint == nil then
		local module = self:_loadDeginData("t_redpoint")
		if not self.inited then return module end
		self._t_redpoint = module
	end
	return self._t_redpoint
end

ConfigDataUtils._t_redpointspecialstyle = nil
---@return DataTables.CommonData.t_redpointspecialstyle
function ConfigDataUtils:redpointspecialstyleCfg()
	if self._t_redpointspecialstyle == nil then
		local module = self:_loadDeginData("t_redpointspecialstyle")
		if not self.inited then return module end
		self._t_redpointspecialstyle = module
	end
	return self._t_redpointspecialstyle
end

ConfigDataUtils._t_region = nil
---@return DataTables.CommonData.t_region
function ConfigDataUtils:regionCfg()
	if self._t_region == nil then
		local module = self:_loadDeginData("t_region")
		if not self.inited then return module end
		self._t_region = module
	end
	return self._t_region
end

ConfigDataUtils._t_relic_raider_cross_server = nil
---@return DataTables.CommonData.t_relic_raider_cross_server
function ConfigDataUtils:relic_raider_cross_serverCfg()
	if self._t_relic_raider_cross_server == nil then
		local module = self:_loadDeginData("t_relic_raider_cross_server")
		if not self.inited then return module end
		self._t_relic_raider_cross_server = module
	end
	return self._t_relic_raider_cross_server
end

ConfigDataUtils._t_relics = nil
---@return DataTables.CommonData.t_relics
function ConfigDataUtils:relicsCfg()
	if self._t_relics == nil then
		local module = self:_loadDeginData("t_relics")
		if not self.inited then return module end
		self._t_relics = module
	end
	return self._t_relics
end

ConfigDataUtils._t_relics_itemreward = nil
---@return DataTables.CommonData.t_relics_itemreward
function ConfigDataUtils:relics_itemrewardCfg()
	if self._t_relics_itemreward == nil then
		local module = self:_loadDeginData("t_relics_itemreward")
		if not self.inited then return module end
		self._t_relics_itemreward = module
	end
	return self._t_relics_itemreward
end

ConfigDataUtils._t_relics_npc = nil
---@return DataTables.CommonData.t_relics_npc
function ConfigDataUtils:relics_npcCfg()
	if self._t_relics_npc == nil then
		local module = self:_loadDeginData("t_relics_npc")
		if not self.inited then return module end
		self._t_relics_npc = module
	end
	return self._t_relics_npc
end

ConfigDataUtils._t_relics_quality = nil
---@return DataTables.CommonData.t_relics_quality
function ConfigDataUtils:relics_qualityCfg()
	if self._t_relics_quality == nil then
		local module = self:_loadDeginData("t_relics_quality")
		if not self.inited then return module end
		self._t_relics_quality = module
	end
	return self._t_relics_quality
end

ConfigDataUtils._t_relics_resreward = nil
---@return DataTables.CommonData.t_relics_resreward
function ConfigDataUtils:relics_resrewardCfg()
	if self._t_relics_resreward == nil then
		local module = self:_loadDeginData("t_relics_resreward")
		if not self.inited then return module end
		self._t_relics_resreward = module
	end
	return self._t_relics_resreward
end

ConfigDataUtils._t_relics_reward = nil
---@return DataTables.CommonData.t_relics_reward
function ConfigDataUtils:relics_rewardCfg()
	if self._t_relics_reward == nil then
		local module = self:_loadDeginData("t_relics_reward")
		if not self.inited then return module end
		self._t_relics_reward = module
	end
	return self._t_relics_reward
end

ConfigDataUtils._t_relics_type = nil
---@return DataTables.CommonData.t_relics_type
function ConfigDataUtils:relics_typeCfg()
	if self._t_relics_type == nil then
		local module = self:_loadDeginData("t_relics_type")
		if not self.inited then return module end
		self._t_relics_type = module
	end
	return self._t_relics_type
end

ConfigDataUtils._t_religion_buff_show = nil
---@return DataTables.CommonData.t_religion_buff_show
function ConfigDataUtils:religion_buff_showCfg()
	if self._t_religion_buff_show == nil then
		local module = self:_loadDeginData("t_religion_buff_show")
		if not self.inited then return module end
		self._t_religion_buff_show = module
	end
	return self._t_religion_buff_show
end

ConfigDataUtils._t_religion_chat = nil
---@return DataTables.CommonData.t_religion_chat
function ConfigDataUtils:religion_chatCfg()
	if self._t_religion_chat == nil then
		local module = self:_loadDeginData("t_religion_chat")
		if not self.inited then return module end
		self._t_religion_chat = module
	end
	return self._t_religion_chat
end

ConfigDataUtils._t_religion_inherit = nil
---@return DataTables.CommonData.t_religion_inherit
function ConfigDataUtils:religion_inheritCfg()
	if self._t_religion_inherit == nil then
		local module = self:_loadDeginData("t_religion_inherit")
		if not self.inited then return module end
		self._t_religion_inherit = module
	end
	return self._t_religion_inherit
end

ConfigDataUtils._t_religion_logic = nil
---@return DataTables.CommonData.t_religion_logic
function ConfigDataUtils:religion_logicCfg()
	if self._t_religion_logic == nil then
		local module = self:_loadDeginData("t_religion_logic")
		if not self.inited then return module end
		self._t_religion_logic = module
	end
	return self._t_religion_logic
end

ConfigDataUtils._t_religion_stage = nil
---@return DataTables.CommonData.t_religion_stage
function ConfigDataUtils:religion_stageCfg()
	if self._t_religion_stage == nil then
		local module = self:_loadDeginData("t_religion_stage")
		if not self.inited then return module end
		self._t_religion_stage = module
	end
	return self._t_religion_stage
end

ConfigDataUtils._t_religion_task = nil
---@return DataTables.CommonData.t_religion_task
function ConfigDataUtils:religion_taskCfg()
	if self._t_religion_task == nil then
		local module = self:_loadDeginData("t_religion_task")
		if not self.inited then return module end
		self._t_religion_task = module
	end
	return self._t_religion_task
end

ConfigDataUtils._t_repair_base_config = nil
---@return DataTables.CommonData.t_repair_base_config
function ConfigDataUtils:repair_base_configCfg()
	if self._t_repair_base_config == nil then
		local module = self:_loadDeginData("t_repair_base_config")
		if not self.inited then return module end
		self._t_repair_base_config = module
	end
	return self._t_repair_base_config
end

ConfigDataUtils._t_report = nil
---@return DataTables.CommonData.t_report
function ConfigDataUtils:reportCfg()
	if self._t_report == nil then
		local module = self:_loadDeginData("t_report")
		if not self.inited then return module end
		self._t_report = module
	end
	return self._t_report
end

ConfigDataUtils._t_reportcontent = nil
---@return DataTables.CommonData.t_reportcontent
function ConfigDataUtils:reportcontentCfg()
	if self._t_reportcontent == nil then
		local module = self:_loadDeginData("t_reportcontent")
		if not self.inited then return module end
		self._t_reportcontent = module
	end
	return self._t_reportcontent
end

ConfigDataUtils._t_reportmain = nil
---@return DataTables.CommonData.t_reportmain
function ConfigDataUtils:reportmainCfg()
	if self._t_reportmain == nil then
		local module = self:_loadDeginData("t_reportmain")
		if not self.inited then return module end
		self._t_reportmain = module
	end
	return self._t_reportmain
end

ConfigDataUtils._t_reportreason = nil
---@return DataTables.CommonData.t_reportreason
function ConfigDataUtils:reportreasonCfg()
	if self._t_reportreason == nil then
		local module = self:_loadDeginData("t_reportreason")
		if not self.inited then return module end
		self._t_reportreason = module
	end
	return self._t_reportreason
end

ConfigDataUtils._t_reputation_buff_show = nil
---@return DataTables.CommonData.t_reputation_buff_show
function ConfigDataUtils:reputation_buff_showCfg()
	if self._t_reputation_buff_show == nil then
		local module = self:_loadDeginData("t_reputation_buff_show")
		if not self.inited then return module end
		self._t_reputation_buff_show = module
	end
	return self._t_reputation_buff_show
end

ConfigDataUtils._t_reputation_buff_show_s2 = nil
---@return DataTables.CommonData.t_reputation_buff_show_s2
function ConfigDataUtils:reputation_buff_show_s2Cfg()
	if self._t_reputation_buff_show_s2 == nil then
		local module = self:_loadDeginData("t_reputation_buff_show_s2")
		if not self.inited then return module end
		self._t_reputation_buff_show_s2 = module
	end
	return self._t_reputation_buff_show_s2
end

ConfigDataUtils._t_reputation_chapter = nil
---@return DataTables.CommonData.t_reputation_chapter
function ConfigDataUtils:reputation_chapterCfg()
	if self._t_reputation_chapter == nil then
		local module = self:_loadDeginData("t_reputation_chapter")
		if not self.inited then return module end
		self._t_reputation_chapter = module
	end
	return self._t_reputation_chapter
end

ConfigDataUtils._t_reputation_chapter_s2 = nil
---@return DataTables.CommonData.t_reputation_chapter_s2
function ConfigDataUtils:reputation_chapter_s2Cfg()
	if self._t_reputation_chapter_s2 == nil then
		local module = self:_loadDeginData("t_reputation_chapter_s2")
		if not self.inited then return module end
		self._t_reputation_chapter_s2 = module
	end
	return self._t_reputation_chapter_s2
end

ConfigDataUtils._t_reputation_chat = nil
---@return DataTables.CommonData.t_reputation_chat
function ConfigDataUtils:reputation_chatCfg()
	if self._t_reputation_chat == nil then
		local module = self:_loadDeginData("t_reputation_chat")
		if not self.inited then return module end
		self._t_reputation_chat = module
	end
	return self._t_reputation_chat
end

ConfigDataUtils._t_reputation_chat_s2 = nil
---@return DataTables.CommonData.t_reputation_chat_s2
function ConfigDataUtils:reputation_chat_s2Cfg()
	if self._t_reputation_chat_s2 == nil then
		local module = self:_loadDeginData("t_reputation_chat_s2")
		if not self.inited then return module end
		self._t_reputation_chat_s2 = module
	end
	return self._t_reputation_chat_s2
end

ConfigDataUtils._t_reputation_fragment = nil
---@return DataTables.CommonData.t_reputation_fragment
function ConfigDataUtils:reputation_fragmentCfg()
	if self._t_reputation_fragment == nil then
		local module = self:_loadDeginData("t_reputation_fragment")
		if not self.inited then return module end
		self._t_reputation_fragment = module
	end
	return self._t_reputation_fragment
end

ConfigDataUtils._t_reputation_inherit = nil
---@return DataTables.CommonData.t_reputation_inherit
function ConfigDataUtils:reputation_inheritCfg()
	if self._t_reputation_inherit == nil then
		local module = self:_loadDeginData("t_reputation_inherit")
		if not self.inited then return module end
		self._t_reputation_inherit = module
	end
	return self._t_reputation_inherit
end

ConfigDataUtils._t_reputation_inherit_s2 = nil
---@return DataTables.CommonData.t_reputation_inherit_s2
function ConfigDataUtils:reputation_inherit_s2Cfg()
	if self._t_reputation_inherit_s2 == nil then
		local module = self:_loadDeginData("t_reputation_inherit_s2")
		if not self.inited then return module end
		self._t_reputation_inherit_s2 = module
	end
	return self._t_reputation_inherit_s2
end

ConfigDataUtils._t_reputation_key_item = nil
---@return DataTables.CommonData.t_reputation_key_item
function ConfigDataUtils:reputation_key_itemCfg()
	if self._t_reputation_key_item == nil then
		local module = self:_loadDeginData("t_reputation_key_item")
		if not self.inited then return module end
		self._t_reputation_key_item = module
	end
	return self._t_reputation_key_item
end

ConfigDataUtils._t_reputation_level = nil
---@return DataTables.CommonData.t_reputation_level
function ConfigDataUtils:reputation_levelCfg()
	if self._t_reputation_level == nil then
		local module = self:_loadDeginData("t_reputation_level")
		if not self.inited then return module end
		self._t_reputation_level = module
	end
	return self._t_reputation_level
end

ConfigDataUtils._t_reputation_level_s2 = nil
---@return DataTables.CommonData.t_reputation_level_s2
function ConfigDataUtils:reputation_level_s2Cfg()
	if self._t_reputation_level_s2 == nil then
		local module = self:_loadDeginData("t_reputation_level_s2")
		if not self.inited then return module end
		self._t_reputation_level_s2 = module
	end
	return self._t_reputation_level_s2
end

ConfigDataUtils._t_reputation_level_type = nil
---@return DataTables.CommonData.t_reputation_level_type
function ConfigDataUtils:reputation_level_typeCfg()
	if self._t_reputation_level_type == nil then
		local module = self:_loadDeginData("t_reputation_level_type")
		if not self.inited then return module end
		self._t_reputation_level_type = module
	end
	return self._t_reputation_level_type
end

ConfigDataUtils._t_reputation_level_type_s2 = nil
---@return DataTables.CommonData.t_reputation_level_type_s2
function ConfigDataUtils:reputation_level_type_s2Cfg()
	if self._t_reputation_level_type_s2 == nil then
		local module = self:_loadDeginData("t_reputation_level_type_s2")
		if not self.inited then return module end
		self._t_reputation_level_type_s2 = module
	end
	return self._t_reputation_level_type_s2
end

ConfigDataUtils._t_reputation_lore = nil
---@return DataTables.CommonData.t_reputation_lore
function ConfigDataUtils:reputation_loreCfg()
	if self._t_reputation_lore == nil then
		local module = self:_loadDeginData("t_reputation_lore")
		if not self.inited then return module end
		self._t_reputation_lore = module
	end
	return self._t_reputation_lore
end

ConfigDataUtils._t_reputation_task = nil
---@return DataTables.CommonData.t_reputation_task
function ConfigDataUtils:reputation_taskCfg()
	if self._t_reputation_task == nil then
		local module = self:_loadDeginData("t_reputation_task")
		if not self.inited then return module end
		self._t_reputation_task = module
	end
	return self._t_reputation_task
end

ConfigDataUtils._t_reputation_task_s2 = nil
---@return DataTables.CommonData.t_reputation_task_s2
function ConfigDataUtils:reputation_task_s2Cfg()
	if self._t_reputation_task_s2 == nil then
		local module = self:_loadDeginData("t_reputation_task_s2")
		if not self.inited then return module end
		self._t_reputation_task_s2 = module
	end
	return self._t_reputation_task_s2
end

ConfigDataUtils._t_research_base = nil
---@return DataTables.CommonData.t_research_base
function ConfigDataUtils:research_baseCfg()
	if self._t_research_base == nil then
		local module = self:_loadDeginData("t_research_base")
		if not self.inited then return module end
		self._t_research_base = module
	end
	return self._t_research_base
end

ConfigDataUtils._t_research_level_data = nil
---@return DataTables.CommonData.t_research_level_data
function ConfigDataUtils:research_level_dataCfg()
	if self._t_research_level_data == nil then
		local module = self:_loadDeginData("t_research_level_data")
		if not self.inited then return module end
		self._t_research_level_data = module
	end
	return self._t_research_level_data
end

ConfigDataUtils._t_research_show = nil
---@return DataTables.CommonData.t_research_show
function ConfigDataUtils:research_showCfg()
	if self._t_research_show == nil then
		local module = self:_loadDeginData("t_research_show")
		if not self.inited then return module end
		self._t_research_show = module
	end
	return self._t_research_show
end

ConfigDataUtils._t_research_type = nil
---@return DataTables.CommonData.t_research_type
function ConfigDataUtils:research_typeCfg()
	if self._t_research_type == nil then
		local module = self:_loadDeginData("t_research_type")
		if not self.inited then return module end
		self._t_research_type = module
	end
	return self._t_research_type
end

ConfigDataUtils._t_robot = nil
---@return DataTables.CommonData.t_robot
function ConfigDataUtils:robotCfg()
	if self._t_robot == nil then
		local module = self:_loadDeginData("t_robot")
		if not self.inited then return module end
		self._t_robot = module
	end
	return self._t_robot
end

ConfigDataUtils._t_room_base = nil
---@return DataTables.CommonData.t_room_base
function ConfigDataUtils:room_baseCfg()
	if self._t_room_base == nil then
		local module = self:_loadDeginData("t_room_base")
		if not self.inited then return module end
		self._t_room_base = module
	end
	return self._t_room_base
end

ConfigDataUtils._t_room_bubble = nil
---@return DataTables.CommonData.t_room_bubble
function ConfigDataUtils:room_bubbleCfg()
	if self._t_room_bubble == nil then
		local module = self:_loadDeginData("t_room_bubble")
		if not self.inited then return module end
		self._t_room_bubble = module
	end
	return self._t_room_bubble
end

ConfigDataUtils._t_room_click_func_config = nil
---@return DataTables.CommonData.t_room_click_func_config
function ConfigDataUtils:room_click_func_configCfg()
	if self._t_room_click_func_config == nil then
		local module = self:_loadDeginData("t_room_click_func_config")
		if not self.inited then return module end
		self._t_room_click_func_config = module
	end
	return self._t_room_click_func_config
end

ConfigDataUtils._t_room_level_child_data = nil
---@return DataTables.CommonData.t_room_level_child_data
function ConfigDataUtils:room_level_child_dataCfg()
	if self._t_room_level_child_data == nil then
		local module = self:_loadDeginData("t_room_level_child_data")
		if not self.inited then return module end
		self._t_room_level_child_data = module
	end
	return self._t_room_level_child_data
end

ConfigDataUtils._t_room_level_data = nil
---@return DataTables.CommonData.t_room_level_data
function ConfigDataUtils:room_level_dataCfg()
	if self._t_room_level_data == nil then
		local module = self:_loadDeginData("t_room_level_data")
		if not self.inited then return module end
		self._t_room_level_data = module
	end
	return self._t_room_level_data
end

ConfigDataUtils._t_room_resource_production = nil
---@return DataTables.CommonData.t_room_resource_production
function ConfigDataUtils:room_resource_productionCfg()
	if self._t_room_resource_production == nil then
		local module = self:_loadDeginData("t_room_resource_production")
		if not self.inited then return module end
		self._t_room_resource_production = module
	end
	return self._t_room_resource_production
end

ConfigDataUtils._t_ruler = nil
---@return DataTables.CommonData.t_ruler
function ConfigDataUtils:rulerCfg()
	if self._t_ruler == nil then
		local module = self:_loadDeginData("t_ruler")
		if not self.inited then return module end
		self._t_ruler = module
	end
	return self._t_ruler
end

ConfigDataUtils._t_same_type_activity = nil
---@return DataTables.CommonData.t_same_type_activity
function ConfigDataUtils:same_type_activityCfg()
	if self._t_same_type_activity == nil then
		local module = self:_loadDeginData("t_same_type_activity")
		if not self.inited then return module end
		self._t_same_type_activity = module
	end
	return self._t_same_type_activity
end

ConfigDataUtils._t_same_type_pack = nil
---@return DataTables.CommonData.t_same_type_pack
function ConfigDataUtils:same_type_packCfg()
	if self._t_same_type_pack == nil then
		local module = self:_loadDeginData("t_same_type_pack")
		if not self.inited then return module end
		self._t_same_type_pack = module
	end
	return self._t_same_type_pack
end

ConfigDataUtils._t_season_benefits_show = nil
---@return DataTables.CommonData.t_season_benefits_show
function ConfigDataUtils:season_benefits_showCfg()
	if self._t_season_benefits_show == nil then
		local module = self:_loadDeginData("t_season_benefits_show")
		if not self.inited then return module end
		self._t_season_benefits_show = module
	end
	return self._t_season_benefits_show
end

ConfigDataUtils._t_season_center = nil
---@return DataTables.CommonData.t_season_center
function ConfigDataUtils:season_centerCfg()
	if self._t_season_center == nil then
		local module = self:_loadDeginData("t_season_center")
		if not self.inited then return module end
		self._t_season_center = module
	end
	return self._t_season_center
end

ConfigDataUtils._t_season_guide_reward_group = nil
---@return DataTables.CommonData.t_season_guide_reward_group
function ConfigDataUtils:season_guide_reward_groupCfg()
	if self._t_season_guide_reward_group == nil then
		local module = self:_loadDeginData("t_season_guide_reward_group")
		if not self.inited then return module end
		self._t_season_guide_reward_group = module
	end
	return self._t_season_guide_reward_group
end

ConfigDataUtils._t_season_guild_goal_reward = nil
---@return DataTables.CommonData.t_season_guild_goal_reward
function ConfigDataUtils:season_guild_goal_rewardCfg()
	if self._t_season_guild_goal_reward == nil then
		local module = self:_loadDeginData("t_season_guild_goal_reward")
		if not self.inited then return module end
		self._t_season_guild_goal_reward = module
	end
	return self._t_season_guild_goal_reward
end

ConfigDataUtils._t_season_map_big_node = nil
---@return DataTables.CommonData.t_season_map_big_node
function ConfigDataUtils:season_map_big_nodeCfg()
	if self._t_season_map_big_node == nil then
		local module = self:_loadDeginData("t_season_map_big_node")
		if not self.inited then return module end
		self._t_season_map_big_node = module
	end
	return self._t_season_map_big_node
end

ConfigDataUtils._t_season_map_small_node = nil
---@return DataTables.CommonData.t_season_map_small_node
function ConfigDataUtils:season_map_small_nodeCfg()
	if self._t_season_map_small_node == nil then
		local module = self:_loadDeginData("t_season_map_small_node")
		if not self.inited then return module end
		self._t_season_map_small_node = module
	end
	return self._t_season_map_small_node
end

ConfigDataUtils._t_season_map_summary = nil
---@return DataTables.CommonData.t_season_map_summary
function ConfigDataUtils:season_map_summaryCfg()
	if self._t_season_map_summary == nil then
		local module = self:_loadDeginData("t_season_map_summary")
		if not self.inited then return module end
		self._t_season_map_summary = module
	end
	return self._t_season_map_summary
end

ConfigDataUtils._t_season_milestones_reward = nil
---@return DataTables.CommonData.t_season_milestones_reward
function ConfigDataUtils:season_milestones_rewardCfg()
	if self._t_season_milestones_reward == nil then
		local module = self:_loadDeginData("t_season_milestones_reward")
		if not self.inited then return module end
		self._t_season_milestones_reward = module
	end
	return self._t_season_milestones_reward
end

ConfigDataUtils._t_season_overview = nil
---@return DataTables.CommonData.t_season_overview
function ConfigDataUtils:season_overviewCfg()
	if self._t_season_overview == nil then
		local module = self:_loadDeginData("t_season_overview")
		if not self.inited then return module end
		self._t_season_overview = module
	end
	return self._t_season_overview
end

ConfigDataUtils._t_season_overview_gameplay_show = nil
---@return DataTables.CommonData.t_season_overview_gameplay_show
function ConfigDataUtils:season_overview_gameplay_showCfg()
	if self._t_season_overview_gameplay_show == nil then
		local module = self:_loadDeginData("t_season_overview_gameplay_show")
		if not self.inited then return module end
		self._t_season_overview_gameplay_show = module
	end
	return self._t_season_overview_gameplay_show
end

ConfigDataUtils._t_season_overview_main = nil
---@return DataTables.CommonData.t_season_overview_main
function ConfigDataUtils:season_overview_mainCfg()
	if self._t_season_overview_main == nil then
		local module = self:_loadDeginData("t_season_overview_main")
		if not self.inited then return module end
		self._t_season_overview_main = module
	end
	return self._t_season_overview_main
end

ConfigDataUtils._t_season_personal_goal_reward = nil
---@return DataTables.CommonData.t_season_personal_goal_reward
function ConfigDataUtils:season_personal_goal_rewardCfg()
	if self._t_season_personal_goal_reward == nil then
		local module = self:_loadDeginData("t_season_personal_goal_reward")
		if not self.inited then return module end
		self._t_season_personal_goal_reward = module
	end
	return self._t_season_personal_goal_reward
end

ConfigDataUtils._t_season_preview = nil
---@return DataTables.CommonData.t_season_preview
function ConfigDataUtils:season_previewCfg()
	if self._t_season_preview == nil then
		local module = self:_loadDeginData("t_season_preview")
		if not self.inited then return module end
		self._t_season_preview = module
	end
	return self._t_season_preview
end

ConfigDataUtils._t_season_preview_get_point = nil
---@return DataTables.CommonData.t_season_preview_get_point
function ConfigDataUtils:season_preview_get_pointCfg()
	if self._t_season_preview_get_point == nil then
		local module = self:_loadDeginData("t_season_preview_get_point")
		if not self.inited then return module end
		self._t_season_preview_get_point = module
	end
	return self._t_season_preview_get_point
end

ConfigDataUtils._t_season_preview_stage = nil
---@return DataTables.CommonData.t_season_preview_stage
function ConfigDataUtils:season_preview_stageCfg()
	if self._t_season_preview_stage == nil then
		local module = self:_loadDeginData("t_season_preview_stage")
		if not self.inited then return module end
		self._t_season_preview_stage = module
	end
	return self._t_season_preview_stage
end

ConfigDataUtils._t_season_rank = nil
---@return DataTables.CommonData.t_season_rank
function ConfigDataUtils:season_rankCfg()
	if self._t_season_rank == nil then
		local module = self:_loadDeginData("t_season_rank")
		if not self.inited then return module end
		self._t_season_rank = module
	end
	return self._t_season_rank
end

ConfigDataUtils._t_season_reward_condition = nil
---@return DataTables.CommonData.t_season_reward_condition
function ConfigDataUtils:season_reward_conditionCfg()
	if self._t_season_reward_condition == nil then
		local module = self:_loadDeginData("t_season_reward_condition")
		if not self.inited then return module end
		self._t_season_reward_condition = module
	end
	return self._t_season_reward_condition
end

ConfigDataUtils._t_season_reward_constant = nil
---@return DataTables.CommonData.t_season_reward_constant
function ConfigDataUtils:season_reward_constantCfg()
	if self._t_season_reward_constant == nil then
		local module = self:_loadDeginData("t_season_reward_constant")
		if not self.inited then return module end
		self._t_season_reward_constant = module
	end
	return self._t_season_reward_constant
end

ConfigDataUtils._t_season_reward_summary = nil
---@return DataTables.CommonData.t_season_reward_summary
function ConfigDataUtils:season_reward_summaryCfg()
	if self._t_season_reward_summary == nil then
		local module = self:_loadDeginData("t_season_reward_summary")
		if not self.inited then return module end
		self._t_season_reward_summary = module
	end
	return self._t_season_reward_summary
end

ConfigDataUtils._t_season_reward_warzone = nil
---@return DataTables.CommonData.t_season_reward_warzone
function ConfigDataUtils:season_reward_warzoneCfg()
	if self._t_season_reward_warzone == nil then
		local module = self:_loadDeginData("t_season_reward_warzone")
		if not self.inited then return module end
		self._t_season_reward_warzone = module
	end
	return self._t_season_reward_warzone
end

ConfigDataUtils._t_season_rule_big_node = nil
---@return DataTables.CommonData.t_season_rule_big_node
function ConfigDataUtils:season_rule_big_nodeCfg()
	if self._t_season_rule_big_node == nil then
		local module = self:_loadDeginData("t_season_rule_big_node")
		if not self.inited then return module end
		self._t_season_rule_big_node = module
	end
	return self._t_season_rule_big_node
end

ConfigDataUtils._t_season_rule_sheet = nil
---@return DataTables.CommonData.t_season_rule_sheet
function ConfigDataUtils:season_rule_sheetCfg()
	if self._t_season_rule_sheet == nil then
		local module = self:_loadDeginData("t_season_rule_sheet")
		if not self.inited then return module end
		self._t_season_rule_sheet = module
	end
	return self._t_season_rule_sheet
end

ConfigDataUtils._t_season_rule_sheet_summary = nil
---@return DataTables.CommonData.t_season_rule_sheet_summary
function ConfigDataUtils:season_rule_sheet_summaryCfg()
	if self._t_season_rule_sheet_summary == nil then
		local module = self:_loadDeginData("t_season_rule_sheet_summary")
		if not self.inited then return module end
		self._t_season_rule_sheet_summary = module
	end
	return self._t_season_rule_sheet_summary
end

ConfigDataUtils._t_season_rule_small_node = nil
---@return DataTables.CommonData.t_season_rule_small_node
function ConfigDataUtils:season_rule_small_nodeCfg()
	if self._t_season_rule_small_node == nil then
		local module = self:_loadDeginData("t_season_rule_small_node")
		if not self.inited then return module end
		self._t_season_rule_small_node = module
	end
	return self._t_season_rule_small_node
end

ConfigDataUtils._t_season_shop = nil
---@return DataTables.CommonData.t_season_shop
function ConfigDataUtils:season_shopCfg()
	if self._t_season_shop == nil then
		local module = self:_loadDeginData("t_season_shop")
		if not self.inited then return module end
		self._t_season_shop = module
	end
	return self._t_season_shop
end

ConfigDataUtils._t_season_task = nil
---@return DataTables.CommonData.t_season_task
function ConfigDataUtils:season_taskCfg()
	if self._t_season_task == nil then
		local module = self:_loadDeginData("t_season_task")
		if not self.inited then return module end
		self._t_season_task = module
	end
	return self._t_season_task
end

ConfigDataUtils._t_seasonconstant = nil
---@return DataTables.CommonData.t_seasonconstant
function ConfigDataUtils:seasonconstantCfg()
	if self._t_seasonconstant == nil then
		local module = self:_loadDeginData("t_seasonconstant")
		if not self.inited then return module end
		self._t_seasonconstant = module
	end
	return self._t_seasonconstant
end

ConfigDataUtils._t_seasonjourneygroup = nil
---@return DataTables.CommonData.t_seasonjourneygroup
function ConfigDataUtils:seasonjourneygroupCfg()
	if self._t_seasonjourneygroup == nil then
		local module = self:_loadDeginData("t_seasonjourneygroup")
		if not self.inited then return module end
		self._t_seasonjourneygroup = module
	end
	return self._t_seasonjourneygroup
end

ConfigDataUtils._t_seasonjourneyrank = nil
---@return DataTables.CommonData.t_seasonjourneyrank
function ConfigDataUtils:seasonjourneyrankCfg()
	if self._t_seasonjourneyrank == nil then
		local module = self:_loadDeginData("t_seasonjourneyrank")
		if not self.inited then return module end
		self._t_seasonjourneyrank = module
	end
	return self._t_seasonjourneyrank
end

ConfigDataUtils._t_seasonjourneystage = nil
---@return DataTables.CommonData.t_seasonjourneystage
function ConfigDataUtils:seasonjourneystageCfg()
	if self._t_seasonjourneystage == nil then
		local module = self:_loadDeginData("t_seasonjourneystage")
		if not self.inited then return module end
		self._t_seasonjourneystage = module
	end
	return self._t_seasonjourneystage
end

ConfigDataUtils._t_seasonmap = nil
---@return DataTables.CommonData.t_seasonmap
function ConfigDataUtils:seasonmapCfg()
	if self._t_seasonmap == nil then
		local module = self:_loadDeginData("t_seasonmap")
		if not self.inited then return module end
		self._t_seasonmap = module
	end
	return self._t_seasonmap
end

ConfigDataUtils._t_seasonpass_basic = nil
---@return DataTables.CommonData.t_seasonpass_basic
function ConfigDataUtils:seasonpass_basicCfg()
	if self._t_seasonpass_basic == nil then
		local module = self:_loadDeginData("t_seasonpass_basic")
		if not self.inited then return module end
		self._t_seasonpass_basic = module
	end
	return self._t_seasonpass_basic
end

ConfigDataUtils._t_seasonpass_level = nil
---@return DataTables.CommonData.t_seasonpass_level
function ConfigDataUtils:seasonpass_levelCfg()
	if self._t_seasonpass_level == nil then
		local module = self:_loadDeginData("t_seasonpass_level")
		if not self.inited then return module end
		self._t_seasonpass_level = module
	end
	return self._t_seasonpass_level
end

ConfigDataUtils._t_seasonpass_task = nil
---@return DataTables.CommonData.t_seasonpass_task
function ConfigDataUtils:seasonpass_taskCfg()
	if self._t_seasonpass_task == nil then
		local module = self:_loadDeginData("t_seasonpass_task")
		if not self.inited then return module end
		self._t_seasonpass_task = module
	end
	return self._t_seasonpass_task
end

ConfigDataUtils._t_seasonpass_taskgroup = nil
---@return DataTables.CommonData.t_seasonpass_taskgroup
function ConfigDataUtils:seasonpass_taskgroupCfg()
	if self._t_seasonpass_taskgroup == nil then
		local module = self:_loadDeginData("t_seasonpass_taskgroup")
		if not self.inited then return module end
		self._t_seasonpass_taskgroup = module
	end
	return self._t_seasonpass_taskgroup
end

ConfigDataUtils._t_seasonrecycle = nil
---@return DataTables.CommonData.t_seasonrecycle
function ConfigDataUtils:seasonrecycleCfg()
	if self._t_seasonrecycle == nil then
		local module = self:_loadDeginData("t_seasonrecycle")
		if not self.inited then return module end
		self._t_seasonrecycle = module
	end
	return self._t_seasonrecycle
end

ConfigDataUtils._t_secretlevel_rule = nil
---@return DataTables.CommonData.t_secretlevel_rule
function ConfigDataUtils:secretlevel_ruleCfg()
	if self._t_secretlevel_rule == nil then
		local module = self:_loadDeginData("t_secretlevel_rule")
		if not self.inited then return module end
		self._t_secretlevel_rule = module
	end
	return self._t_secretlevel_rule
end

ConfigDataUtils._t_secretlevel_task_base = nil
---@return DataTables.CommonData.t_secretlevel_task_base
function ConfigDataUtils:secretlevel_task_baseCfg()
	if self._t_secretlevel_task_base == nil then
		local module = self:_loadDeginData("t_secretlevel_task_base")
		if not self.inited then return module end
		self._t_secretlevel_task_base = module
	end
	return self._t_secretlevel_task_base
end

ConfigDataUtils._t_secretlevel_task_sub = nil
---@return DataTables.CommonData.t_secretlevel_task_sub
function ConfigDataUtils:secretlevel_task_subCfg()
	if self._t_secretlevel_task_sub == nil then
		local module = self:_loadDeginData("t_secretlevel_task_sub")
		if not self.inited then return module end
		self._t_secretlevel_task_sub = module
	end
	return self._t_secretlevel_task_sub
end

ConfigDataUtils._t_secretlevel_task_type = nil
---@return DataTables.CommonData.t_secretlevel_task_type
function ConfigDataUtils:secretlevel_task_typeCfg()
	if self._t_secretlevel_task_type == nil then
		local module = self:_loadDeginData("t_secretlevel_task_type")
		if not self.inited then return module end
		self._t_secretlevel_task_type = module
	end
	return self._t_secretlevel_task_type
end

ConfigDataUtils._t_secretlevel_treasure_drop = nil
---@return DataTables.CommonData.t_secretlevel_treasure_drop
function ConfigDataUtils:secretlevel_treasure_dropCfg()
	if self._t_secretlevel_treasure_drop == nil then
		local module = self:_loadDeginData("t_secretlevel_treasure_drop")
		if not self.inited then return module end
		self._t_secretlevel_treasure_drop = module
	end
	return self._t_secretlevel_treasure_drop
end

ConfigDataUtils._t_secretlevel_type = nil
---@return DataTables.CommonData.t_secretlevel_type
function ConfigDataUtils:secretlevel_typeCfg()
	if self._t_secretlevel_type == nil then
		local module = self:_loadDeginData("t_secretlevel_type")
		if not self.inited then return module end
		self._t_secretlevel_type = module
	end
	return self._t_secretlevel_type
end

ConfigDataUtils._t_server_group = nil
---@return DataTables.CommonData.t_server_group
function ConfigDataUtils:server_groupCfg()
	if self._t_server_group == nil then
		local module = self:_loadDeginData("t_server_group")
		if not self.inited then return module end
		self._t_server_group = module
	end
	return self._t_server_group
end

ConfigDataUtils._t_server_group_type = nil
---@return DataTables.CommonData.t_server_group_type
function ConfigDataUtils:server_group_typeCfg()
	if self._t_server_group_type == nil then
		local module = self:_loadDeginData("t_server_group_type")
		if not self.inited then return module end
		self._t_server_group_type = module
	end
	return self._t_server_group_type
end

ConfigDataUtils._t_seven_day_chest = nil
---@return DataTables.CommonData.t_seven_day_chest
function ConfigDataUtils:seven_day_chestCfg()
	if self._t_seven_day_chest == nil then
		local module = self:_loadDeginData("t_seven_day_chest")
		if not self.inited then return module end
		self._t_seven_day_chest = module
	end
	return self._t_seven_day_chest
end

ConfigDataUtils._t_seven_day_detail = nil
---@return DataTables.CommonData.t_seven_day_detail
function ConfigDataUtils:seven_day_detailCfg()
	if self._t_seven_day_detail == nil then
		local module = self:_loadDeginData("t_seven_day_detail")
		if not self.inited then return module end
		self._t_seven_day_detail = module
	end
	return self._t_seven_day_detail
end

ConfigDataUtils._t_seven_day_first = nil
---@return DataTables.CommonData.t_seven_day_first
function ConfigDataUtils:seven_day_firstCfg()
	if self._t_seven_day_first == nil then
		local module = self:_loadDeginData("t_seven_day_first")
		if not self.inited then return module end
		self._t_seven_day_first = module
	end
	return self._t_seven_day_first
end

ConfigDataUtils._t_seven_day_group = nil
---@return DataTables.CommonData.t_seven_day_group
function ConfigDataUtils:seven_day_groupCfg()
	if self._t_seven_day_group == nil then
		local module = self:_loadDeginData("t_seven_day_group")
		if not self.inited then return module end
		self._t_seven_day_group = module
	end
	return self._t_seven_day_group
end

ConfigDataUtils._t_seven_day_second = nil
---@return DataTables.CommonData.t_seven_day_second
function ConfigDataUtils:seven_day_secondCfg()
	if self._t_seven_day_second == nil then
		local module = self:_loadDeginData("t_seven_day_second")
		if not self.inited then return module end
		self._t_seven_day_second = module
	end
	return self._t_seven_day_second
end

ConfigDataUtils._t_sheet1 = nil
---@return DataTables.CommonData.t_sheet1
function ConfigDataUtils:sheet1Cfg()
	if self._t_sheet1 == nil then
		local module = self:_loadDeginData("t_sheet1")
		if not self.inited then return module end
		self._t_sheet1 = module
	end
	return self._t_sheet1
end

ConfigDataUtils._t_sheet2 = nil
---@return DataTables.CommonData.t_sheet2
function ConfigDataUtils:sheet2Cfg()
	if self._t_sheet2 == nil then
		local module = self:_loadDeginData("t_sheet2")
		if not self.inited then return module end
		self._t_sheet2 = module
	end
	return self._t_sheet2
end

ConfigDataUtils._t_sheet_relation = nil
---@return DataTables.CommonData.t_sheet_relation
function ConfigDataUtils:sheet_relationCfg()
	if self._t_sheet_relation == nil then
		local module = self:_loadDeginData("t_sheet_relation")
		if not self.inited then return module end
		self._t_sheet_relation = module
	end
	return self._t_sheet_relation
end

ConfigDataUtils._t_ship = nil
---@return DataTables.CommonData.t_ship
function ConfigDataUtils:shipCfg()
	if self._t_ship == nil then
		local module = self:_loadDeginData("t_ship")
		if not self.inited then return module end
		self._t_ship = module
	end
	return self._t_ship
end

ConfigDataUtils._t_ship_component = nil
---@return DataTables.CommonData.t_ship_component
function ConfigDataUtils:ship_componentCfg()
	if self._t_ship_component == nil then
		local module = self:_loadDeginData("t_ship_component")
		if not self.inited then return module end
		self._t_ship_component = module
	end
	return self._t_ship_component
end

ConfigDataUtils._t_ship_component_base = nil
---@return DataTables.CommonData.t_ship_component_base
function ConfigDataUtils:ship_component_baseCfg()
	if self._t_ship_component_base == nil then
		local module = self:_loadDeginData("t_ship_component_base")
		if not self.inited then return module end
		self._t_ship_component_base = module
	end
	return self._t_ship_component_base
end

ConfigDataUtils._t_ship_component_quality_color = nil
---@return DataTables.CommonData.t_ship_component_quality_color
function ConfigDataUtils:ship_component_quality_colorCfg()
	if self._t_ship_component_quality_color == nil then
		local module = self:_loadDeginData("t_ship_component_quality_color")
		if not self.inited then return module end
		self._t_ship_component_quality_color = module
	end
	return self._t_ship_component_quality_color
end

ConfigDataUtils._t_ship_event = nil
---@return DataTables.CommonData.t_ship_event
function ConfigDataUtils:ship_eventCfg()
	if self._t_ship_event == nil then
		local module = self:_loadDeginData("t_ship_event")
		if not self.inited then return module end
		self._t_ship_event = module
	end
	return self._t_ship_event
end

ConfigDataUtils._t_ship_growth_attr_group = nil
---@return DataTables.CommonData.t_ship_growth_attr_group
function ConfigDataUtils:ship_growth_attr_groupCfg()
	if self._t_ship_growth_attr_group == nil then
		local module = self:_loadDeginData("t_ship_growth_attr_group")
		if not self.inited then return module end
		self._t_ship_growth_attr_group = module
	end
	return self._t_ship_growth_attr_group
end

ConfigDataUtils._t_ship_sell = nil
---@return DataTables.CommonData.t_ship_sell
function ConfigDataUtils:ship_sellCfg()
	if self._t_ship_sell == nil then
		local module = self:_loadDeginData("t_ship_sell")
		if not self.inited then return module end
		self._t_ship_sell = module
	end
	return self._t_ship_sell
end

ConfigDataUtils._t_ship_show = nil
---@return DataTables.CommonData.t_ship_show
function ConfigDataUtils:ship_showCfg()
	if self._t_ship_show == nil then
		local module = self:_loadDeginData("t_ship_show")
		if not self.inited then return module end
		self._t_ship_show = module
	end
	return self._t_ship_show
end

ConfigDataUtils._t_ship_star_config = nil
---@return DataTables.CommonData.t_ship_star_config
function ConfigDataUtils:ship_star_configCfg()
	if self._t_ship_star_config == nil then
		local module = self:_loadDeginData("t_ship_star_config")
		if not self.inited then return module end
		self._t_ship_star_config = module
	end
	return self._t_ship_star_config
end

ConfigDataUtils._t_ship_star_level = nil
---@return DataTables.CommonData.t_ship_star_level
function ConfigDataUtils:ship_star_levelCfg()
	if self._t_ship_star_level == nil then
		local module = self:_loadDeginData("t_ship_star_level")
		if not self.inited then return module end
		self._t_ship_star_level = module
	end
	return self._t_ship_star_level
end

ConfigDataUtils._t_shop_discount = nil
---@return DataTables.CommonData.t_shop_discount
function ConfigDataUtils:shop_discountCfg()
	if self._t_shop_discount == nil then
		local module = self:_loadDeginData("t_shop_discount")
		if not self.inited then return module end
		self._t_shop_discount = module
	end
	return self._t_shop_discount
end

ConfigDataUtils._t_shop_goods = nil
---@return DataTables.CommonData.t_shop_goods
function ConfigDataUtils:shop_goodsCfg()
	if self._t_shop_goods == nil then
		local module = self:_loadDeginData("t_shop_goods")
		if not self.inited then return module end
		self._t_shop_goods = module
	end
	return self._t_shop_goods
end

ConfigDataUtils._t_shop_main = nil
---@return DataTables.CommonData.t_shop_main
function ConfigDataUtils:shop_mainCfg()
	if self._t_shop_main == nil then
		local module = self:_loadDeginData("t_shop_main")
		if not self.inited then return module end
		self._t_shop_main = module
	end
	return self._t_shop_main
end

ConfigDataUtils._t_shop_refresh = nil
---@return DataTables.CommonData.t_shop_refresh
function ConfigDataUtils:shop_refreshCfg()
	if self._t_shop_refresh == nil then
		local module = self:_loadDeginData("t_shop_refresh")
		if not self.inited then return module end
		self._t_shop_refresh = module
	end
	return self._t_shop_refresh
end

ConfigDataUtils._t_shop_trigger = nil
---@return DataTables.CommonData.t_shop_trigger
function ConfigDataUtils:shop_triggerCfg()
	if self._t_shop_trigger == nil then
		local module = self:_loadDeginData("t_shop_trigger")
		if not self.inited then return module end
		self._t_shop_trigger = module
	end
	return self._t_shop_trigger
end

ConfigDataUtils._t_show_attr_config = nil
---@return DataTables.CommonData.t_show_attr_config
function ConfigDataUtils:show_attr_configCfg()
	if self._t_show_attr_config == nil then
		local module = self:_loadDeginData("t_show_attr_config")
		if not self.inited then return module end
		self._t_show_attr_config = module
	end
	return self._t_show_attr_config
end

ConfigDataUtils._t_side_quest_base = nil
---@return DataTables.CommonData.t_side_quest_base
function ConfigDataUtils:side_quest_baseCfg()
	if self._t_side_quest_base == nil then
		local module = self:_loadDeginData("t_side_quest_base")
		if not self.inited then return module end
		self._t_side_quest_base = module
	end
	return self._t_side_quest_base
end

ConfigDataUtils._t_skill = nil
---@return DataTables.CommonData.t_skill
function ConfigDataUtils:skillCfg()
	if self._t_skill == nil then
		local module = self:_loadDeginData("t_skill")
		if not self.inited then return module end
		self._t_skill = module
	end
	return self._t_skill
end

ConfigDataUtils._t_skill_category = nil
---@return DataTables.CommonData.t_skill_category
function ConfigDataUtils:skill_categoryCfg()
	if self._t_skill_category == nil then
		local module = self:_loadDeginData("t_skill_category")
		if not self.inited then return module end
		self._t_skill_category = module
	end
	return self._t_skill_category
end

ConfigDataUtils._t_skill_growth_attr_group = nil
---@return DataTables.CommonData.t_skill_growth_attr_group
function ConfigDataUtils:skill_growth_attr_groupCfg()
	if self._t_skill_growth_attr_group == nil then
		local module = self:_loadDeginData("t_skill_growth_attr_group")
		if not self.inited then return module end
		self._t_skill_growth_attr_group = module
	end
	return self._t_skill_growth_attr_group
end

ConfigDataUtils._t_skill_growth_develop_group = nil
---@return DataTables.CommonData.t_skill_growth_develop_group
function ConfigDataUtils:skill_growth_develop_groupCfg()
	if self._t_skill_growth_develop_group == nil then
		local module = self:_loadDeginData("t_skill_growth_develop_group")
		if not self.inited then return module end
		self._t_skill_growth_develop_group = module
	end
	return self._t_skill_growth_develop_group
end

ConfigDataUtils._t_skill_show_type = nil
---@return DataTables.CommonData.t_skill_show_type
function ConfigDataUtils:skill_show_typeCfg()
	if self._t_skill_show_type == nil then
		local module = self:_loadDeginData("t_skill_show_type")
		if not self.inited then return module end
		self._t_skill_show_type = module
	end
	return self._t_skill_show_type
end

ConfigDataUtils._t_slg_bigmap_chose_list = nil
---@return DataTables.CommonData.t_slg_bigmap_chose_list
function ConfigDataUtils:slg_bigmap_chose_listCfg()
	if self._t_slg_bigmap_chose_list == nil then
		local module = self:_loadDeginData("t_slg_bigmap_chose_list")
		if not self.inited then return module end
		self._t_slg_bigmap_chose_list = module
	end
	return self._t_slg_bigmap_chose_list
end

ConfigDataUtils._t_slg_bullet_show = nil
---@return DataTables.CommonData.t_slg_bullet_show
function ConfigDataUtils:slg_bullet_showCfg()
	if self._t_slg_bullet_show == nil then
		local module = self:_loadDeginData("t_slg_bullet_show")
		if not self.inited then return module end
		self._t_slg_bullet_show = module
	end
	return self._t_slg_bullet_show
end

ConfigDataUtils._t_slg_projectile_show = nil
---@return DataTables.CommonData.t_slg_projectile_show
function ConfigDataUtils:slg_projectile_showCfg()
	if self._t_slg_projectile_show == nil then
		local module = self:_loadDeginData("t_slg_projectile_show")
		if not self.inited then return module end
		self._t_slg_projectile_show = module
	end
	return self._t_slg_projectile_show
end

ConfigDataUtils._t_slg_skill_show = nil
---@return DataTables.CommonData.t_slg_skill_show
function ConfigDataUtils:slg_skill_showCfg()
	if self._t_slg_skill_show == nil then
		local module = self:_loadDeginData("t_slg_skill_show")
		if not self.inited then return module end
		self._t_slg_skill_show = module
	end
	return self._t_slg_skill_show
end

ConfigDataUtils._t_slgdefcoefficient = nil
---@return DataTables.CommonData.t_slgdefcoefficient
function ConfigDataUtils:slgdefcoefficientCfg()
	if self._t_slgdefcoefficient == nil then
		local module = self:_loadDeginData("t_slgdefcoefficient")
		if not self.inited then return module end
		self._t_slgdefcoefficient = module
	end
	return self._t_slgdefcoefficient
end

ConfigDataUtils._t_slgobject_tips = nil
---@return DataTables.CommonData.t_slgobject_tips
function ConfigDataUtils:slgobject_tipsCfg()
	if self._t_slgobject_tips == nil then
		local module = self:_loadDeginData("t_slgobject_tips")
		if not self.inited then return module end
		self._t_slgobject_tips = module
	end
	return self._t_slgobject_tips
end

ConfigDataUtils._t_space_interaction_create = nil
---@return DataTables.CommonData.t_space_interaction_create
function ConfigDataUtils:space_interaction_createCfg()
	if self._t_space_interaction_create == nil then
		local module = self:_loadDeginData("t_space_interaction_create")
		if not self.inited then return module end
		self._t_space_interaction_create = module
	end
	return self._t_space_interaction_create
end

ConfigDataUtils._t_space_interaction_item = nil
---@return DataTables.CommonData.t_space_interaction_item
function ConfigDataUtils:space_interaction_itemCfg()
	if self._t_space_interaction_item == nil then
		local module = self:_loadDeginData("t_space_interaction_item")
		if not self.inited then return module end
		self._t_space_interaction_item = module
	end
	return self._t_space_interaction_item
end

ConfigDataUtils._t_space_interaction_quality = nil
---@return DataTables.CommonData.t_space_interaction_quality
function ConfigDataUtils:space_interaction_qualityCfg()
	if self._t_space_interaction_quality == nil then
		local module = self:_loadDeginData("t_space_interaction_quality")
		if not self.inited then return module end
		self._t_space_interaction_quality = module
	end
	return self._t_space_interaction_quality
end

ConfigDataUtils._t_space_interaction_show = nil
---@return DataTables.CommonData.t_space_interaction_show
function ConfigDataUtils:space_interaction_showCfg()
	if self._t_space_interaction_show == nil then
		local module = self:_loadDeginData("t_space_interaction_show")
		if not self.inited then return module end
		self._t_space_interaction_show = module
	end
	return self._t_space_interaction_show
end

ConfigDataUtils._t_space_interaction_trader = nil
---@return DataTables.CommonData.t_space_interaction_trader
function ConfigDataUtils:space_interaction_traderCfg()
	if self._t_space_interaction_trader == nil then
		local module = self:_loadDeginData("t_space_interaction_trader")
		if not self.inited then return module end
		self._t_space_interaction_trader = module
	end
	return self._t_space_interaction_trader
end

ConfigDataUtils._t_space_interaction_type = nil
---@return DataTables.CommonData.t_space_interaction_type
function ConfigDataUtils:space_interaction_typeCfg()
	if self._t_space_interaction_type == nil then
		local module = self:_loadDeginData("t_space_interaction_type")
		if not self.inited then return module end
		self._t_space_interaction_type = module
	end
	return self._t_space_interaction_type
end

ConfigDataUtils._t_spacestation_config = nil
---@return DataTables.CommonData.t_spacestation_config
function ConfigDataUtils:spacestation_configCfg()
	if self._t_spacestation_config == nil then
		local module = self:_loadDeginData("t_spacestation_config")
		if not self.inited then return module end
		self._t_spacestation_config = module
	end
	return self._t_spacestation_config
end

ConfigDataUtils._t_special_effects_main = nil
---@return DataTables.CommonData.t_special_effects_main
function ConfigDataUtils:special_effects_mainCfg()
	if self._t_special_effects_main == nil then
		local module = self:_loadDeginData("t_special_effects_main")
		if not self.inited then return module end
		self._t_special_effects_main = module
	end
	return self._t_special_effects_main
end

ConfigDataUtils._t_special_event = nil
---@return DataTables.CommonData.t_special_event
function ConfigDataUtils:special_eventCfg()
	if self._t_special_event == nil then
		local module = self:_loadDeginData("t_special_event")
		if not self.inited then return module end
		self._t_special_event = module
	end
	return self._t_special_event
end

ConfigDataUtils._t_specialsecret_treasure_drop = nil
---@return DataTables.CommonData.t_specialsecret_treasure_drop
function ConfigDataUtils:specialsecret_treasure_dropCfg()
	if self._t_specialsecret_treasure_drop == nil then
		local module = self:_loadDeginData("t_specialsecret_treasure_drop")
		if not self.inited then return module end
		self._t_specialsecret_treasure_drop = module
	end
	return self._t_specialsecret_treasure_drop
end

ConfigDataUtils._t_speedup_type = nil
---@return DataTables.CommonData.t_speedup_type
function ConfigDataUtils:speedup_typeCfg()
	if self._t_speedup_type == nil then
		local module = self:_loadDeginData("t_speedup_type")
		if not self.inited then return module end
		self._t_speedup_type = module
	end
	return self._t_speedup_type
end

ConfigDataUtils._t_station_config = nil
---@return DataTables.CommonData.t_station_config
function ConfigDataUtils:station_configCfg()
	if self._t_station_config == nil then
		local module = self:_loadDeginData("t_station_config")
		if not self.inited then return module end
		self._t_station_config = module
	end
	return self._t_station_config
end

ConfigDataUtils._t_station_interaction_function = nil
---@return DataTables.CommonData.t_station_interaction_function
function ConfigDataUtils:station_interaction_functionCfg()
	if self._t_station_interaction_function == nil then
		local module = self:_loadDeginData("t_station_interaction_function")
		if not self.inited then return module end
		self._t_station_interaction_function = module
	end
	return self._t_station_interaction_function
end

ConfigDataUtils._t_steam_achievement = nil
---@return DataTables.CommonData.t_steam_achievement
function ConfigDataUtils:steam_achievementCfg()
	if self._t_steam_achievement == nil then
		local module = self:_loadDeginData("t_steam_achievement")
		if not self.inited then return module end
		self._t_steam_achievement = module
	end
	return self._t_steam_achievement
end

ConfigDataUtils._t_stellar_base_config = nil
---@return DataTables.CommonData.t_stellar_base_config
function ConfigDataUtils:stellar_base_configCfg()
	if self._t_stellar_base_config == nil then
		local module = self:_loadDeginData("t_stellar_base_config")
		if not self.inited then return module end
		self._t_stellar_base_config = module
	end
	return self._t_stellar_base_config
end

ConfigDataUtils._t_stellar_constant = nil
---@return DataTables.CommonData.t_stellar_constant
function ConfigDataUtils:stellar_constantCfg()
	if self._t_stellar_constant == nil then
		local module = self:_loadDeginData("t_stellar_constant")
		if not self.inited then return module end
		self._t_stellar_constant = module
	end
	return self._t_stellar_constant
end

ConfigDataUtils._t_stellar_fog_config = nil
---@return DataTables.CommonData.t_stellar_fog_config
function ConfigDataUtils:stellar_fog_configCfg()
	if self._t_stellar_fog_config == nil then
		local module = self:_loadDeginData("t_stellar_fog_config")
		if not self.inited then return module end
		self._t_stellar_fog_config = module
	end
	return self._t_stellar_fog_config
end

ConfigDataUtils._t_story_base = nil
---@return DataTables.CommonData.t_story_base
function ConfigDataUtils:story_baseCfg()
	if self._t_story_base == nil then
		local module = self:_loadDeginData("t_story_base")
		if not self.inited then return module end
		self._t_story_base = module
	end
	return self._t_story_base
end

ConfigDataUtils._t_story_head = nil
---@return DataTables.CommonData.t_story_head
function ConfigDataUtils:story_headCfg()
	if self._t_story_head == nil then
		local module = self:_loadDeginData("t_story_head")
		if not self.inited then return module end
		self._t_story_head = module
	end
	return self._t_story_head
end

ConfigDataUtils._t_story_line_base = nil
---@return DataTables.CommonData.t_story_line_base
function ConfigDataUtils:story_line_baseCfg()
	if self._t_story_line_base == nil then
		local module = self:_loadDeginData("t_story_line_base")
		if not self.inited then return module end
		self._t_story_line_base = module
	end
	return self._t_story_line_base
end

ConfigDataUtils._t_story_new_talk = nil
---@return DataTables.CommonData.t_story_new_talk
function ConfigDataUtils:story_new_talkCfg()
	if self._t_story_new_talk == nil then
		local module = self:_loadDeginData("t_story_new_talk")
		if not self.inited then return module end
		self._t_story_new_talk = module
	end
	return self._t_story_new_talk
end

ConfigDataUtils._t_story_requirement = nil
---@return DataTables.CommonData.t_story_requirement
function ConfigDataUtils:story_requirementCfg()
	if self._t_story_requirement == nil then
		local module = self:_loadDeginData("t_story_requirement")
		if not self.inited then return module end
		self._t_story_requirement = module
	end
	return self._t_story_requirement
end

ConfigDataUtils._t_story_rewards_config = nil
---@return DataTables.CommonData.t_story_rewards_config
function ConfigDataUtils:story_rewards_configCfg()
	if self._t_story_rewards_config == nil then
		local module = self:_loadDeginData("t_story_rewards_config")
		if not self.inited then return module end
		self._t_story_rewards_config = module
	end
	return self._t_story_rewards_config
end

ConfigDataUtils._t_story_task = nil
---@return DataTables.CommonData.t_story_task
function ConfigDataUtils:story_taskCfg()
	if self._t_story_task == nil then
		local module = self:_loadDeginData("t_story_task")
		if not self.inited then return module end
		self._t_story_task = module
	end
	return self._t_story_task
end

ConfigDataUtils._t_subgoal_building = nil
---@return DataTables.CommonData.t_subgoal_building
function ConfigDataUtils:subgoal_buildingCfg()
	if self._t_subgoal_building == nil then
		local module = self:_loadDeginData("t_subgoal_building")
		if not self.inited then return module end
		self._t_subgoal_building = module
	end
	return self._t_subgoal_building
end

ConfigDataUtils._t_sublevel_base = nil
---@return DataTables.CommonData.t_sublevel_base
function ConfigDataUtils:sublevel_baseCfg()
	if self._t_sublevel_base == nil then
		local module = self:_loadDeginData("t_sublevel_base")
		if not self.inited then return module end
		self._t_sublevel_base = module
	end
	return self._t_sublevel_base
end

ConfigDataUtils._t_system_lock = nil
---@return DataTables.CommonData.t_system_lock
function ConfigDataUtils:system_lockCfg()
	if self._t_system_lock == nil then
		local module = self:_loadDeginData("t_system_lock")
		if not self.inited then return module end
		self._t_system_lock = module
	end
	return self._t_system_lock
end

ConfigDataUtils._t_system_open = nil
---@return DataTables.CommonData.t_system_open
function ConfigDataUtils:system_openCfg()
	if self._t_system_open == nil then
		local module = self:_loadDeginData("t_system_open")
		if not self.inited then return module end
		self._t_system_open = module
	end
	return self._t_system_open
end

ConfigDataUtils._t_system_open_server = nil
---@return DataTables.CommonData.t_system_open_server
function ConfigDataUtils:system_open_serverCfg()
	if self._t_system_open_server == nil then
		local module = self:_loadDeginData("t_system_open_server")
		if not self.inited then return module end
		self._t_system_open_server = module
	end
	return self._t_system_open_server
end

ConfigDataUtils._t_talent = nil
---@return DataTables.CommonData.t_talent
function ConfigDataUtils:talentCfg()
	if self._t_talent == nil then
		local module = self:_loadDeginData("t_talent")
		if not self.inited then return module end
		self._t_talent = module
	end
	return self._t_talent
end

ConfigDataUtils._t_tavern_base = nil
---@return DataTables.CommonData.t_tavern_base
function ConfigDataUtils:tavern_baseCfg()
	if self._t_tavern_base == nil then
		local module = self:_loadDeginData("t_tavern_base")
		if not self.inited then return module end
		self._t_tavern_base = module
	end
	return self._t_tavern_base
end

ConfigDataUtils._t_tavern_coin_base = nil
---@return DataTables.CommonData.t_tavern_coin_base
function ConfigDataUtils:tavern_coin_baseCfg()
	if self._t_tavern_coin_base == nil then
		local module = self:_loadDeginData("t_tavern_coin_base")
		if not self.inited then return module end
		self._t_tavern_coin_base = module
	end
	return self._t_tavern_coin_base
end

ConfigDataUtils._t_tavern_event_base = nil
---@return DataTables.CommonData.t_tavern_event_base
function ConfigDataUtils:tavern_event_baseCfg()
	if self._t_tavern_event_base == nil then
		local module = self:_loadDeginData("t_tavern_event_base")
		if not self.inited then return module end
		self._t_tavern_event_base = module
	end
	return self._t_tavern_event_base
end

ConfigDataUtils._t_team_attribute_bonus = nil
---@return DataTables.CommonData.t_team_attribute_bonus
function ConfigDataUtils:team_attribute_bonusCfg()
	if self._t_team_attribute_bonus == nil then
		local module = self:_loadDeginData("t_team_attribute_bonus")
		if not self.inited then return module end
		self._t_team_attribute_bonus = module
	end
	return self._t_team_attribute_bonus
end

ConfigDataUtils._t_termmapping = nil
---@return DataTables.CommonData.t_termmapping
function ConfigDataUtils:termmappingCfg()
	if self._t_termmapping == nil then
		local module = self:_loadDeginData("t_termmapping")
		if not self.inited then return module end
		self._t_termmapping = module
	end
	return self._t_termmapping
end

ConfigDataUtils._t_test_level_monster_spawner = nil
---@return DataTables.CommonData.t_test_level_monster_spawner
function ConfigDataUtils:test_level_monster_spawnerCfg()
	if self._t_test_level_monster_spawner == nil then
		local module = self:_loadDeginData("t_test_level_monster_spawner")
		if not self.inited then return module end
		self._t_test_level_monster_spawner = module
	end
	return self._t_test_level_monster_spawner
end

ConfigDataUtils._t_tili_consume = nil
---@return DataTables.CommonData.t_tili_consume
function ConfigDataUtils:tili_consumeCfg()
	if self._t_tili_consume == nil then
		local module = self:_loadDeginData("t_tili_consume")
		if not self.inited then return module end
		self._t_tili_consume = module
	end
	return self._t_tili_consume
end

ConfigDataUtils._t_tlevel_config = nil
---@return DataTables.CommonData.t_tlevel_config
function ConfigDataUtils:tlevel_configCfg()
	if self._t_tlevel_config == nil then
		local module = self:_loadDeginData("t_tlevel_config")
		if not self.inited then return module end
		self._t_tlevel_config = module
	end
	return self._t_tlevel_config
end

ConfigDataUtils._t_tps_br_boss = nil
---@return DataTables.CommonData.t_tps_br_boss
function ConfigDataUtils:tps_br_bossCfg()
	if self._t_tps_br_boss == nil then
		local module = self:_loadDeginData("t_tps_br_boss")
		if not self.inited then return module end
		self._t_tps_br_boss = module
	end
	return self._t_tps_br_boss
end

ConfigDataUtils._t_tps_br_buff = nil
---@return DataTables.CommonData.t_tps_br_buff
function ConfigDataUtils:tps_br_buffCfg()
	if self._t_tps_br_buff == nil then
		local module = self:_loadDeginData("t_tps_br_buff")
		if not self.inited then return module end
		self._t_tps_br_buff = module
	end
	return self._t_tps_br_buff
end

ConfigDataUtils._t_tps_br_level_group = nil
---@return DataTables.CommonData.t_tps_br_level_group
function ConfigDataUtils:tps_br_level_groupCfg()
	if self._t_tps_br_level_group == nil then
		local module = self:_loadDeginData("t_tps_br_level_group")
		if not self.inited then return module end
		self._t_tps_br_level_group = module
	end
	return self._t_tps_br_level_group
end

ConfigDataUtils._t_tps_br_main = nil
---@return DataTables.CommonData.t_tps_br_main
function ConfigDataUtils:tps_br_mainCfg()
	if self._t_tps_br_main == nil then
		local module = self:_loadDeginData("t_tps_br_main")
		if not self.inited then return module end
		self._t_tps_br_main = module
	end
	return self._t_tps_br_main
end

ConfigDataUtils._t_tps_monster_spawn = nil
---@return DataTables.CommonData.t_tps_monster_spawn
function ConfigDataUtils:tps_monster_spawnCfg()
	if self._t_tps_monster_spawn == nil then
		local module = self:_loadDeginData("t_tps_monster_spawn")
		if not self.inited then return module end
		self._t_tps_monster_spawn = module
	end
	return self._t_tps_monster_spawn
end

ConfigDataUtils._t_tps_monster_spawn_group = nil
---@return DataTables.CommonData.t_tps_monster_spawn_group
function ConfigDataUtils:tps_monster_spawn_groupCfg()
	if self._t_tps_monster_spawn_group == nil then
		local module = self:_loadDeginData("t_tps_monster_spawn_group")
		if not self.inited then return module end
		self._t_tps_monster_spawn_group = module
	end
	return self._t_tps_monster_spawn_group
end

ConfigDataUtils._t_tps_td_buff = nil
---@return DataTables.CommonData.t_tps_td_buff
function ConfigDataUtils:tps_td_buffCfg()
	if self._t_tps_td_buff == nil then
		local module = self:_loadDeginData("t_tps_td_buff")
		if not self.inited then return module end
		self._t_tps_td_buff = module
	end
	return self._t_tps_td_buff
end

ConfigDataUtils._t_tps_td_cost_group = nil
---@return DataTables.CommonData.t_tps_td_cost_group
function ConfigDataUtils:tps_td_cost_groupCfg()
	if self._t_tps_td_cost_group == nil then
		local module = self:_loadDeginData("t_tps_td_cost_group")
		if not self.inited then return module end
		self._t_tps_td_cost_group = module
	end
	return self._t_tps_td_cost_group
end

ConfigDataUtils._t_tps_td_event = nil
---@return DataTables.CommonData.t_tps_td_event
function ConfigDataUtils:tps_td_eventCfg()
	if self._t_tps_td_event == nil then
		local module = self:_loadDeginData("t_tps_td_event")
		if not self.inited then return module end
		self._t_tps_td_event = module
	end
	return self._t_tps_td_event
end

ConfigDataUtils._t_tps_td_gacha_group = nil
---@return DataTables.CommonData.t_tps_td_gacha_group
function ConfigDataUtils:tps_td_gacha_groupCfg()
	if self._t_tps_td_gacha_group == nil then
		local module = self:_loadDeginData("t_tps_td_gacha_group")
		if not self.inited then return module end
		self._t_tps_td_gacha_group = module
	end
	return self._t_tps_td_gacha_group
end

ConfigDataUtils._t_tps_td_hero = nil
---@return DataTables.CommonData.t_tps_td_hero
function ConfigDataUtils:tps_td_heroCfg()
	if self._t_tps_td_hero == nil then
		local module = self:_loadDeginData("t_tps_td_hero")
		if not self.inited then return module end
		self._t_tps_td_hero = module
	end
	return self._t_tps_td_hero
end

ConfigDataUtils._t_tps_td_level_group = nil
---@return DataTables.CommonData.t_tps_td_level_group
function ConfigDataUtils:tps_td_level_groupCfg()
	if self._t_tps_td_level_group == nil then
		local module = self:_loadDeginData("t_tps_td_level_group")
		if not self.inited then return module end
		self._t_tps_td_level_group = module
	end
	return self._t_tps_td_level_group
end

ConfigDataUtils._t_tps_wave_config = nil
---@return DataTables.CommonData.t_tps_wave_config
function ConfigDataUtils:tps_wave_configCfg()
	if self._t_tps_wave_config == nil then
		local module = self:_loadDeginData("t_tps_wave_config")
		if not self.inited then return module end
		self._t_tps_wave_config = module
	end
	return self._t_tps_wave_config
end

ConfigDataUtils._t_tpsdefcoefficient = nil
---@return DataTables.CommonData.t_tpsdefcoefficient
function ConfigDataUtils:tpsdefcoefficientCfg()
	if self._t_tpsdefcoefficient == nil then
		local module = self:_loadDeginData("t_tpsdefcoefficient")
		if not self.inited then return module end
		self._t_tpsdefcoefficient = module
	end
	return self._t_tpsdefcoefficient
end

ConfigDataUtils._t_trade_daily_plunder_limit = nil
---@return DataTables.CommonData.t_trade_daily_plunder_limit
function ConfigDataUtils:trade_daily_plunder_limitCfg()
	if self._t_trade_daily_plunder_limit == nil then
		local module = self:_loadDeginData("t_trade_daily_plunder_limit")
		if not self.inited then return module end
		self._t_trade_daily_plunder_limit = module
	end
	return self._t_trade_daily_plunder_limit
end

ConfigDataUtils._t_trade_order_company = nil
---@return DataTables.CommonData.t_trade_order_company
function ConfigDataUtils:trade_order_companyCfg()
	if self._t_trade_order_company == nil then
		local module = self:_loadDeginData("t_trade_order_company")
		if not self.inited then return module end
		self._t_trade_order_company = module
	end
	return self._t_trade_order_company
end

ConfigDataUtils._t_trade_order_level = nil
---@return DataTables.CommonData.t_trade_order_level
function ConfigDataUtils:trade_order_levelCfg()
	if self._t_trade_order_level == nil then
		local module = self:_loadDeginData("t_trade_order_level")
		if not self.inited then return module end
		self._t_trade_order_level = module
	end
	return self._t_trade_order_level
end

ConfigDataUtils._t_trade_order_quality = nil
---@return DataTables.CommonData.t_trade_order_quality
function ConfigDataUtils:trade_order_qualityCfg()
	if self._t_trade_order_quality == nil then
		local module = self:_loadDeginData("t_trade_order_quality")
		if not self.inited then return module end
		self._t_trade_order_quality = module
	end
	return self._t_trade_order_quality
end

ConfigDataUtils._t_trade_order_reward = nil
---@return DataTables.CommonData.t_trade_order_reward
function ConfigDataUtils:trade_order_rewardCfg()
	if self._t_trade_order_reward == nil then
		local module = self:_loadDeginData("t_trade_order_reward")
		if not self.inited then return module end
		self._t_trade_order_reward = module
	end
	return self._t_trade_order_reward
end

ConfigDataUtils._t_trade_reward = nil
---@return DataTables.CommonData.t_trade_reward
function ConfigDataUtils:trade_rewardCfg()
	if self._t_trade_reward == nil then
		local module = self:_loadDeginData("t_trade_reward")
		if not self.inited then return module end
		self._t_trade_reward = module
	end
	return self._t_trade_reward
end

ConfigDataUtils._t_trade_reward_drop = nil
---@return DataTables.CommonData.t_trade_reward_drop
function ConfigDataUtils:trade_reward_dropCfg()
	if self._t_trade_reward_drop == nil then
		local module = self:_loadDeginData("t_trade_reward_drop")
		if not self.inited then return module end
		self._t_trade_reward_drop = module
	end
	return self._t_trade_reward_drop
end

ConfigDataUtils._t_trade_room_level = nil
---@return DataTables.CommonData.t_trade_room_level
function ConfigDataUtils:trade_room_levelCfg()
	if self._t_trade_room_level == nil then
		local module = self:_loadDeginData("t_trade_room_level")
		if not self.inited then return module end
		self._t_trade_room_level = module
	end
	return self._t_trade_room_level
end

ConfigDataUtils._t_trader_event_quality = nil
---@return DataTables.CommonData.t_trader_event_quality
function ConfigDataUtils:trader_event_qualityCfg()
	if self._t_trader_event_quality == nil then
		local module = self:_loadDeginData("t_trader_event_quality")
		if not self.inited then return module end
		self._t_trader_event_quality = module
	end
	return self._t_trader_event_quality
end

ConfigDataUtils._t_trader_event_type = nil
---@return DataTables.CommonData.t_trader_event_type
function ConfigDataUtils:trader_event_typeCfg()
	if self._t_trader_event_type == nil then
		local module = self:_loadDeginData("t_trader_event_type")
		if not self.inited then return module end
		self._t_trader_event_type = module
	end
	return self._t_trader_event_type
end

ConfigDataUtils._t_trader_level = nil
---@return DataTables.CommonData.t_trader_level
function ConfigDataUtils:trader_levelCfg()
	if self._t_trader_level == nil then
		local module = self:_loadDeginData("t_trader_level")
		if not self.inited then return module end
		self._t_trader_level = module
	end
	return self._t_trader_level
end

ConfigDataUtils._t_trader_mission = nil
---@return DataTables.CommonData.t_trader_mission
function ConfigDataUtils:trader_missionCfg()
	if self._t_trader_mission == nil then
		local module = self:_loadDeginData("t_trader_mission")
		if not self.inited then return module end
		self._t_trader_mission = module
	end
	return self._t_trader_mission
end

ConfigDataUtils._t_trader_storyline = nil
---@return DataTables.CommonData.t_trader_storyline
function ConfigDataUtils:trader_storylineCfg()
	if self._t_trader_storyline == nil then
		local module = self:_loadDeginData("t_trader_storyline")
		if not self.inited then return module end
		self._t_trader_storyline = module
	end
	return self._t_trader_storyline
end

ConfigDataUtils._t_trader_storyline_chapter = nil
---@return DataTables.CommonData.t_trader_storyline_chapter
function ConfigDataUtils:trader_storyline_chapterCfg()
	if self._t_trader_storyline_chapter == nil then
		local module = self:_loadDeginData("t_trader_storyline_chapter")
		if not self.inited then return module end
		self._t_trader_storyline_chapter = module
	end
	return self._t_trader_storyline_chapter
end

ConfigDataUtils._t_trader_storyline_group = nil
---@return DataTables.CommonData.t_trader_storyline_group
function ConfigDataUtils:trader_storyline_groupCfg()
	if self._t_trader_storyline_group == nil then
		local module = self:_loadDeginData("t_trader_storyline_group")
		if not self.inited then return module end
		self._t_trader_storyline_group = module
	end
	return self._t_trader_storyline_group
end

ConfigDataUtils._t_transport_crew_point_building = nil
---@return DataTables.CommonData.t_transport_crew_point_building
function ConfigDataUtils:transport_crew_point_buildingCfg()
	if self._t_transport_crew_point_building == nil then
		local module = self:_loadDeginData("t_transport_crew_point_building")
		if not self.inited then return module end
		self._t_transport_crew_point_building = module
	end
	return self._t_transport_crew_point_building
end

ConfigDataUtils._t_trde_order_npc = nil
---@return DataTables.CommonData.t_trde_order_npc
function ConfigDataUtils:trde_order_npcCfg()
	if self._t_trde_order_npc == nil then
		local module = self:_loadDeginData("t_trde_order_npc")
		if not self.inited then return module end
		self._t_trde_order_npc = module
	end
	return self._t_trde_order_npc
end

ConfigDataUtils._t_treasure_box = nil
---@return DataTables.CommonData.t_treasure_box
function ConfigDataUtils:treasure_boxCfg()
	if self._t_treasure_box == nil then
		local module = self:_loadDeginData("t_treasure_box")
		if not self.inited then return module end
		self._t_treasure_box = module
	end
	return self._t_treasure_box
end

ConfigDataUtils._t_treasure_drop_config = nil
---@return DataTables.CommonData.t_treasure_drop_config
function ConfigDataUtils:treasure_drop_configCfg()
	if self._t_treasure_drop_config == nil then
		local module = self:_loadDeginData("t_treasure_drop_config")
		if not self.inited then return module end
		self._t_treasure_drop_config = module
	end
	return self._t_treasure_drop_config
end

ConfigDataUtils._t_treasure_map_main = nil
---@return DataTables.CommonData.t_treasure_map_main
function ConfigDataUtils:treasure_map_mainCfg()
	if self._t_treasure_map_main == nil then
		local module = self:_loadDeginData("t_treasure_map_main")
		if not self.inited then return module end
		self._t_treasure_map_main = module
	end
	return self._t_treasure_map_main
end

ConfigDataUtils._t_treasure_map_main_group = nil
---@return DataTables.CommonData.t_treasure_map_main_group
function ConfigDataUtils:treasure_map_main_groupCfg()
	if self._t_treasure_map_main_group == nil then
		local module = self:_loadDeginData("t_treasure_map_main_group")
		if not self.inited then return module end
		self._t_treasure_map_main_group = module
	end
	return self._t_treasure_map_main_group
end

ConfigDataUtils._t_treasure_map_story = nil
---@return DataTables.CommonData.t_treasure_map_story
function ConfigDataUtils:treasure_map_storyCfg()
	if self._t_treasure_map_story == nil then
		local module = self:_loadDeginData("t_treasure_map_story")
		if not self.inited then return module end
		self._t_treasure_map_story = module
	end
	return self._t_treasure_map_story
end

ConfigDataUtils._t_type_activity = nil
---@return DataTables.CommonData.t_type_activity
function ConfigDataUtils:type_activityCfg()
	if self._t_type_activity == nil then
		local module = self:_loadDeginData("t_type_activity")
		if not self.inited then return module end
		self._t_type_activity = module
	end
	return self._t_type_activity
end

ConfigDataUtils._t_type_interactive = nil
---@return DataTables.CommonData.t_type_interactive
function ConfigDataUtils:type_interactiveCfg()
	if self._t_type_interactive == nil then
		local module = self:_loadDeginData("t_type_interactive")
		if not self.inited then return module end
		self._t_type_interactive = module
	end
	return self._t_type_interactive
end

ConfigDataUtils._t_type_monster = nil
---@return DataTables.CommonData.t_type_monster
function ConfigDataUtils:type_monsterCfg()
	if self._t_type_monster == nil then
		local module = self:_loadDeginData("t_type_monster")
		if not self.inited then return module end
		self._t_type_monster = module
	end
	return self._t_type_monster
end

ConfigDataUtils._t_ui_face = nil
---@return DataTables.CommonData.t_ui_face
function ConfigDataUtils:ui_faceCfg()
	if self._t_ui_face == nil then
		local module = self:_loadDeginData("t_ui_face")
		if not self.inited then return module end
		self._t_ui_face = module
	end
	return self._t_ui_face
end

ConfigDataUtils._t_ui_page_info = nil
---@return DataTables.CommonData.t_ui_page_info
function ConfigDataUtils:ui_page_infoCfg()
	if self._t_ui_page_info == nil then
		local module = self:_loadDeginData("t_ui_page_info")
		if not self.inited then return module end
		self._t_ui_page_info = module
	end
	return self._t_ui_page_info
end

ConfigDataUtils._t_upgrade_box = nil
---@return DataTables.CommonData.t_upgrade_box
function ConfigDataUtils:upgrade_boxCfg()
	if self._t_upgrade_box == nil then
		local module = self:_loadDeginData("t_upgrade_box")
		if not self.inited then return module end
		self._t_upgrade_box = module
	end
	return self._t_upgrade_box
end

ConfigDataUtils._t_vip_privilege = nil
---@return DataTables.CommonData.t_vip_privilege
function ConfigDataUtils:vip_privilegeCfg()
	if self._t_vip_privilege == nil then
		local module = self:_loadDeginData("t_vip_privilege")
		if not self.inited then return module end
		self._t_vip_privilege = module
	end
	return self._t_vip_privilege
end

ConfigDataUtils._t_warship = nil
---@return DataTables.CommonData.t_warship
function ConfigDataUtils:warshipCfg()
	if self._t_warship == nil then
		local module = self:_loadDeginData("t_warship")
		if not self.inited then return module end
		self._t_warship = module
	end
	return self._t_warship
end

ConfigDataUtils._t_weapon_base = nil
---@return DataTables.CommonData.t_weapon_base
function ConfigDataUtils:weapon_baseCfg()
	if self._t_weapon_base == nil then
		local module = self:_loadDeginData("t_weapon_base")
		if not self.inited then return module end
		self._t_weapon_base = module
	end
	return self._t_weapon_base
end

ConfigDataUtils._t_weapon_growth_attr_group = nil
---@return DataTables.CommonData.t_weapon_growth_attr_group
function ConfigDataUtils:weapon_growth_attr_groupCfg()
	if self._t_weapon_growth_attr_group == nil then
		local module = self:_loadDeginData("t_weapon_growth_attr_group")
		if not self.inited then return module end
		self._t_weapon_growth_attr_group = module
	end
	return self._t_weapon_growth_attr_group
end

ConfigDataUtils._t_weapon_quality = nil
---@return DataTables.CommonData.t_weapon_quality
function ConfigDataUtils:weapon_qualityCfg()
	if self._t_weapon_quality == nil then
		local module = self:_loadDeginData("t_weapon_quality")
		if not self.inited then return module end
		self._t_weapon_quality = module
	end
	return self._t_weapon_quality
end

ConfigDataUtils._t_weapon_type_config = nil
---@return DataTables.CommonData.t_weapon_type_config
function ConfigDataUtils:weapon_type_configCfg()
	if self._t_weapon_type_config == nil then
		local module = self:_loadDeginData("t_weapon_type_config")
		if not self.inited then return module end
		self._t_weapon_type_config = module
	end
	return self._t_weapon_type_config
end

ConfigDataUtils._t_weaponattrlimit = nil
---@return DataTables.CommonData.t_weaponattrlimit
function ConfigDataUtils:weaponattrlimitCfg()
	if self._t_weaponattrlimit == nil then
		local module = self:_loadDeginData("t_weaponattrlimit")
		if not self.inited then return module end
		self._t_weaponattrlimit = module
	end
	return self._t_weaponattrlimit
end

ConfigDataUtils._t_weekly_task = nil
---@return DataTables.CommonData.t_weekly_task
function ConfigDataUtils:weekly_taskCfg()
	if self._t_weekly_task == nil then
		local module = self:_loadDeginData("t_weekly_task")
		if not self.inited then return module end
		self._t_weekly_task = module
	end
	return self._t_weekly_task
end

ConfigDataUtils._t_welfare_center = nil
---@return DataTables.CommonData.t_welfare_center
function ConfigDataUtils:welfare_centerCfg()
	if self._t_welfare_center == nil then
		local module = self:_loadDeginData("t_welfare_center")
		if not self.inited then return module end
		self._t_welfare_center = module
	end
	return self._t_welfare_center
end

ConfigDataUtils._t_welfare_config = nil
---@return DataTables.CommonData.t_welfare_config
function ConfigDataUtils:welfare_configCfg()
	if self._t_welfare_config == nil then
		local module = self:_loadDeginData("t_welfare_config")
		if not self.inited then return module end
		self._t_welfare_config = module
	end
	return self._t_welfare_config
end

ConfigDataUtils._t_whole_buff = nil
---@return DataTables.CommonData.t_whole_buff
function ConfigDataUtils:whole_buffCfg()
	if self._t_whole_buff == nil then
		local module = self:_loadDeginData("t_whole_buff")
		if not self.inited then return module end
		self._t_whole_buff = module
	end
	return self._t_whole_buff
end

ConfigDataUtils._t_windows_guide_login = nil
---@return DataTables.CommonData.t_windows_guide_login
function ConfigDataUtils:windows_guide_loginCfg()
	if self._t_windows_guide_login == nil then
		local module = self:_loadDeginData("t_windows_guide_login")
		if not self.inited then return module end
		self._t_windows_guide_login = module
	end
	return self._t_windows_guide_login
end

ConfigDataUtils._t_windows_guide_main = nil
---@return DataTables.CommonData.t_windows_guide_main
function ConfigDataUtils:windows_guide_mainCfg()
	if self._t_windows_guide_main == nil then
		local module = self:_loadDeginData("t_windows_guide_main")
		if not self.inited then return module end
		self._t_windows_guide_main = module
	end
	return self._t_windows_guide_main
end

ConfigDataUtils._t_worldboss_chest = nil
---@return DataTables.CommonData.t_worldboss_chest
function ConfigDataUtils:worldboss_chestCfg()
	if self._t_worldboss_chest == nil then
		local module = self:_loadDeginData("t_worldboss_chest")
		if not self.inited then return module end
		self._t_worldboss_chest = module
	end
	return self._t_worldboss_chest
end

ConfigDataUtils._t_worldboss_main = nil
---@return DataTables.CommonData.t_worldboss_main
function ConfigDataUtils:worldboss_mainCfg()
	if self._t_worldboss_main == nil then
		local module = self:_loadDeginData("t_worldboss_main")
		if not self.inited then return module end
		self._t_worldboss_main = module
	end
	return self._t_worldboss_main
end

ConfigDataUtils._t_worldboss_progess_reward = nil
---@return DataTables.CommonData.t_worldboss_progess_reward
function ConfigDataUtils:worldboss_progess_rewardCfg()
	if self._t_worldboss_progess_reward == nil then
		local module = self:_loadDeginData("t_worldboss_progess_reward")
		if not self.inited then return module end
		self._t_worldboss_progess_reward = module
	end
	return self._t_worldboss_progess_reward
end

ConfigDataUtils._t_worldboss_refresh = nil
---@return DataTables.CommonData.t_worldboss_refresh
function ConfigDataUtils:worldboss_refreshCfg()
	if self._t_worldboss_refresh == nil then
		local module = self:_loadDeginData("t_worldboss_refresh")
		if not self.inited then return module end
		self._t_worldboss_refresh = module
	end
	return self._t_worldboss_refresh
end


function ConfigDataUtils:getDesignRow(designName, id)
    if not self[designName .. "Cfg"] then
        return nil
    end

    local designData = self[designName .. "Cfg"](self)
    if not designData then
        return nil
    end
    return id and designData[id]
end

---按指定赛季读取整张策划表，不修改当前赛季或通用访问器缓存。
---@param designName string 支持不带或带 t_ 前缀的表名
---@param version string 赛季目录名，例如 base、s2
---@return table|nil
function ConfigDataUtils:getDesignTableByVersion(designName, version)
    if type(designName) ~= "string" or designName == "" or version == nil or version == "" then
        return nil
    end

    local tableName = string.sub(designName, 1, 2) == "t_" and designName or "t_" .. designName
    local tableFunc = string.sub(tableName, 3) .. "Cfg"
    if type(self[tableFunc]) ~= "function" then
        return nil
    end
    return self:_loadDeginData(tableName, version)
end

---根据赛季 ID 获取对应的策划表版本目录
---@param seasonId int 赛季 ID
---@return string version 策划表版本目录
function ConfigDataUtils:getDesignVersionBySeasonId(seasonId)
    return seasonId <= 1 and "base" or string.format("s%d", seasonId)
end

function ConfigDataUtils:checkDesignStatus(tbl, id)
    local cfg = tbl[id]
    if not cfg then return 
        false 
    end
    if type(cfg.Status) ~= "number" then 
        return true
    end

    return cfg.Status <= 0
end

function ConfigDataUtils:_normalizeVersion(version, defaultVersion)
    if version == nil or version == "" then
        return defaultVersion
    end
    return tostring(version)
end

function ConfigDataUtils:_normalizeTableDataVersion(dataVersion)
    local nextDataVersion = self:_normalizeVersion(dataVersion, self:getDefaultTableDataVersion())
    if nextDataVersion == "1" then
        return self:getDefaultTableDataVersion()
    end
    return nextDataVersion
end

function ConfigDataUtils:_isTableDataVersion(version)
    return version == "global" or version == "cn"
end

function ConfigDataUtils:_clearCache()
    for key, _ in pairs(self) do
        if type(key) == "string" and string.sub(key, 1, 3) == "_t_" then
            self[key] = nil
        end
    end
end

function ConfigDataUtils:setVersion(version) 
    local nextVersion = self:_normalizeVersion(version, self:getDefaultVersion())
    if self:_isTableDataVersion(nextVersion) then
        self:setTableDataVersion(nextVersion)
        nextVersion = self:getDefaultVersion()
    end
    if self._version ~= nextVersion then
        self:_clearCache()
    end
    self._version = nextVersion
    self.inited = true
end

function ConfigDataUtils:getVersion()
    return self._version or self:getDefaultVersion()
end

function ConfigDataUtils:getDefaultVersion() 
    return 'base'
end

function ConfigDataUtils:setDataVersion(dataVersion)
    self._dataVersion = tonumber(dataVersion) or self:getDefaultDataVersion()
end

function ConfigDataUtils:getDataVersion()
    return self._dataVersion or self:getDefaultDataVersion()
end

function ConfigDataUtils:getDefaultDataVersion()
    return 1
end

function ConfigDataUtils:setTableDataVersion(dataVersion)
    local nextDataVersion = self:_normalizeTableDataVersion(dataVersion)
    if self._tableDataVersion ~= nextDataVersion then
        self:_clearCache()
    end
    self._tableDataVersion = nextDataVersion
end

function ConfigDataUtils:getTableDataVersion()
    return self._tableDataVersion or self:getDefaultTableDataVersion()
end

function ConfigDataUtils:getDefaultTableDataVersion()
    return 'global'
end

local ignoreSeasonTab = {
    t_constant = true,
    t_enum_type = true,
    t_message = true,
    t_redpoint = true,
    t_marquee = true,
}

function ConfigDataUtils:_loadDeginData(tableName, version)
    -- 显式赛季只影响本次加载，避免改变全局赛季并清理已有访问器缓存。
    local tableVersion = self:_normalizeVersion(version, self:getVersion())
    local module = nil
    if BddDataMgr:GetInstance():enable() then
        local modulePath = string.format("%s.%s", tableVersion, tableName)
        if version == nil and not self._version and not ignoreSeasonTab[tableName] then
            local msg = string.format("未初始化赛季就开始读取配置 %s\n%s ", tableName, debug.traceback())
            if CS and CS.UnityEngine and CS.UnityEngine.Debug then
                CS.UnityEngine.Debug.LogError(msg)
            else
                print(msg)
            end
        end
        module = BddDataMgr:GetInstance():getTable(modulePath, tableName)
        if not module then
            local defalutPath = string.format("%s.%s", self:getDefaultVersion(), tableName)
            module = BddDataMgr:GetInstance():getTable(defalutPath, tableName)
        end
    else
        local lfs = require("lfs")
        local path = string.format("%s/%s", lfs.currentdir(), CSAdapter.GetConfigDataPath())
        local tableDataVersion = self:getTableDataVersion()
        local file = string.format("%s/%s/%s/%s.lua", path, tableDataVersion, tableVersion, tableName)
        local modulePath = nil
        if lfs.attributes(file) then
            modulePath = string.format("%s.%s.%s", tableDataVersion, tableVersion, tableName)
        else
            modulePath = string.format("%s.%s.%s", tableDataVersion, self:getDefaultVersion(), tableName)
        end
        modulePath = string.format("DataTables.CommonData.%s", modulePath)
        module = require(modulePath)
    end
    return module
end

return ConfigDataUtils
