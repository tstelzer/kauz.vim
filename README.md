# KAUZ.vim

Another dark color scheme for [vim](https://www.vim.org), inspired by VSCs
Dark+ and [welpe](https://www.github.com/tstelzer/welpe.vim), though decidedly less colorful. Unlike
[welpe](https://www.github.com/tstelzer/welpe.vim), kauz is making use of all
available colors, not limiting itself to the 256 spectrum.

## PALETTE

![#ffffff](preview/foreground_light.png) `foreground_light #ffffff`

![#d4d4d4](preview/foreground.png) `foreground #d4d4d4`

![#a8a8a8](preview/foreground_dark.png) `foreground_dark #a8a8a8`

![#808080](preview/neutral.png) `neutral #808080`

![#3a3a3a](preview/background_light.png) `background_light #3a3a3a`

![#1e1e1e](preview/background.png) `background #1e1e1e`

![#1c1c1c](preview/background_dark.png) `background_dark #1c1c1c`

![#621d29](preview/red_dark.png) `red_dark #621d29`

![#b95c6c](preview/red_light.png) `red_light #b95c6c`

![#2d5a1a](preview/green_dark.png) `green_dark #2d5a1a`

![#a0be93](preview/green_light.png) `green_light #a0be93`

![#cd9731](preview/yellow_dark.png) `yellow_dark #cd9731`

![#ffd78a](preview/yellow_light.png) `yellow_light #ffd78a`

![#042037](preview/blue_dark.png) `blue_dark #042037`

![#4980ad](preview/blue_light.png) `blue_light #4980ad`

![#894582](preview/magenta_dark.png) `magenta_dark #894582`

![#f5e3f4](preview/magenta_light.png) `magenta_light #f5e3f4`

![#109f83](preview/cyan_dark.png) `cyan_dark #109f83`

![#acf0e3](preview/cyan_light.png) `cyan_light #acf0e3`

## PREVIEW

```
OS: Fedora 27
WM: i3wm
Terminal: Alacritty
Shell: zsh + tmux
```

[dotfiles](https://github.com/tstelzer/dotfiles)

<img src="https://raw.githubusercontent.com/tstelzer/kauz.vim/master/preview/js-fold.png" width=800>

<img src="https://raw.githubusercontent.com/tstelzer/kauz.vim/master/preview/js-errors.png" width=800>

<img src="https://raw.githubusercontent.com/tstelzer/kauz.vim/master/preview/diff.png" width=800>

<img src="https://raw.githubusercontent.com/tstelzer/kauz.vim/master/preview/clojure-zsh-markdown.png" width=800>

<img src="https://raw.githubusercontent.com/tstelzer/kauz.vim/master/preview/html-scss-fold.png" width=800>


#### manual download

place [tstelzer/kauz.vim/master/colors/kauz.vim](https://raw.githubusercontent.com/tstelzer/kauz.vim/master/colors/kauz.vim) in `~/.vim/colors/`

#### using [vim-plug](https://github.com/junegunn/vim-plug)

Add `Plug 'tstelzer/kauz.vim'` to your `.vimrc`, see [vim-plug repository](https://github.com/junegunn/vim-plug) for more information.

#### enable colorscheme

add the following line *after* `:syntax enable`

`colorscheme kauz`
