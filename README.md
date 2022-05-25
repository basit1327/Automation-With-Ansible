# Automation-With-Ansible
This repository contain ansible playbook that i use for configuring servers (both frontend/backend)



# Instruction / Steps for setting up servers with Ansible
![](https://i.ibb.co/YyKSPX6/Screenshot-2022-05-25-at-11-58-39-AM.png)

1. First create you host inventory ```$/etc/ansible/hosts ``` with look like
```
[loader_backend_servers]
34.250.248.93

[loader_frontend_servers]
52.16.198.71

[all:vars]
ansible_python_interpreter=/usr/bin/python3

[loader_backend_servers:vars]
ansible_ssh_private_key_file=/Users/basitraza/.ssh/gm/staging.pem

[loader_frontend_servers:vars]
ansible_ssh_private_key_file=/Users/basitraza/.ssh/gm/staging.pem
```
2. Go to this project root directory to execute playbooks

3. First try to ping all server by running ping-all playbook as ```ansible-playbook ping-all.yml```

4. Installing Apache on remote server as ```ansible-playbook install-apache.yml```

5. Installing .NET SDK on backend server by ```ansible-playbook install-dotnet6.yml```

6. Setup Apache configuration for frontend server ```ansible-playbook setup-apache-host-frontend-server.yml```

7. Setup Apache configuration for backend server ```ansible-playbook setup-apache-host-backend-server.yml```

8. Restart Apache service by ```ansible-playbook restart-apache-service.yml```

9. Installing NPM/NodeJS/Angular on frontend server ```ansible-playbook install-anuglar-frontend-server.yml```

10. Copying configuration/script for running .NET project ```ansible-playbook copy-dotnet-project-settings-backend-server.yml```

# Expected Result
- At this stage frontend/backend server having apache service installed
- Apache configuration is done apache service restarted. 
- Homepage is setup for all servers.
- Backend server have installed .NET 6 SKD  
- Frontend server have installed Anuglar CLI / NPM / NodeJS
- Configuration files/script copied to backend server required to run .NET projects (Environment wise)
