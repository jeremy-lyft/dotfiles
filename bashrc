cd ~/pg/yelp-main
alias environ=". ~/.pgconf-$USER/environ.sh"

# 2012-05-14 from juliank
function fix_ssh_agent_tmux() {
	if [[ -n $TMUX ]]; then
		NEW_SSH_AUTH_SOCK=`tmux showenv|grep ^SSH_AUTH_SOCK|cut -d = -f 2`
		if [[ -n $NEW_SSH_AUTH_SOCK ]] && [[ -S $NEW_SSH_AUTH_SOCK ]]; then
			SSH_AUTH_SOCK=$NEW_SSH_AUTH_SOCK
		fi
	fi
}
export PROMPT_COMMAND="fix_ssh_agent_tmux"
