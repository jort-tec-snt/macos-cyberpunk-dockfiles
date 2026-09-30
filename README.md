# macOS Cyberpunk Dotfiles

A minimal cyberpunk-inspired macOS setup focused on aesthetics, usability, and native system performance.

Built and tested on **macOS Tahoe 26** running on Apple Silicon.

The goal of this configuration is not to replace macOS behavior, but to enhance its appearance while keeping the system lightweight, stable, and reversible.

---

## Preview

> Screenshot coming soon.

<!--
Add your screenshot to:
assets/setup.png

Then replace the line above with:

![macOS Cyberpunk Setup](assets/setup.png)
-->

---

## Environment

- macOS Tahoe 26
- Apple Silicon
- Zsh
- Oh My Zsh
- Powerlevel10k
- iTerm2
- SketchyBar
- Fastfetch
- Homebrew

---

## Features

### SketchyBar

Minimal custom status bar displaying:

- Active application
- CPU usage
- RAM usage
- Battery percentage
- Current time
- Apple icon

The configuration intentionally avoids excessive widgets and visual clutter.

---

### Fastfetch

Fastfetch is configured as a minimal startup summary.

It only displays useful information such as:

- Operating system
- System uptime
- Memory usage

The large default hardware dashboard and ASCII logo were intentionally removed to preserve terminal space.

---

### Powerlevel10k

Powerlevel10k keeps its original customized Powerline/Rainbow appearance.

The configuration includes:

- Current directory
- Git information
- macOS icon
- Command status
- Transient prompt
- Nerd Font support

---

### Dock

The macOS Dock keeps its native animation and behavior while using automatic hiding.

This allows applications to use more vertical screen space without permanently removing the Dock.

The current Dock preferences are documented in:

```text
dock-defaults.txt
