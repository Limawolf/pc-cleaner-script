# Quick Start Guide

## 30 Detik Setup

### 1. Clone Repository
```bash
git clone https://github.com/yourusername/pc-cleaner-script.git
cd pc-cleaner-script
```

### 2. Open PowerShell as Admin
- Press `Win + X`
- Select "Windows PowerShell (Admin)"
- Navigate to folder: `cd "C:\path\to\pc-cleaner-script"`

### 3. Run Script
```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
.\clean_pc_v2.ps1
```

### 4. Wait & Restart
- Script runs automatically (5-15 minutes)
- Restart computer when done
- Enjoy your clean PC! 🎉

---

## What Happens?

```
[1/8] NPM Cache → Cleaned
[2/8] Python Cache → Cleaned
[3/8] Hidden Folders → Deleted
[4/8] Windows Temp → Cleaned
[5/8] Recycle Bin → Emptied
[6/8] Browser Cache → Cleaned
[7/8] Disk → Optimized

Result: 10-60GB freed! ✨
```

---

## Troubleshooting

| Problem | Solution |
|---------|----------|
| "Path not found" | Run from correct folder |
| "File cannot be loaded" | Run PowerShell as Admin |
| "Access denied" | Check Administrator privileges |
| Script hangs | Wait 5-15 minutes, don't interrupt |

---

## Next Steps

- Read full [README.md](README.md)
- Customize script in [Configuration](README.md#customization)
- Report issues on GitHub
- Share with friends!

Happy cleaning! 🧹
