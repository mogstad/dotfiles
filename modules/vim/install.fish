brew install vim; or brew outdated vim; or brew upgrade vim

set -l vundle_path ~/.vim/bundle/Vundle.vim

if test $vundle_path
  git --git-dir $vundle_path/.git --work-tree $vundle_path fetch
  git --git-dir $vundle_path/.git --work-tree $vundle_path reset --hard origin/master
else
  git clone https://github.com/VundleVim/Vundle.vim.git $vundle_path
end

vim +BundleInstall! +BundleClean! +qall
