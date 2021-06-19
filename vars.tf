variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "PATH_TO_PRIVATE_KEY" {
 default = "kubeadm-key"
}

variable "PATH_TO_PUBLIC_KEY" {
 default = "kubeadm-key.pub"
}

variable "AMIS" {
 type = map(string)
 default = {
 ap-southeast-2 = "ami-0f39d06d145e9bb63"
 ap-south-1 = "ami-04bde106886a53080"
 us-east-2 = "ami-059d836af932792c3"
 }
}

