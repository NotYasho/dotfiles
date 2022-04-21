#!/bin/bash

# copy other dot files
cp -f $HOME/.zshrc .
cp -f $HOME/.bashrc .
cp -f $HOME/.zsh_history .
cp -f $HOME/.bash_history .
cp -f $HOME/.oh-my-zsh/themes/agnoster.zsh-theme ./.oh-my-zsh/themes/
cp -f $HOME/.zsh/zsh-syntax-highlighting/highlighters/main/main-highlighter.zsh ./.zsh/zsh-syntax-highlighting/highlighters/mainhighlighters/main
cp -f $HOME/.nanorc .
cp -f $HOME/.config/plasmarc ./.config/
cp -f $HOME/.config/konsolerc ./.config/
cp -f $HOME/.config/lattedockrc ./.config/
# copy directories
cp -f -r $HOME/.kde4/ .
cp -f -r $HOME/.spicetify/ .
cp -f -r $HOME/.config/neofetch/ ./.config/
cp -f -r $HOME/.config/cava/ ./.config/
cp -f -r $HOME/.config/plasma-workspace/ ./.config/
cp -f -r $HOME/.config/KDE/ ./.config/
cp -f -r $HOME/.config/gtk-2.0/ ./.config/
cp -f -r $HOME/.config/gtk-3.0/ ./.config/
cp -f -r $HOME/.config/gtk-4.0 ./.config/
cp -f -r $HOME/.config/latte/ ./.config/
cp -f -r $HOME/.config/kde.org/ ./.config/
cp -f -r $HOME/.config/plasma-workspace/ ./.config/


# Check git status
gs="$(git status | grep -i "modified")"
# echo "${gs}"

# If there is a new change
if [[ $gs == *"modified"* ]]; then
  echo -e "\e[36mPushing to Github\e[0m"
fi


# push to Github
git add .;
git commit -m "New backup `date +'%Y-%m-%d %H:%M:%S'`";
git push origin master

echo -e "\e[32mBackup complete\e[0m"

notify-send "Sync Complete ✔" "\nPushed config files to Github Repository." -t 5000 -a "config-backup" -i "sync-synchronizing-symbolic"
