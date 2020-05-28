#! /bin/bash

# dotfiles dir
dotdir=dotfiles

# dir to safe old confs
oldcfs=.old_confs

# blacklisted files
blf=($0 README.md)

# loop over all files in repo
for cf in * ; do
    # if file not blacklisted
    if [[ !("${blf[@]}" =~ "$cf") ]] ; then
        # save old config files and symlink new 
        mv "$HOME/.$cf" "./${oldcfs}/$cf"
        cp -s "$HOME/${dotdir}/$cf" "$HOME/.${cf}"
    fi
done
