variable "db_username" {
  default = "strapi"
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "app_keys" {
  type      = string
  sensitive = true
}

variable "api_token_salt" {
  type      = string
  sensitive = true
}

variable "admin_jwt_secret" {
  type      = string
  sensitive = true
}
variable "transfer_token_salt" {
  type      = string
  sensitive = true
}
variable "encryption_key" {
  type      = string
  sensitive = true
}

variable "jwt_secret" {
  type      = string
  sensitive = true
}
