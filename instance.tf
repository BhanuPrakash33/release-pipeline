resource "aws_instance" "kubeadm" {
  ami = var.AMIS[var.AWS_REGION]

  instance_type = "t2.medium"

  # the security group
  vpc_security_group_ids = [aws_security_group.kubeadm-sg.id]

  # the public SSH key
  key_name = aws_key_pair.kubeadm-keypair.key_name

  tags = {
      Name = "kubeadm"
  }
  
 

provisioner "remote-exec" {
  
 connection {
    type = "ssh"
    host = aws_instance.kubeadm.public_ip
    user = "ubuntu"
    private_key = file("kubeadm-key")
    }
  
    inline = [
      "sudo ufw allow 22/tcp"
      ]
  }


}

