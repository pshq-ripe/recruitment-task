variable "instance_type" {
  description = "The type of the GCP instance"
  type        = string
  default     = "e2-micro" # Default instance type
}

variable "project" {
  description = "GCP Project ID"
  type        = string
  default     = "cool-software-dev"
}

variable "region" {
  description = "The region for GCP resources"
  type        = string
  default     = "us-central1"
}

variable "region_zone" {
  description = "The zone for GCP resources"
  type        = string
  default     = "us-central1-a"
}

variable "environment" {
  description = "The environment for GCP resources"
  type        = string
  default     = "dev"
}

variable "instance_default_image" {
  description = "The default image for GCP instance"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "ssh_public_key" {
  description = "Public SSH key for instance access"
  type        = string
  default     = "ssh-rsa [YOUR_SSH_PUBLIC_KEY]"
}
