terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {
}

module "id" {
  source = "./modules/id"
  input = "This string should be returned unaltered as module.id.output"
}

output "greeting" {
  value = module.id.output
}