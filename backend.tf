terraform {
  backend "s3" {
    bucket = "tier3tfstatetimour"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}