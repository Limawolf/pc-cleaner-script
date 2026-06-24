# PEMBERSIH KOMPUTER - ANAN YUSUF RAHARJO
# Run as Administrator!

Write-Host "====================================================" -ForegroundColor Cyan
Write-Host "        PEMBERSIH KOMPUTER PENUH" -ForegroundColor Cyan
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host ""

# Cek Administrator
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    Write-Host "ERROR: Harus run as Administrator!" -ForegroundColor Red
    exit
}

Write-Host "OK - Running as Administrator" -ForegroundColor Green
Write-Host ""

$userPath = "$env:USERPROFILE"

# 1. NPM Cache
Write-Host "[1/8] Cleaning NPM Cache..." -ForegroundColor Yellow
npm cache clean --force 2>$null
Write-Host "OK - NPM cache cleaned" -ForegroundColor Green

# 2. Python Cache
Write-Host "[2/8] Cleaning Python Cache..." -ForegroundColor Yellow
python -m pip cache purge 2>$null
Write-Host "OK - Python cache cleaned" -ForegroundColor Green

# 3. Bun Cache
Write-Host "[3/8] Cleaning Bun Cache..." -ForegroundColor Yellow
if (Test-Path "$userPath\.bun\install\cache") {
    Remove-Item "$userPath\.bun\install\cache" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "OK - Bun cache deleted" -ForegroundColor Green
}

# 4. Hidden Cache Folders
Write-Host "[4/8] Deleting hidden cache folders..." -ForegroundColor Yellow

$folders = @(
    ".cache",
    ".gradle",
    ".venv",
    ".vscode",
    ".vscode-shared",
    ".codex",
    ".copilot",
    ".config",
    ".local",
    ".conan",
    ".gem",
    ".npm",
    ".claude",
    ".gemini",
    ".ollama",
    ".opencode",
    ".android",
    ".bun",
    ".blackboxcli",
    ".blackbox-cli-v2"
)

foreach ($folder in $folders) {
    $path = "$userPath\$folder"
    if (Test-Path $path) {
        Write-Host "   Deleting $folder..." -ForegroundColor Gray
        Remove-Item $path -Recurse -Force -ErrorAction SilentlyContinue
    }
}
Write-Host "OK - Hidden cache folders deleted" -ForegroundColor Green

# 5. Windows Temp
Write-Host "[5/8] Cleaning Windows Temp Files..." -ForegroundColor Yellow

$tempPaths = @(
    "$env:TEMP",
    "C:\Windows\Temp",
    "$userPath\AppData\Local\Temp"
)

foreach ($tempPath in $tempPaths) {
    if (Test-Path $tempPath) {
        Get-ChildItem -Path $tempPath -Recurse -ErrorAction SilentlyContinue | 
            Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
    }
}
Write-Host "OK - Windows temp files cleaned" -ForegroundColor Green

# 6. Recycle Bin
Write-Host "[6/8] Emptying Recycle Bin..." -ForegroundColor Yellow
Clear-RecycleBin -Force -ErrorAction SilentlyContinue
Write-Host "OK - Recycle bin emptied" -ForegroundColor Green

# 7. Browser Cache
Write-Host "[7/8] Cleaning Browser Cache..." -ForegroundColor Yellow

$chromePath = "$userPath\AppData\Local\Google\Chrome\User Data\Default\Cache"
if (Test-Path $chromePath) {
    Remove-Item "$chromePath\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "   OK - Chrome cache deleted" -ForegroundColor Green
}

$edgePath = "$userPath\AppData\Local\Microsoft\Edge\User Data\Default\Cache"
if (Test-Path $edgePath) {
    Remove-Item "$edgePath\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "   OK - Edge cache deleted" -ForegroundColor Green
}

$firefoxPath = "$userPath\AppData\Local\Mozilla\Firefox\Profiles\*\cache2"
Get-Item $firefoxPath -ErrorAction SilentlyContinue | 
    ForEach-Object { Remove-Item "$_\*" -Recurse -Force -ErrorAction SilentlyContinue }

Write-Host "OK - Browser cache cleaned" -ForegroundColor Green

# 8. Disk Optimization
Write-Host "[8/8] Optimizing Disk Drive..." -ForegroundColor Yellow
Optimize-Volume -DriveLetter C -Defrag -ErrorAction SilentlyContinue
Write-Host "OK - Disk optimized" -ForegroundColor Green

Write-Host ""
Write-Host "====================================================" -ForegroundColor Green
Write-Host "        CLEANING COMPLETE!" -ForegroundColor Green
Write-Host "====================================================" -ForegroundColor Green
Write-Host ""
Write-Host "Summary:" -ForegroundColor Cyan
Write-Host "  - NPM global cache cleaned"
Write-Host "  - Python pip cache cleaned"
Write-Host "  - Bun cache cleaned"
Write-Host "  - Hidden cache folders removed"
Write-Host "  - Windows temp files cleaned"
Write-Host "  - Recycle bin emptied"
Write-Host "  - Browser cache cleaned"
Write-Host "  - Disk optimized"
Write-Host ""
Write-Host "Tips:" -ForegroundColor Yellow
Write-Host "  - Restart your computer for best results"
Write-Host "  - npm/python will auto-install when needed"
Write-Host "  - Close all applications before running cleanup"
Write-Host ""
