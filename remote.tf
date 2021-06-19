resource "null_resource" "allow-ufw" {
  
    connection {
    type = "ssh"
    host = aws_instance.kubeadm.public_ip
    user = "ubuntu"
    private_key = file("kubeadm-key")
    }

provisioner "remote-exec" {
    inline = [
      "sudo ufw allow 22/tcp",
      
    ]
  }

  depends_on = [ aws_instance.kubeadm ]

  }
