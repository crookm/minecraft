terraform {
  required_version = ">= 0.14.0"
  backend "remote" {
    organization = "aoraki"
    workspaces {
      name = "minecraft"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.31.0"
    }
  }
}
