variable "project" {
  description = "GCP project id"
  type        = string
}
 
variable "region" {
  description = "GCP region"
  type        = string
}
 
variable "zone" {
  description = "GCP zone"
  type        = string
}
 
variable "machine_type" {
  description = "VM machine type"
  type        = string
}
 
variable "instance_count" {
  description = "Initial MIG size (starting instances)"
  type        = number
  default     = 2
}
