# Create k8s-cluster

You can now play around and learn k8s easily with your own cluster on top of ec2 instances. Follow below steps/scripts,

1) Create ssh key (if you want to change path of the key in TF code, check **~/k8s-cluster/vpc/main.tf**.......**line no.80**)

2) clone the code in your home  '**~**'    (**/home/mukesh** in my case, you can change it as per your need.)      https://github.com/mukrawat/k8s-cluster.git
 
3) There are 2 folders/modules inside **~/k8s-cluster** that is 'vpc' and 's3', you need to run both

NOTE: while running, vpc module you need to pass the cluster name. For example, globallogic.k8s

**#terraform init && terraform plan && terraform apply -auto-approve**

4) Wait for 5 or may be 10 minutes, login to the controller mahine using public IP from your local

**#ssh ubuntu@<public_ip>**

5) Now run below commands to create the cluster,

**#kops create cluster --name=<cluster name> --state=s3://<bucket_name> --node-count=<any integer i.e. 1 or 2 or 3>  --node-size=<t2.micro or may be t3.medium> --master-count=<integer i.e. 1> --master-size=<t2.micro or may be t3.medium> --vpc=<vpc_id> --zones=us-east-1b,us-east-1c --dns=private --yes**

NOTE:
- cluster name should ideally be a dns for internal communication between controller and cluster. For example, globallogic.k8s as passed above in point no.2
- you get the bucket name as output while running the s3 module, make a  note of that.
- node-count can be any integer. You may like to have 2 or 3 just for learning.
- master-count should be 1 'cause 1 master is enough to handle 2 or 3 nodes
- node size and master size can be t3.medium
- vpc_id you get while running vpc module, make a note of it.
- I have chosen us-east-1 region , but you can choose any for your need

6) Run this also, and you are good to go
**#kops update cluster --yes**

7) Now you can try a lot of things. Since your cluster is ready now you need to understand how objects are created in k8s cluster and how to write manifest files for the same.

#################################################################################################################################################################
#								Changes made on 11 June										#
#################################################################################################################################################################

- Now, since this code is changed to achieve modular approach, please make chnages in child_module.tf file inside '~/k8s-cluster' only. Thanks.
