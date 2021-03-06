## only ask for my SSH key passphrase once!
#use existing ssh-agent if possible
if [ -f ${HOME}/.ssh-agent ]; then
   . ${HOME}/.ssh-agent > /dev/null
fi
if [ -z "$SSH_AGENT_PID" -o -z "`/usr/bin/ps -a|/usr/bin/egrep \"^[ ]+$SSH_AGENT_PID\"`" ]; then
   /usr/bin/ssh-agent > ${HOME}/.ssh-agent
   . ${HOME}/.ssh-agent > /dev/null
fi
# ssh-add ~/.ssh/id_rsa
# ssh-add ${HOME}/.ssh/devkey-201601
#ssh-add ~/.ssh/devkey-201601
