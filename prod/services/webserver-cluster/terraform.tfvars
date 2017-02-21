terragrunt = {
  # Configure Terragrunt to use DynamoDB for locking
  lock = {
    backend = "dynamodb"
    config {
      state_file_id = "prod/services/webserver-cluster"
    }
  }
  # Configure Terragrunt to automatically store tfstate files in S3
remote_state = {
    backend = "s3"
    config {
      encrypt = "true"
      bucket = "terra-up-and-running-state"
      key = "prod/services/webserver-cluster/terraform.tfstate"
      region = "us-east-1"
    }
  }
}

















