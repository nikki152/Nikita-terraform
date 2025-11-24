terraform {
  backend "gcs" {
    bucket = "my-terraform-state-bucket88" # <- replace this with the actual bucket name after Step 1 apply
    prefix = "terraform/state"
  }
}
