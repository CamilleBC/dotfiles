function abbr_config --description 'set up the Home Config abbreviations'
	set -U config_abbr_initialized
	echo -n Setting config abbreviations... 

	abbr cf 'git --git-dir=$HOME/.myconf --work-tree=$HOME'
	abbr cfa 'git --git-dir=$HOME/.myconf --work-tree=$HOME add'
	abbr cfc 'git --git-dir=$HOME/.myconf --work-tree=$HOME commit -m'
	abbr cfo 'git --git-dir=$HOME/.myconf --work-tree=$HOME checkout'
	abbr cfp 'git --git-dir=$HOME/.myconf --work-tree=$HOME push'
	abbr cfst 'git --git-dir=$HOME/.myconf --work-tree=$HOME status'
	
	echo 'Done'
end
