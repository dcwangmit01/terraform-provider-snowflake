variable "share_name" {
  type = string
}

variable "privileges" {
  type = list(string)
}

variable "database" {
  type = string
}

variable "schema" {
  type = string
}

variable "table_name" {
  type = string
}

variable "view_name" {
  type = string
}
