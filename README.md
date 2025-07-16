# Omarchy - Hyprland Workspace Mover Plugin

Plugin written for [Omarchy](https://omarchy.org/), that enables Hyperland to move entire workspaces between monitors.

## Keybinds

These keybinds are added to Hyperland

- Move to monitor 1–9: SHIFT + SUPER + ALT + [1–9]
- Move workspace to the monitor left of the current: SHIFT + SUPER + ALT + Left Arrow
- Move workspace to the monitor right of the current: SHIFT + SUPER + ALT + Right Arrow

## Scripts

### `hypr-move-workspace`

Moves the active workspace to the previous or next monitor with wraparound support.

**Usage:**

```bash
hypr-move-workspace left   # Move workspace to previous monitor
hypr-move-workspace right  # Move workspace to next monitor
```

### `hypr-move-workspace-to-monitor`

Moves the active workspace to a specific monitor by index.

**Usage:**

```bash
hypr-move-workspace-to-monitor 0  # Move to first monitor
hypr-move-workspace-to-monitor 1  # Move to second monitor
```
