## dotfiles
A repository of my dev environment dotfiles

## To add more dotfiles
* Move your dotfile to this directory, remove the dot. i.e. `mv .vimrc ~/dotfiles/vimrc`
* Add the specific file to the files variable in `makesymlinks.sh` on line 12:
```
#line 12 before
files="bashrc"

#line 12 after
files="bashrc vimrc"
```

## To Use
* Clone the repository:
`git clone git@github.com:kia-minted/dotfiles.git`
* Run the following command:
`cd dotfiles && chmod +x makesymlinks.sh && ./makesymlinks.sh`
