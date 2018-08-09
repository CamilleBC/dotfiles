# Setting the pixel scale
set -xg GDK_SCALE 1.5
# Setting default editor to nvim
set -xg EDITOR nvim
set -xg fish_greeting
# Setting vi mode for fish
set -xg fish_key_bindings fish_vi_key_bindings
# Setting fzf to use ripgrep
set -U FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
set -U FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

# Settings Home Config abbreviations
if not set -q config_abbr_initialized
	abbr_config
end
# Settings GIT abbreviations
if not set -q git_abbr_initialized
	abbr_git
end
# Settings NVIM abbreviations
if not set -q nvim_abbr_initialized
	abbr_nvim
end

# Start X11 at login
startx

# Check if agent is started, else launch it
if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end
if not ssh_agent_isstarted
    ssh_agent_start
end
# Check if a ssh key is loaded in agent
ssh_agent_identities
