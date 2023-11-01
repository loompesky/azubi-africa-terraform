
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}


provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3" 
  instance_type = "t2.micro"

  tags = {
    Name = "AppServerInstance"
  }
}

#AdventureTech-PF-bucket

resource "aws_s3_bucket" "azubi" {
  bucket = "adventuretech-pf-bucket"
}

resource "aws_s3_bucket_ownership_controls" "azubi" {
  bucket = aws_s3_bucket.azubi.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "azubi" {
  depends_on = [aws_s3_bucket_ownership_controls.azubi]

  bucket = aws_s3_bucket.azubi.id
  acl    = "private"
}

/*
resource "aws_s3_bucket" "azubi" {
  bucket = "natureescape-pf-bucket"
}
*/
resource "aws_s3_bucket" "africa" {
  bucket = "datasummit-pf-bucket"
}

resource "aws_s3_bucket_ownership_controls" "africa" {
  bucket = aws_s3_bucket.africa.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "africa" {
  depends_on = [aws_s3_bucket_ownership_controls.africa]

  bucket = aws_s3_bucket.africa.id
  acl    = "private"
}


resource "aws_s3_bucket" "azuca" {
  bucket = "natureescape-pf-bucket"
}

resource "aws_s3_bucket_ownership_controls" "azuca" {
  bucket = aws_s3_bucket.azuca.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "azuca" {
  depends_on = [aws_s3_bucket_ownership_controls.azuca]

  bucket = aws_s3_bucket.africa.id
  acl    = "private"
}

  #tags = {
    #Name        = "My bucket"
   # Environment = "Dev"
  #}
#}