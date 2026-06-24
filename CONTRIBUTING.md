# Contributing to PC Cleaner Script

Terima kasih sudah ingin berkontribusi! 🎉

## Cara Berkontribusi

### 1. Report Bugs
Jika menemukan bug, buka issue dengan detail:
- Windows version
- PowerShell version (`$PSVersionTable`)
- Error message lengkap
- Langkah untuk reproduce

### 2. Suggest Features
Punya ide improvement? Buka issue baru dengan label `enhancement`:
- Deskripsi feature
- Use case
- Contoh implementasi (kalau ada)

### 3. Submit Code
1. Fork repository
2. Create feature branch: `git checkout -b feature/nama-fitur`
3. Make changes
4. Test thoroughly
5. Commit: `git commit -m "Add: deskripsi"`
6. Push: `git push origin feature/nama-fitur`
7. Open Pull Request

## Code Style

- Use PowerShell best practices
- Add comments untuk complex logic
- Test script sebelum submit
- Update README kalau ada fitur baru

## Testing Checklist

Sebelum submit PR, pastikan:
- [ ] Script runs without errors
- [ ] No applications are deleted
- [ ] Cache folders are removed
- [ ] Output messages clear
- [ ] Works on Windows 10 & 11
- [ ] Run as Admin requirement clear

## Commit Messages

Format: `[TYPE]: Description`

Types:
- `Add:` - Feature baru
- `Fix:` - Bug fix
- `Improve:` - Improvement existing code
- `Docs:` - Documentation changes
- `Refactor:` - Code refactoring

Contoh:
```
Add: Support for cleaning .gradle-jvm folder
Fix: Encoding error pada special characters
Improve: Faster disk optimization
```

## Questions?

Buka discussion atau issue dengan label `question`

Keep it respectful dan constructive! 💪
