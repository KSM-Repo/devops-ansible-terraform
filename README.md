The following steps are required to setup AWS. These steps can be automated as well, but for the time being they will need to be setup manually

1. Create an AWS EC2 instance with a policy attached to the role for full access. Create a user 'srdevops' and download access keys as follows:
   * Login into AWS Console and browse to IAM --> Users
   * Click on 'Create New Users'
   * Enter User Name: srdevops
   * Select: Generate an access key for each user
   * Click on Create and download credentials
   * Assign Admin policy to the newly created user: AdministratorAccess
2. SSH to the AWS EC2 instance
3. CD to home directory and run the following commands (while following the instructions): 
   * sudo apt-get install git
   * git clone https://github.com/KSM-Repo/devops-ansible-terraform.git
   * cd devops-ansible-terraform
   * ./setup.sh
   * Follow instructions to save the ssh keys to ~/.ssh/id_rsa  
4. To complete configuration run:
   * ./configure.sh
   * Provide Access Key and Secret Key from the downloaded user credentials (set region as 'us-east-1')
5. Run the following command to provision the resources:
   * terraform apply
6. Get the public IP address of the newly created instance in AWS and enter it in the browser
7. Follow the steps to configure Wordpress
8. If you are using the terraform.tfvars without modifying, then use the following:
   * Database Name: srdevopsdb
   * Username: srdevops
   * Password: srdevopspass
   * Database Host: Get the RDS endpoint from AWS console (without the port :3306)
   * Click on Submit
9. After you are done, you can use the following command to destroy all the initialized resources
   * terraform destroy 
