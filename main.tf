#This Terraform Code De ploys Basic VPC Infra.


terraform {
    backend "s3" {
    bucket = "chandustesting"
    key = "terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true

    }
}

#This is hardcode which needs to change every time so decalred in .tfvares
#provider "aws" {
 #   access_key = "AKIAUL4VP7XZPSAJWNVB"
  #  secret_key = "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"
   # region = "us-east-1"
#}




##output "ami_id" {
#  value = "${data.aws_ami.my_ami.id}"
#}
#!/bin/bash
# echo "Listing the files in the repo."
# ls -al
# echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
# echo "Running Packer Now...!!"
# packer build -var=aws_access_key=AAAAAAAAAAAAAAAAAA -var=aws_secret_key=BBBBBBBBBBBBB packer.json
#packer validate --var-file creds.json packer.json
#packer build --var-file creds.json packer.json
#packer.exe build --var-file creds.json -var=aws_access_key=AAAAAAAAAAAAAAAAAA -var=aws_secret_key=BBBBBBBBBBBBB packer.json
# echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
# echo "Running Terraform Now...!!"
# terraform init
# terraform apply --var-file terraform.tfvars -var="aws_access_key=AAAAAAAAAAAAAAAAAA" -var="aws_secret_key=BBBBBBBBBBBBB" --auto-approve
#https://discuss.devopscube.com/t/how-to-get-the-ami-id-after-a-packer-build/36
