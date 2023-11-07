# Variable 'user' in the install-jenkins.tf and the one in main.tf have to match
# Change the key-pair accordingly
terraform init
terraform apply -auto-approve

# Connect to the jenkins server
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword
# <public-IP:8080>

# Install the 'Ansible' and 'Terraform' plugins
# Install ansible and terraform as a tool in the jenkins server
# Run the command 'which ansible' and 'which terraform' in the jenkins server;
## to find out the path to ansible/terraform executables directory
# Uncheck 'Install automatically' in the Terraform section

# Add your private key-pair, GitHub token, Ansible-vault password and Slack token as credentials in jenkins server
# GitHub token (Username with password); username,token-name | password-token;
## description, github (optional)
# Private key-pair (SSH Username with private key); ID, private-key-pair (without pem);
## description, ansible (optional) | username, target-host-user (ec2-user) | private-key, private-key (trimmed)
# Ansible-vault password (Secret text); secret, password to the ansible-vault file | ID, AnsibleVaultPassword (optional);
## description, AnsibleVaultPassword (optional)
# Slack token (Secret text); secret, token | ID, slack-token (optional) | description, slack-token (optional)
# Configure Slack in the global system settings; workspace (devops14tr) & credentials (slack-token)

# Create parameters for some env variables to hide and store their values in the parameter store of AWS Systems Manager
# db_name and db_password

# Change some of the values in the main.tf, which is stated in the file
# Change the AWS acc IDs in the playbook
# You may change the container names, it has no effect 
# Change the key-pair name in the jenkins file

# Add a webhook to the pipeline GitHub repo
# http://<jenkins-server-publicIP:8080/github-webhook/

# Give a name to the pipeline to be created
# Add a description
# Add the GitHub project
# Add GitHub hook trigger for GITScm polling
# Add pipeline script from SCM
# Add the GitHub address and the credential
# Change the branches to build if needed
# Build now!!

# http://<react-server-publicIP>:80/
# To destroy the build, give approval in the stage view
# Remember, jenkins server is still running
