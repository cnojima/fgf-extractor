$GHIDRA_HOME  = "c:\Users\cnoji\dev\fgf-watcher\keyrecovery\tools\ghidra_12.1.3_PUBLIC"
$PROJECT_DIR  = "c:\Users\cnoji\dev\fgf-watcher\keyrecovery\ghidra_project"
$PROJECT_NAME = "xlua_analysis"
$SCRIPT       = "c:\Users\cnoji\dev\fgf-watcher\keyrecovery\ghidra_scripts\DecompileBddFmt.java"
$OUTPUT_FILE  = "c:\Users\cnoji\dev\fgf-watcher\keyrecovery\ghidra_parser.log"
& "$GHIDRA_HOME\support\analyzeHeadless.bat" `
    $PROJECT_DIR $PROJECT_NAME `
    -process xlua.dll -noanalysis `
    -scriptPath "c:\Users\cnoji\dev\fgf-watcher\keyrecovery\ghidra_scripts" `
    -postScript DecompileBddFmt.java 2>&1 | Tee-Object -FilePath $OUTPUT_FILE
Write-Host "=== saved to $OUTPUT_FILE ==="
