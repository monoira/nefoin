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
  bash
  fc-list
  fc-cache
  mkdir
  mktemp
  wget
  unzip
  sudo
  sort
  uniq
  grep
)

all_dependencies_are_installed=true
for dep_pkg in "${dependencies[@]}"; do
  if [ -z "$(which "$dep_pkg")" ]; then
    all_dependencies_are_installed=false
  fi
done

get_font() {
  # Create a temporary directory
  TEMP_FONT_DIR=$(mktemp --directory)

  local nerd_fonts_repo_url="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$nerd_font_name.zip"

  # download the font zip file
  wget -O "$TEMP_FONT_DIR/font.zip" "$nerd_fonts_repo_url"

  # unzip the font file
  unzip "$TEMP_FONT_DIR/font.zip" -d "$TEMP_FONT_DIR"

  # create system fonts directory if it doesn't already exists
  sudo mkdir -p /usr/local/share/fonts/

  # move the font files to the system fonts directory
  sudo mv "$TEMP_FONT_DIR"/*.{otf,ttf,woff,woff2,oet,svg} /usr/local/share/fonts/

  # update the font cache
  fc-cache -f -v

  # clean up temporary directory
  sudo rm -rf "$TEMP_FONT_DIR"
}

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
    read -r -p "<--- Do you still want to install $nerd_font_name? (Y/n) --->" prompt_response
    if [[ $prompt_response == "n" ]]; then
      echo "<--- Installation of $nerd_font_name cancelled --->"
    else
      echo "<--- Installing $nerd_font_name --->"
      get_font
    fi
  fi

else
  echo "<--- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --->"
  echo "<--- ONE OR MORE OF THE REQUIRED DEPENDENCIES ARE NOT INSTALLED!!! --->"
  echo "<--- The dependencies: --->"

  # checks each package individually to see which packages
  # are not installed and echos them out if they are not installed
  for dep_pkg in "${dependencies[@]}"; do
    if [ "$(which "$dep_pkg")" ]; then
      echo "<--- $dep_pkg - Status: Installed. --->"
    else
      echo "<--- $dep_pkg - Status: NOT INSTALLED!!! --->"
    fi
  done
fi
