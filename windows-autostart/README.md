> **Note**: This is a fork of [yixin0829/push-to-talk](https://github.com/yixin0829/push-to-talk) with added Windows auto-start scripts. See [`windows-autostart/`](./windows-autostart/) for details.

# Windows Auto-Start Scripts

This folder contains AutoHotkey v2 scripts to automate launching PushToTalk on Windows startup, including auto-clicking the "Start Application" button.

## Why this exists

By default, PushToTalk requires you to manually click "Start Application" every time you launch it. This script automates the entire flow:

1. Launches PushToTalk.exe
2. Moves the window to the primary monitor (handles multi-monitor setups)
3. Scrolls to the bottom of the configuration window
4. Clicks "Start Application"
5. Minimizes the window

## Requirements

- AutoHotkey v2.0+ (https://www.autohotkey.com/)
- Windows 10/11

## Installation

1. Install AutoHotkey v2
2. Edit `start_pushtotalk.ahk` and update the path to your `PushToTalk.exe`
3. Test by double-clicking the script
4. To enable auto-start on Windows boot:
   - Press `Win + R`, type `shell:startup`, press Enter
   - Copy `start_pushtotalk.ahk` into that folder

## Notes on coordinates

The script uses fixed pixel coordinates to click the Start Application button. If your DPI scaling or window size differs, you may need to adjust the `MouseMove(125, 942)` line. Use AutoHotkey's Window Spy tool to find the correct coordinates.

The script includes `DllCall("SetThreadDpiAwarenessContext", "ptr", -4)` to handle DPI scaling correctly on high-DPI displays.

## Troubleshooting

- **Script clicks the wrong place**: Open Window Spy (installed with AutoHotkey), hover over the Start Application button, and update the coordinates in the script.
- **Window appears on wrong monitor**: The script forces the window to (0, 0) on the primary monitor via `WinMove`. If your primary monitor isn't where you want PushToTalk to launch, change those coordinates.