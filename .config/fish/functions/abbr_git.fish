function abbr_git --description 'set up the GIT abbreviations'
	set -U git_abbr_initialized
	echo -n Setting git abbreviations... 

	abbr g 'git'
	abbr ga 'git add'
	abbr gb 'git branch'
	abbr gbl 'git blame'
	abbr gc 'git commit -m'
	abbr gco 'git checkout'
	abbr gcl 'git clone'
	abbr gcp 'git cherry-pick'
	abbr gd 'git diff'
	abbr gf 'git fetch'
	abbr gl 'git log'
	abbr gm 'git merge'
	abbr gp 'git push'
	abbr gpl 'git pull'
	abbr gr 'git remote'
	abbr gs 'git stash'
	abbr gst 'git status'
	
	echo 'Done'
end
