provider "aws" {
  region = "us-east-1"
}


module "data-store" {
  source = "../../../modules/data-stores/mysql"
  db_password = "$${db_password}"
}
