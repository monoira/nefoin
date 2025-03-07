# Nefoin

<!--toc:start-->

- [Nefoin](#nefoin)
  - [DEPENDENCIES](#dependencies)
  - [EXAMPLES](#examples)
    - [Hack Nerd Font](#hack-nerd-font)
    - [FiraCode Nerd Font](#firacode-nerd-font)
    - [JetBrainsMono Nerd Font](#jetbrainsmono-nerd-font)
    - [Agave Nerd Font](#agave-nerd-font)
  - [HOW DOES IT WORK](#how-does-it-work)
  <!--toc:end-->

**ne**rd **fo**nt **in**staller let's you download any Nerd Font from
[ryanoasis/nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases/)

No manual download or cloning required.  
Just pass Nerd Font name as an argument in CLI and rest is automatically done.

## DEPENDENCIES

Be on Linux and Following Linux packages / utilities:

```bash
bash fontconfig mkdir mktemp wget unzip sudo sort uniq grep
```

## EXAMPLES

### Hack Nerd Font

```bash
nerd_font_name="Hack" wget -qO- https://raw.githubusercontent.com/monoira/nefoin/main/install.sh | bash
```

### FiraCode Nerd Font

```bash
nerd_font_name="FiraCode" wget -qO- https://raw.githubusercontent.com/monoira/nefoin/main/install.sh | bash
```

### JetBrainsMono Nerd Font

```bash
nerd_font_name="JetBrainsMono" wget -qO- https://raw.githubusercontent.com/monoira/nefoin/main/install.sh | bash
```

### Agave Nerd Font

```bash
nerd_font_name="Agave" wget -qO- https://raw.githubusercontent.com/monoira/nefoin/main/install.sh | bash
```

You can type in quotes any other Nerd Font from
[ryanoasis/nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases/)
that has **.zip** extension.

## HOW DOES IT WORK

For example, if I want to get `Hack` Nerd Font, name of it on
[ryanoasis/nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases/)
is `Hack.zip`.  
You just pass it's name _without_ **.zip**, `Hack`, like this:

```bash
nerd_font_name="Hack" wget -qO- https://raw.githubusercontent.com/monoira/nefoin/main/install.sh | bash
```

And [install.sh](./install.sh) will automatically download, unzip and move
it's contents to `/usr/local/share/fonts/`  
If that directory doesn't exist, [install.sh](./install.sh) will create it.  
There is no residual files left either.  
No manual download or cloning required.  
It just works.
