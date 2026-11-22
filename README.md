# Vesper Icons

A firefly-inspired icon theme following the design language of Noctalia and Luciole. Built for Linux Wayland/niri, distributed via GitHub.

> **Status:** Phase 3 complete — ready for apply & verify.

## Roadmap

| Phase | Status | What |
|-------|--------|------|
| 1. Foundation | ✅ | Private repo, file tree, `index.theme` |
| 2. Design & source | ✅ | Palette defined, 48 icons created by Claude, mapped to `.desktop` names |
| 3. Build | ✅ | Icons organized into theme, `install.sh` written |
| 4. Apply & verify | ⬜ | Run installer, apply via `gsettings`, check in niri |
| 5. Publish | ⬜ | Commit, push, make public, add release archive |

## Theme stats

- **40 app icons** in `Vesper/apps/scalable/`
- **9 place/folder icons** in `Vesper/places/scalable/`
- All SVGs validated, 512×512 viewBox
- Inherits from `hicolor` for anything not covered

## Installation

```bash
./install.sh
gsettings set org.gnome.desktop.interface icon-theme "Vesper"
```

Or use `nwg-look` to select **Vesper**.

## Structure

```
Vesper-Icons/
├── Vesper/                   # The theme → install to ~/.local/share/icons/
│   ├── index.theme
│   ├── apps/scalable/        # 40 app icons
│   └── places/scalable/      # 9 folder/place icons
├── src/                      # Reference SVGs
├── install.sh                # One-command installer
├── README.md, LICENSE, .gitignore
```
