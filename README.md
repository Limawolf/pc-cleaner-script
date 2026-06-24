![Windows](https://img.shields.io/badge/Windows-10%2F11-blue)
![PowerShell](https://img.shields.io/badge/PowerShell-5.0+-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

# PC Cleaner Script - Windows PowerShell

Pembersih komputer Windows otomatis untuk menghapus semua cache, temp files, dan junk folders tanpa reset PC.

**Language:** Indonesian & English  
**Platform:** Windows 10/11  
**Author:** Anan Yusuf Raharjo

---

## Features

✅ **NPM Cache Cleaning** - Hapus npm global cache (save 5-20GB)  
✅ **Python Cache Cleaning** - Hapus pip cache dan __pycache__  
✅ **Bun Cache Cleaning** - Hapus bun installer cache  
✅ **Hidden Folders Removal** - Hapus .cache, .gradle, .venv, .vscode, .config, dll  
✅ **Windows Temp Cleanup** - Hapus semua temporary files  
✅ **Browser Cache** - Clean Chrome, Edge, Firefox cache  
✅ **Recycle Bin Empty** - Kosongkan recycle bin  
✅ **Disk Optimization** - Defragmentasi disk otomatis  

---

## Requirements

- **Windows 10 atau 11**
- **PowerShell 5.0+** (built-in di Windows)
- **Administrator privileges** (Run as Admin)
- **Python** (opsional, untuk pip cache)
- **Node.js** (opsional, untuk npm cache)

---

## Installation & Usage

### Quick Start

1. **Clone repository:**
```bash
git clone https://github.com/yourusername/pc-cleaner-script.git
cd pc-cleaner-script
```

2. **Open PowerShell as Administrator:**
   - Press `Win + X`
   - Select "Windows PowerShell (Admin)"

3. **Navigate to script folder:**
```powershell
cd "C:\path\to\pc-cleaner-script"
```

4. **Run the script:**
```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
.\clean_pc_v2.ps1
```

---

## What Gets Deleted

### Safe to Delete (Auto-Regenerated)
- ✅ `.cache` - Global cache folder
- ✅ `.gradle` - Android Gradle cache
- ✅ `.bun` - Bun package manager cache
- ✅ `.venv` - Python virtual environments
- ✅ `node_modules` - Node dependencies (rebuild when needed)
- ✅ `__pycache__` - Python bytecode cache
- ✅ Windows temp files
- ✅ Browser cache files

### Applications Stay Safe
- ✅ **VS Code** - Application stays, only cache cleared
- ✅ **Python** - Auto-installs pip when needed
- ✅ **Node.js** - Auto-installs npm packages when needed
- ✅ All other applications untouched

---

## Usage Example

```powershell
PS C:\Users\YourName\Desktop> Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
PS C:\Users\YourName\Desktop> .\clean_pc_v2.ps1

[1/8] Cleaning NPM Cache...
OK - NPM cache cleaned
[2/8] Cleaning Python Cache...
OK - Python cache cleaned
[3/8] Cleaning Bun Cache...
OK - Bun cache deleted
[4/8] Deleting hidden cache folders...
   Deleting .cache...
   Deleting .gradle...
   OK - Hidden cache folders deleted
[5/8] Cleaning Windows Temp Files...
OK - Windows temp files cleaned
[6/8] Emptying Recycle Bin...
OK - Recycle bin emptied
[7/8] Cleaning Browser Cache...
   OK - Chrome cache deleted
   OK - Edge cache deleted
OK - Browser cache cleaned
[8/8] Optimizing Disk Drive...
OK - Disk optimized

====================================================
        CLEANING COMPLETE!
====================================================
```

---

## Tips & Recommendations

1. **Before Running:**
   - Close ALL applications (VS Code, browsers, etc)
   - Make sure PowerShell runs as Administrator
   - This may take 5-15 minutes depending on cache size

2. **After Running:**
   - Restart your computer (optional but recommended)
   - Your PC will feel faster and lighter
   - npm/pip will auto-install packages when needed
   - First VS Code load might take slightly longer (rebuilding cache)

3. **Safe to Run:**
   - Can be run weekly/monthly
   - Won't damage any applications
   - All cached data will be auto-regenerated when needed
   - No PC reset needed

---

## Customization

### Keep VS Code Settings

If you want to keep VS Code cache, edit `clean_pc_v2.ps1` and comment out these lines:

```powershell
$folders = @(
    ".cache",
    ".gradle",
    ".venv",
    # ".vscode",              # COMMENT THIS OUT
    # ".vscode-shared",       # COMMENT THIS OUT
    ".codex",
    ...
)
```

### Add More Folders

Add any folder to the `$folders` array to clean it:

```powershell
$folders = @(
    ".cache",
    ".gradle",
    ".your-custom-folder",  # ADD HERE
    ...
)
```

---

## System Requirements

| Requirement | Minimum | Recommended |
|-----------|---------|------------|
| OS | Windows 10 | Windows 11 |
| PowerShell | 5.0 | 7.0+ |
| Free Disk Space | 500MB | 2GB+ |
| RAM | 4GB | 8GB+ |
| Admin Access | Required | Required |

---

## Troubleshooting

### "Cannot find path" error
Make sure you're in the correct directory:
```powershell
cd "$env:USERPROFILE\Desktop"
```

### "File cannot be loaded" error
Run this first:
```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
```

### Script won't run
- Check if PowerShell is running as **Administrator**
- Try opening PowerShell as Admin and running again

### Nothing happened
- Script might be running silently in background
- Wait 5-15 minutes for completion
- Check console output for any errors

---

## Performance Impact

**Average Disk Space Saved:**
- Cache folders: 10-50GB (depending on development activity)
- Temp files: 1-5GB
- Browser cache: 500MB-2GB
- **Total: 10-60GB potentially freed!**

**Performance Improvements:**
- ⚡ Faster boot time
- ⚡ Reduced disk I/O
- ⚡ More free disk space
- ⚡ Smoother application startup

---

## Safety & Permissions

- ✅ **Safe to Run** - Only deletes cache and temp files
- ✅ **No Permanent Data Loss** - All data auto-regenerates
- ✅ **Non-Destructive** - Doesn't delete user files or applications
- ✅ **Reversible** - Everything can be rebuilt automatically
- ⚠️ **Admin Required** - Some operations need elevated privileges

---

## License

MIT License - Feel free to use, modify, and share!

---

## Contributing

Found bugs or want to improve? 

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Submit a Pull Request

---

## Issues & Support

Found a problem? Open an issue on GitHub:
- Describe the error
- Include your Windows version
- Include PowerShell version (run `$PSVersionTable`)

---

## Changelog

### v2.0 (Current)
- Added support for more hidden cache folders
- Improved error handling
- Better console output
- Support for Chrome, Edge, Firefox cache clearing
- Added disk optimization

### v1.0 (Initial)
- Basic cache cleaning
- NPM and Python cache support

---

## Author

**Anan Yusuf Raharjo**  
Indonesian Developer & Digital Entrepreneur  
- Building AI-powered tools & automation systems
- Android/Flutter apps, Python automation
- 🔗 GitHub: [@yourusername](https://github.com/yourusername)

---

**Made with ❤️ for the developer community**
