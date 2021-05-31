variable "region_1" {
    type        = string
    description = "First Region"
}

variable "region_2" {
    type        = string
    description = "Second Region"
}

variable "profile" {
    type        = string
    description = "The profile used to create resources"
}

variable "main_table_name" {
    type        = string
    description = "Name of our main resource"
}

variable "aux_table_name" {
    type        = string
    description = "Name of our auxillary resource"
}

variable "owner" {
  type        = string
  description = "The owner of the infrastructure"
}