#!/usr/bin/env bash
# first and only argument is
# nerd_font_name="NAME"
# "NAME" being name of the Nerd Font that is
# inside ryanoasis/nerd-fonts repository on github
# It's case sensitive, so make sure you check and write font name in right case
# In case of "Hack" nerd font:
# GOOD: "Hack"
# BAD:  "hack"
# BAD:  "Hack.zip"
# BAD:  "hack.zip"

dependencies=(
  fc-list
  fc-cache
  curl
  unzip
)

all_dependencies_are_installed=true
for dep in "${dependencies[@]}"; do
  if [ -z "$(which "$dep")" ]; then
    all_dependencies_are_installed=false
  fi
done

get_font() {
  # create a temporary directory
  TEMP_FONT_DIR=$(mktemp --directory)

  local nerd_fonts_repo_url="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$nerd_font_name.zip"

  # download the font zip file
  curl -L -o "$TEMP_FONT_DIR/font.zip" "$nerd_fonts_repo_url"

  # unzip the font file
  unzip "$TEMP_FONT_DIR/font.zip" -d "$TEMP_FONT_DIR"

  # determine the user fonts directory based on the OS
  if [[ "$(uname)" == "Darwin" ]]; then
    USER_FONTS_DIR="$HOME/Library/Fonts"
  else
    USER_FONTS_DIR="$HOME/.local/share/fonts"
  fi

  # create user fonts directory if it doesn't already exist
  mkdir -p "$USER_FONTS_DIR"

  # move the font files to the user fonts directory
  mv "$TEMP_FONT_DIR"/*.{otf,ttf,woff,woff2,eot,svg} "$USER_FONTS_DIR" 2>/dev/null

  # update the font cache
  fc-cache -f -v

  echo "<--- $nerd_font_name installed. --->"

  # clean up temporary directory
  rm -rf "$TEMP_FONT_DIR"
}

# placeholder for nerd_font_name to be given as an argument to install.sh script
nerd_font_name="${1:-$nerd_font_name}"

if [ -z "$nerd_font_name" ]; then
  echo "<--- Provide Nerd Font Name --->"
  exit 1
fi

if $all_dependencies_are_installed; then
  echo "<--- Installing $nerd_font_name --->"

  # check if similar named font is already installed
  similar_named_font_found=$(fc-list : family | \sort | \uniq | \grep "$nerd_font_name")

  # if similarly named font is not installed, runs the following script
  # else, echos similarly named fonts. All of them.
  if [ -z "$similar_named_font_found" ]; then
    get_font
  else
    echo "<--- Font / Fonts with name similar to $nerd_font_name found: --->"
    fc-list : family | \sort | \uniq | \grep "$nerd_font_name"
    read -r -p "Do you want to cancel installation of $nerd_font_name? (Y/n)" prompt_response
    if [[ $prompt_response == "n" ]]; then
      echo "<--- Installing $nerd_font_name --->"
      get_font
    else
      echo "<--- Installation of $nerd_font_name cancelled --->"
    fi
  fi

else
  echo "<--- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --->"
  echo "<--- ONE OR MORE OF THE REQUIRED DEPENDENCIES ARE NOT INSTALLED!!! --->"
  echo "<--- DEPENDENCIES: --->"

  # checks each package individually to see which packages
  # are not installed and echos them all out with their status of installation
  for dep in "${dependencies[@]}"; do
    if [ "$(which "$dep")" ]; then
      echo "<--- $dep - Status: Installed. --->"
    else
      echo "<--- $dep - Status: NOT INSTALLED!!! --->"
    fi
  done
  exit 1
fi
