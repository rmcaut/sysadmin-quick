# Create ssh keys. -> SSH into an EC2 instance by sharing the public key
# Then append the content of the generated .pub key into the .ssh/authorized_keys file of the dest host
# Finally try to ssh using the private key

ssh-keygen -t ed25519 -f ~/.ssh/my_ec2_key -C "My-EC2-Key-Comment"
echo "ssh-ed25519 XXXX........" >> .ssh/authorized_keys

ssh -i .ssh/my_ec2_key <user>@<dest host FQDN or IP address>