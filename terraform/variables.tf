variable "region" {
  default = "us-east-2"
}
variable "AmiLinux" {
  type = "map"
  default = {
    us-east-2 = "ami-0b59bfac6be064b78"
  }
  description = "I add only 1 regions (Ohio) to show the map feature but you can add all the r"
}
variable "aws_access_key" {
  default = ""
  description = "the user aws access key"
}
variable "aws_secret_key" {
  default = ""
  description = "the user aws secret key"
}
variable "vpc-fullcidr" {
    default = "172.35.0.0/16"
  description = "the vpc cdir"
}
variable "Subnet-Public-AzA-CIDR" {
  default = "172.35.0.0/24"
  description = "the cidr of the subnet"
}
variable "Subnet-Private-AzA-CIDR" {
  default = "172.35.3.0/24"
  description = "the cidr of the subnet"
}
variable "key_name" {
  default = "hym-rak-ohio"
  description = "the ssh key to use in the EC2 machines"
}


