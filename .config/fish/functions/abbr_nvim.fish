function abbr_nvim --description 'set up the NVIM abbreviations'
	set -U nvim_abbr_initialized
	echo -n Setting nvim abbreviations... 

	abbr v 'nvim'
	abbr vi 'nvim'
	abbr vim 'nvim'

	echo 'Done'
end
