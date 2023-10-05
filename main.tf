terraform {
 backend "azurerm" {
   resource_group_name = "mbirn_demo"
   storage_account_name = "mbirnsa"
   container_name = "mbirndemo"
   key = "dev.terraform.tfstate"
 }
}

module "RG" {
  source = "./modules/RG"
  rgname = var.rgname
  location = var.location
}
