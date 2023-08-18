variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}
variable "public_key" {
  type      = string
  sensitive = true
}

variable "source_image_reference" {
  type = object({
    publisher = string
    offer =string
    sku=string
    version=string
  })
  
  description = ""
}

variable "rg_name" {
  type = string
  description = ""
}

variable "location" {
  type = string
  description = ""
}

variable "admin_user" {
  default = "adminuser"
}

variable "name" {
  type = string
  description = ""
  default = "pike"
}


variable "size" {
  type = string
  description = "(optional) describe your variable"
  default = "Standard_B1ls"
}

variable "subnet_id" {
  type = string
  description = ""
}