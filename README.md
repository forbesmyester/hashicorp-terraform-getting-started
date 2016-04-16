# What I did...

Downloaded Terraform from [here](https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_linux_amd64.zip).

Extracted and install Terraform.

    mkdir terraform-bin
    cd terraform-bin
    unzip /tmp/terraform_0.6.14_linux_amd64.zip
    cd ../
    export PATH=$PATH:terraform-bin

I then followed through all the tutorials from the [Terraform Getting Started Tutorial]() except Modules.

During this process I wanted to use the JSON format and was for a while but then I wanted to comment the configuration file, the JSON format does not have a comment syntax however so I switched over to the `.tf` format.

To execute run the following

    terraform plan -var "aws_access_key_id=$AWS_ACCESS_KEY_ID" -var "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY"

