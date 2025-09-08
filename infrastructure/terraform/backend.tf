terraform {
  backend "s3" {
    bucket = "195275668043-bucket-state-file-karpenter"
    region = "us-east-1"
    key    = "karpenter.tfstate"
  }
}
