# vim-auto-onehalf

This will change your vim colour scheme to either
[Onehalfd](https://github.com/whatisinternet/vim-auto-onehalf) dark or light
depending on the (configured) time of day. It will additionally set a hotkey
for toggling background on the fly (default: F8).

## Features

All of the features are configurable:
- 07:00 < time < 18:50 - sets theme to onehalfd-light
- Other times theme is set to onehalfd-dark
- `F8` key toggles background from light to dark
- Calls AutoOnehalf() during file save (based on time of the day). To call
  this function manually use `:call AutoOnehalf()` command.

**The times and hotkeys are configurable** (see
[Configuration](#Configuration) for more information).

## Requirements

This plugin relies on
installed. See [Setup](#Setup) section for information on how to install it
together with this plugin.

## Setup

Using [Vundle](https://github.com/gmarik/Vundle.vim) is recommended way.
Update your `.vimrc`:

```vim
Bundle 'altercation/vim-colors-onehalfd'
Bundle 'edvinasme/vim-auto-onehalf'
```

After editing `.vimrc`, restart vim and run `:BundleInstall`.

## Configuration

Configuration options for the plugin that can be set in `.vimrc`:

- **g:auto_onehalf_start_light** (Default: *'0700'*) - controls the time when
  light background will be activated. Format is HHMM (HH - hours (0-23); MM-
  minutes (0-59)). To disable, set to `2400`. Example:

   ```vim
   let g:auto_onehalf_start_light = '0700'
   ```

   You can set the time to any value, even higher than
   `g:auto_onehalf_start_dark`. Plugin is smart enough to work correctly with
   different time configurations.

- **g:auto_onehalf_start_dark** (Default: *'1850'*) - controls the time when
  dark background will be activated. Format is HHMM (HH - hours (0-23); MM-
  minutes (0-59)). To disable, set to `2400`. Example:

     ```vim
    let g:auto_onehalf_start_dark = '1850'
    ```

   You can set the time to any value, even lower than
   `g:auto_onehalf_start_light`. Plugin is smart enough to work correctly with
   different time configurations.


- **g:auto_onehalf_togglebg_key** (Default: *'<F8>'*) - allows you to change
  key for toggling background between light and dark. Example:

    ```vim
    let g:auto_onehalf_togglebg_key = '<F8>'
    ```

- **g:auto_onehalf_check_on_save** (Default: *1*) - allows you to control
  if AutoOnehalf checks should be applied upon file save. Set to *0* to
  disable. Example:

    ```vim
    let g:auto_onehalf_check_on_save = 0
    ```


## LICENSE

Copyright for portions of vim-auto-onehalf are held by:
- Copyright (c) 2015 Josh Teeter <joshteeter@gmail.com>
- Copyright (c) 2015 Edvinas Klovas <edvinas@pnd.io>
  For all portions of the code that are not from vim-auto-soloarize.

See [MIT License](LICENSE).
