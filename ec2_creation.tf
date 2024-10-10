provider "aws" {
  region = "ap-south-1"  # Correct region for Asia Pacific (Mumbai)
}

resource "aws_instance" "ravi_test_instance" 
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"                # Instance type

  tags = {
    Name = "Ravi_test"
  }
  
  # key_name = "your-key-name"  # Uncomment and specify the key pair for SSH access
  # security_groups = ["your-security-group"]  # Uncomment and specify security groups if needed
}
