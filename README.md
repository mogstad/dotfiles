# dotfiles

## Concept

This repo has two parts, all my dotfiles, and a script to install them. 

### Modules

The idea is that everything releated to one thing should be capsulated 
together, so if I e.g. decide to switch ruby environment system, I can simply 
replace all files in that directory.

To make that as smooth as possible, I’ve configured my fish config file auto 
load files in the directory `~/.config/fish/config/`.

Module dependencies are currenly handled by a hard coded array in the install 
script. New modules has to be added here as well.

### File Extensions

The file extension of the files in the module decide how the install script 
integrate the dotfiles into the home directory:

#### `*.symlink`

Files with a `.symlink` extension will be hardlinked to that path relative to 
the module root, where the module root is defined as the home folder.

#### `*.copy`

Files with a `.copy` works the same was as symlink, except it will be copied 
instead of hard linked.

#### `*.sh`, `*.fish`

Shell scripts and fish scripts will be invoked.

#### Other

Other files will be ignored.

## Usage

```
./scripts/install.sh
```
