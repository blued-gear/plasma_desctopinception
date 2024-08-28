# plasma_desktopception

Launch KDE Plasma windowed, so you can group multiple windows into one window.
This can be done recursively.\
(No claims about stability of your system are made.)

## Usage

Simply clone this repo and `cd` into it.

To enable a shared clipboard, [clipboard-sync](https://github.com/dnut/clipboard-sync) can be utilized.
The script `get_clipboard_sync.sh` will automatically extract the binary from the deb package.

Inside `plasma_windowed.sh` you can en/disable the usage of clipboard-sync by setting `SHARE_CLIPBOARD` to 1 or 0.
