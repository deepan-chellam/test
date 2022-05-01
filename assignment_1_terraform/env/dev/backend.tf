

#s3 remote backend - state file storage with locking from dynamodb
terraform {
  backend "s3" {
    bucket = "sun-remote-backend"
    key = "remotedemo.tfstate"
    region = "us-east-2"
    dynamodb_table= "s3-state-lock"
  }
}
