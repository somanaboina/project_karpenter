provider "aws" { 
  region                 =      var.region
  allowed_account_ids    =    [var.aws_account_id]
}

terraform { 
  required_providers { 
    aws = { 
      source   = "hashicorp/aws"
      version  = "~>5.0"
    }
  }
}

resource "aws_s3_bucket" "state" { 
    bucket    =    "${var.aws_account_id}
    force_destroy  = true
}


