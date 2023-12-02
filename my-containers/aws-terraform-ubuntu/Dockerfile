FROM ubuntu

# # last session cleanup
# rm -rf **.pem

# install prereqs
RUN apt update && apt install -y jq gzip vim tar git unzip wget curl gpg gnupg software-properties-common

# install terraform
RUN wget https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_linux_amd64.zip
RUN unzip terraform_1.3.7_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN chmod +x /usr/local/bin/terraform
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# install less
RUN wget http://archive.ubuntu.com/ubuntu/pool/main/l/less/less_551-1_amd64.deb
RUN dpkg -i less_551-1_amd64.deb

# install aws-cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# configure aws
# RUN aws configure
# RUN aws ec2 create-key-pair --key-name my-key-pair --query 'KeyMaterial' --output text > my-key-pair.pem

# cleanup
RUN rm -rf **less**.deb* **terraform**.zip* aws**.zip
