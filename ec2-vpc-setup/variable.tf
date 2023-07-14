variable "name" {
  description = "name of the project"
  type        = string
}
variable "region" {
  description = "region in which aws resource deployed"
  type        = string
}
variable "environment" {
  description = "environment name"
  type        = string
}
variable "cidr" {
  description = "Cidr range"
  type        = string
}
variable "public_subnets" {
  description = "public subnet range"
  type        = string

}

variable "private_subnets" {
  description = "private subnet range"
  type        = string

}
variable "availability_zones" {
  description = "availability_zones"
  type        = list(string)

}


variable "instance_type" {
  description = "instance type"
  type        = string
}