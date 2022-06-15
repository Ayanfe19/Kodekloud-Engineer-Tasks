# 1. connect to the server via SSH.
# 2. Use sed -i to replace #PermitRootLogin yes with PermitRootLogin no 
#    in the /etc/shh/sshd_config file
# 3. Print out to file using cat to verify the change.
# 4. Restart the server and exit

# ssh username@ip-address, example...
ssh banner@172.16.238.12

# Use vi editor to edit the config file, Pres i to enter insert mode
# Make the changes
# Use :wq! to save
ssh vi /etc/ssh/sshd_config

# Restart the server
sudo systemctl restart sshd


####################################################
#                                                  #
# You can combine steps 2 to 4 as shown here.      #
#                                                  #
####################################################
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config ; sudo cat /etc/ssh/sshd_config ; sudo systemctl restart sshd ; exit

