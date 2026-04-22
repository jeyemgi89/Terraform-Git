variable "virginiajmg_cidr" {
  description = "CIDR Virginia"
  type        = string

}

variable "subnet" {
  description = "Lista de subnets"
  type        = list(string)

}

variable "sg_ingress_cidr" {
  description = "CIDR for ingress traffic"
  type        = string

}

variable "ingress_port_list" {
  description = "Lista de puerto de ingreso"
  type        = list(number)

}