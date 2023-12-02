# aws-terraform-ubuntu

 This is a container that allows me to run terraform workflows with the acloud guru sandbox easily

## Navigation

- [Main Readme](../README.md)

## building the container

- to build the container I used the command below
  ``` bash
   docker build -t stake25/aws-terraform-ubuntu:latest -t stake25/aws-terraform-ubuntu:1.0 .                                                                                                
  ```

## running the container

- I use an alias in order to run this with the current workspace

  ``` bash
  alias daws='docker run -it --rm -v ${PWD}:/work -w /work --entrypoint /bin/bash stake25/aws-terraform-ubuntu' 
  ```
  
- you must configure aws with the sandbox credentials each time it is run below is an example setup script

  ``` bash
  #!/bin/sh

  # configure aws
  aws configure

  # clean up previous key
  rm my-key-pair.pem
  aws ec2 delete-key-pair --key-name my-key-pair

  # create new key pair
  aws ec2 create-key-pair --key-name my-key-pair --query 'KeyMaterial' --output text > my-key-pair.pem

  ```
  