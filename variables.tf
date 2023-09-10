variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filters" {
  description = "owner and filter of the ami to look for"
  type = object({
    filter  = string
    owner   = string
  })
  
  default = {
    filter  = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner   = "979382823631" # Bitnami
  } 
}

variable "env" {
  description = "the enviroment of the deployment"

  type = object({
    name           = string
    network_prefix = string
  })
  
  default = {
    name            = "dev"
    network_prefix = "10.0"
  }
}


variable "min_size" {
  description = "minimum number of instances"
  default = 1
}
variable "max_size" {
  description = "maximum number of instances"
  default = 2
}
