variable "os" {
    type = string
    default = "ami-08f44e8eca9095668"
    description = "My AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "My ec2 instance size"
}

variable "name" {
    type = string
    default = "terraform-project" 
    description = "My EC2 instance name tag"
}

variable "key_name" {
    type = string
    default = "march-key-new"
    description = "My AWS key pair name for SSH access"
}

variable "bucketname" {
    type = string
    default = "remote-bucket-26"
    description = "My S3 bucket name tag"
}