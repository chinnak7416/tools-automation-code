terraform {
  backend "s3" {
    bucket = "terraform-state78"
    key    = "tools/state"
    region = "us-east-1"
  }
}