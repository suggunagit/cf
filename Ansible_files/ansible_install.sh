sudo apt install get -y

Prerequisites

=> 3 Linux machines => Ubuntu 16 

<======Ansible Control Server=======>
=> Ansible Control Server
   enable password based authentication#       (/etc/ssh/sshd_config)
       service sshd restart    
   user => ansible
   Install Ansible

=>Python is present or not (Install)
   enable password based authentication
=>User => ansible    

==>Key based  authentication between acs and node for ansible user
==>ACS 
        >Generate keys => Public & Private Key
        >ssh-keygen
        >ssh-copy-id


=>ssh username@<ipaddress/hostname>
=>ssh -i <pathofkey>username@<ipaddress/hostname>
U should be become a root user sudo -i
vi /etc/ssh/sshd_config
Under this file change "password authentication=>Yes" 
If you have any changes in config file then
       =>Run the command "service sshd restart"
       =>To check the status of the command "service sshd status"
Add user Run the command "adduser ansible"
This user is required admin user permission
       =>visudo
       ===>Under %sudo ALL=(ALL:ALL) ALL       ===>Copy the command ansible 1
       ===>Other wise open usermod add user to group
exit for the root     
Command: su ansible



<===Ansible installation (Go to the  ansible site)===>
 sudo apt update
 sudo apt install software-properties-common
 sudo apt-add-repository --yes --update ppa:ansible/ansible
 sudo apt install ansible

<======Ansible Node=======>
Login in to the mechine
install python 2.7 on ubuntu 16.4

<======Configuration Between ansible control server and Node ==========>

ssh-keygen
ssh-copy-id <dnns ip>






