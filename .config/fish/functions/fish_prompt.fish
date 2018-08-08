set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
#set __fish_git_prompt_show_informative_status
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '?'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

set boldwhite (set_color CCCCCC)
set normal (set_color normal)

function fish_prompt --description 'Write out the prompt'
	set prompt
	if test -n "$IN_NIX_SHELL"
		set prompt "$prompt"(set_color blue)
		set prompt "$prompt""-O- "
	else
		set prompt "$prompt$boldwhite--- "
	end
	#set prompt "$prompt"(set_color yellow)
	#set prompt "$prompt"(whoami)"@"
	#set prompt "$prompt"(set_color purple)
	#set prompt "$prompt"(prompt_hostname)
	#set prompt "$prompt$boldwhite"
	set prompt "$prompt"(prompt_pwd)
	set prompt "$prompt"(set_color normal)
	set git_prompt (__fish_git_prompt " $boldwhite($normal%s$boldwhite)$normal")
	if test -n $git_prompt
		set prompt "$prompt$git_prompt"
	end
	set prompt "$prompt"(set_color red)" >> "
	set prompt "$prompt"(set_color normal)
	printf "%s" $prompt
end
