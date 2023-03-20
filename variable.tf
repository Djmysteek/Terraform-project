variable "aws_region" {
    type = string
    default = "us_east_2"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        environment = "Dev"
        terraform = "true"
    }


}

variable "key_pair" {
    type = string
    default = "terraform_key"
  
}