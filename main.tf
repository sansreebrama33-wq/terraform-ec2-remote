resource "aws_security_group" "terraform-sg" {
    name        = "terraform-sg-sansree"
    description = "Allows SSH and HTTP access"

    ingress {
        description = "SSH"
        protocol    = "TCP"
        from_port   = 22
        to_port     = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "HTTP"
        protocol    = "TCP" 
        from_port   = "80"
        to_port     = "80"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress  {
        description = "Allow all outbound traffic"
        protocol    = "-1"
        from_port   = "0"
        to_port     = "0"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "terraform-sg"
    }
}

resource "aws_instance" "web" {
    ami           = var.os
    instance_type = var.instance_type
    key_name      = var.key_name

    vpc_security_group_ids = [ 
        aws_security_group.terraform-sg.id
     ]

    tags = {
      Name = var.name
    }
}

