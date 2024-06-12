terraform {
  backend "s3" {
    bucket = "tf-78-state"
    key    = "tools/state"
    region = "us-east-1"
  }
}