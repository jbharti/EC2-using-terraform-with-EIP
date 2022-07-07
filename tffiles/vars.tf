variable "security_groups" {
  description = "The security groups to be attacked to the machine"
}

variable "availability_zone" {
  description = "The availability zone for the machine."
}

variable "subnet_id" {
  description = "THe subnet in which it is to be provisioned."
}

variable "Cost" {
  description = "To Help track the cost of the resourse created."
}

variable "VantaOwner" {
  description = "To Help track the VantaOwner of the resourse created."
}

variable "VantaNonProd" {
  description = "To Help track the VantaNonProd of the resourse created."
}

variable "VantaDescription" {
  description = "To Help track the VantaDescription of the resourse created."
}

variable "VantaContainsUserData" {
  description = "To Help track the VantaContainsUserData of the resourse created."
}

variable "VantaUserDataStored" {
  description = "To Help track the VantaUserDataStored of the resourse created."
}
variable "app" {
  description = "Value Uniquie to app i.e AMI, instance type, private ip and name of the machine"
  type = object({
    ami             = string,
    instance_type   = string,
    private_ips     = list(string),
    name            = string
    eipallocid      = string    
  })
}
