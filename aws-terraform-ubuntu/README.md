# aws-terraform-ubuntu

 This is a container that allows me to run terraform workflows with the acloud guru sandbox easily

## Navigation

- [Main Readme](../README.md)

## running the container
- I use an alias in order to run this with the current workspace
  ``` bash
  alias daws='docker run -it --rm -v ${PWD}:/work -w /work --entrypoint /bin/bash stake25/aws-cli-ubuntu' 
  ```
- you must configure aws with the sandbox credentials each time it is run

  ``` bash
  # configure aws
  aws configure
  aws ec2 create-key-pair --key-name my-key-pair --query 'KeyMaterial' --output text > my-key-pair.pem
  ```
  