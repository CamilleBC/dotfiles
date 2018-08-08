# Dotfiles with a bare git repo
## Initial setup
### Non-existing repo (first time use)
We initialize a bare git repo, then we configure the repo to not show untracked files.
```
git init --bare $HOME/.myconf
git --git-dir=$HOME/.myconf/ --work-tree=$HOME config status.showUntrackedFiles no
```
You can use different branches for different computers, you can replicate your configuration easily on new installation.
### Clone existing repo on new machine
#### If the $HOME directory is empty
You can simply use this command
`git clone --separate-git-dir=~/.myconf /path/to/repo ~`
#### If the $HOME is not empty
You can clone the repo into a temporary directory first and then delete that directory.
```
git clone --separate-git-dir=$HOME/.myconf /path/to/repo $HOME/myconf-tmp
cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules
rm -r ~/myconf-tmp/
git --git-dir=$HOME/.myconf/ --work-tree=$HOME config status.showUntrackedFiles no
```
## Usage
### Bash alias
This is how you could use it more easily:
```
echo "alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'" >> $HOME/.bashrc
```
Then you could use those commands like this:
```
config status
config add .vimrc
config commit -m "Add vimrc"
config add .config/redshift.conf
config commit -m "Add redshift config"
config push
```
### Fish abbreviations
Use those commands, either in the shell or in your config.fish:
```
abbr cf 'git --git-dir=$HOME/.myconf --work-tree=$HOME'
abbr cfa 'git --git-dir=$HOME/.myconf --work-tree=$HOME add'
abbr cfc 'git --git-dir=$HOME/.myconf --work-tree=$HOME commit -m'
abbr cfo 'git --git-dir=$HOME/.myconf --work-tree=$HOME checkout'
abbr cfp 'git --git-dir=$HOME/.myconf --work-tree=$HOME push'
abbr cfst 'git --git-dir=$HOME/.myconf --work-tree=$HOME status'
```
## Usage
Every time you modify a file that should be versioned, just add it using either the bash alias (`config add file`) or the FISH abbreviation (`cfa file`).
Then just commit it to the repo (`config commit -m "message"` or `cfc "message`) and push.

If you wish to keep separate versions of the dotfiles, just use a master branch for the shared dotfiles, and create a git branch for your machine.

If you update something that should be common to all machine, just add it to master, then checkout your branch and merge with master.

There you go! Easy, no?
## More details
If you want more details, you can go to the [Ycombinator thread](https://news.ycombinator.com/item?id=11070797) or this [article](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) which details the process if you need it.

