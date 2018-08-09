function abbr_dev --description 'set up the dev env abbreviations'
	set -U config_dev_initialized
	echo -n Setting dev env abbreviations... 

	abbr npi 'npm install --save'
	abbr npid 'npm install --save-dev'
	abbr npig 'npm install --global'

	echo 'Done'
end
