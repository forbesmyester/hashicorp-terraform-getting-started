# What I did...

Downloaded Terraform from [here](https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_linux_amd64.zip).

Extracted and install Terraform.

    mkdir terraform-bin
    cd terraform-bin
    unzip /tmp/terraform_0.6.14_linux_amd64.zip
    cd ../
    export PATH=$PATH:terraform-bin

terraform plan -var "aws_access_key_id=$AWS_ACCESS_KEY_ID" -var "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY"

