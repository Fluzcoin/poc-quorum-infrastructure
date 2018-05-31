terragrunt = {
  remote_state {
    backend = "s3"
    config {
      profile    = "fluzfluz"
      region     = "eu-west-1"
      bucket     = "fluzfluz-tfstate"
      key        = "${path_relative_to_include()}/terraform.tfstate"
      encrypt    = true
      lock_table = "fluzfluz-terraform-lock"
    }
  }
}
