variable "ami_id" {
    type = string 
    #default = "ami-09c813fb71547fc4f"   
}

variable "instance_type" {
    type = string 
    validation {
        condition = contains(["t3.micro","t3.small","t3.medium"], var.instance_type)
        error_message = "instance_type can only between t3.micro,t3.small,t3.medium"
    }
}

variable "security_group_ids" {
    type = list(string)
}