# aws-terraform-ubuntu

 This is a container that allows me to run terraform workflows with the acloud guru sandbox easily

## Navigation

- [Main Readme](../README.md)

## initial setup every sandbox run

- you must configure aws with the sandbox credentials each time it is run

  ``` bash
  # configure aws
  aws configure
  aws ec2 create-key-pair --key-name my-key-pair --query 'KeyMaterial' --output text > my-key-pair.pem
  ```
  