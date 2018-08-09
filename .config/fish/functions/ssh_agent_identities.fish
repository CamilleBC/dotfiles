function ssh_agent_identities -d "checks if ssh agent has a key else adds it"
  ssh-add -l | grep "The agent has no identities" > /dev/null
  if [ $status -eq 0 ]
    ssh-add
  end
end
