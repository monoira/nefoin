# Nefoin

<!--toc:start-->

- [Nefoin](#nefoin)
  - [SHOWCASE](#showcase)
  - [DEPENDENCIES](#dependencies)
  - [EXAMPLES](#examples)
    - [Hack Nerd Font](#hack-nerd-font)
    - [FiraCode Nerd Font](#firacode-nerd-font)
    - [JetBrainsMono Nerd Font](#jetbrainsmono-nerd-font)
    - [Agave Nerd Font](#agave-nerd-font)
    - [Iosevka Nerd Font](#iosevka-nerd-font)
    - [Meslo Nerd Font](#meslo-nerd-font)
    - [CascadiaCode Nerd Font](#cascadiacode-nerd-font)
    - [CommitMono Nerd Font](#commitmono-nerd-font)
    - [VictorMono Nerd Font](#victormono-nerd-font)
    - [DejaVuSansMono Nerd Font](#dejavusansmono-nerd-font)
    - [UbuntuMono Nerd Font](#ubuntumono-nerd-font)
    - [SourceCodePro Nerd Font](#sourcecodepro-nerd-font)
    - [Terminus Nerd Font](#terminus-nerd-font)
    - [RobotoMono Nerd Font](#robotomono-nerd-font)
    - [LiberationMono Nerd Font](#liberationmono-nerd-font)
    - [Mononoki Nerd Font](#mononoki-nerd-font)
    - [SpaceMono Nerd Font](#spacemono-nerd-font)
    - [Cousine Nerd Font](#cousine-nerd-font)
    - [OTHER FONTS](#other-fonts)
  - [HOW DOES IT WORK](#how-does-it-work)
  <!--toc:end-->

**ne**rd **fo**nt **in**staller let's you download any Nerd Font from
[ryanoasis/nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases/)

No manual download or cloning required.  
Just pass Nerd Font name as an argument in CLI and rest is automatically done.

## SHOWCASE

![showcase](./docs/showcase.gif)

## DEPENDENCIES

- Be on Linux or MacOS.
- Have Following packages / utilities:

```bash
fontconfig curl unzip
```

If you are on MacOS, You probably will only lack `fontconfig`,
which you can install like this:

```bash
brew install fontconfig
```

Running the script will tell you which dependencies you are missing regardless of OS.

## EXAMPLES

### Hack Nerd Font

```bash
nerd_font_name="Hack" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### FiraCode Nerd Font

```bash
nerd_font_name="FiraCode" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### JetBrainsMono Nerd Font

```bash
nerd_font_name="JetBrainsMono" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### Agave Nerd Font

```bash
nerd_font_name="Agave" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### Iosevka Nerd Font

```bash
nerd_font_name="Iosevka" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### Meslo Nerd Font

```bash
nerd_font_name="Meslo" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### CascadiaCode Nerd Font

```bash
nerd_font_name="CascadiaCode" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### CommitMono Nerd Font

```bash
nerd_font_name="CommitMono" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### VictorMono Nerd Font

```bash
nerd_font_name="VictorMono" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### DejaVuSansMono Nerd Font

```bash
nerd_font_name="DejaVuSansMono" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### UbuntuMono Nerd Font

```bash
nerd_font_name="UbuntuMono" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### SourceCodePro Nerd Font

```bash
nerd_font_name="SourceCodePro" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### Terminus Nerd Font

```bash
nerd_font_name="Terminus" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### RobotoMono Nerd Font

```bash
nerd_font_name="RobotoMono" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### LiberationMono Nerd Font

```bash
nerd_font_name="LiberationMono" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### Mononoki Nerd Font

```bash
nerd_font_name="Mononoki" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### SpaceMono Nerd Font

```bash
nerd_font_name="SpaceMono" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### Cousine Nerd Font

```bash
nerd_font_name="Cousine" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

### OTHER FONTS

You can type in quotes any other Nerd Font from
[ryanoasis/nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases/)
that has **.zip** extension.

## HOW DOES IT WORK

For example, if I want to get `Hack` Nerd Font, name of it on
[ryanoasis/nerd-fonts/releases](https://github.com/ryanoasis/nerd-fonts/releases/)
is `Hack.zip`.  
You just pass it's name _without_ **.zip**, `Hack`, like this:

```bash
nerd_font_name="Hack" bash <(curl -fsSL https://raw.githubusercontent.com/monoira/nefoin/main/install.sh)
```

And [install.sh](./install.sh) will automatically download, unzip and move
it's contents to your systems fonts directory.

On MacOS:  
`/Library/Fonts`

On Linux:  
`/usr/local/share/fonts`

If that directory doesn't exist, [install.sh](./install.sh) will create it.  
There is no residual files left either.  
No manual download or cloning required.  
It just works.
