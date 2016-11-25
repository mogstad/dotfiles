#!/bin/sh

IFS=$'\n'

destination=~

for dir in fish brew git ruby vim sublime
do
  echo "Installing module \"$dir\""

  files=$(find modules/$dir -name "*.copy")
  for file_name in $files
  do
    file_name=${file_name%".copy"}
    file_name=${file_name#"modules/$dir/"}
    mkdir -p $(dirname $destination/$file_name)
    echo "- Coping file: ~/$file_name"
    cp -f ./modules/$dir/$file_name.copy $destination/$file_name
  done

  symlinks=$(find modules/$dir -name "*.symlink")
  for symlink in $symlinks
  do
    symlink=${symlink%".symlink"}
    symlink=${symlink#"modules/$dir/"}
    mkdir -p $(dirname $destination/$symlink)
    echo "- Creating hard link for file: ~/$symlink"
    ln -f ./modules/$dir/$symlink.symlink $destination/$symlink
  done
  
  scripts=$(find modules/$dir -name "*.sh")
  for script in $scripts
  do
    echo "- Invoking script: $script"
    sh $script >> /dev/null 2>&1
  done

  scripts=$(find modules/$dir -name "*.fish")
  for script in $scripts
  do
    echo "- Invoking script: $script"
    fish $script >> /dev/null 2>&1
  done
  echo
done

echo "Installation complete"
