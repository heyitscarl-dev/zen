# zen

A zen configuration.

## introduction

This repository contains a collection of all my dotfiles, as well as a couple curated distributions like `zen.nvim` and `zen.tmux`

## structure

Each folder within this repo contains a directory structure mirroring the home directory, which makes it super easy
to use [GNU stow](https://www.gnu.org/software/stow/) to apply each configuration individually.

Some folders are "private", or at least not super customizable but rather focused on my individual needs, while I have
spent a lot of time on others, making sure they're good to use standalone and as a drop-in replacement for what you've
got right now.

## installation

If you want to only use one specific submodule of this repo, feel free to head to the respective repository and follow
its installation guide. Otherwise:

**(1)** Clone this repository and all submodules

```bash
git clone --recurse-submodules https://github.com/heyitscarl-dev/zen.git ~/.zen
```

**(2.1)** _Either_ use `stow` to individually apply configurations
```bash
stow neovim && stow fish
```

**(2.2)** _Or_ use the `apply.sh` or `apply.fish` scripts to apply every configuration
```bash
fish apply.fish
```

> [!WARNING]
> If you already have existing configurations for certain tools, you'll need to back them up first:
> ```bash
> mv ~/.config/yourtool ~/.config/yourtool.bak
> ```

## difficulties 

If you're within a fish session but want to update your fish config, you'll need to make sure you run 
everything as one command:

```bash
mv ~/.config/fish ~/.config/fish.bak && stow fish
```

_instead of_

```bash
mv ~/.config/fish ~/.config/fish.bak
stow fish
```
