# Automating AWS Infrastructure Deployment Using Terraform

**Overview**

This project provisions a highly available AWS infrastructure using Terraform. It includes a VPC, subnets across multiple availability zones, an internet gateway, security groups, EC2 instances, an S3 bucket for remote state storage, and an Application Load Balancer (ALB) for traffic distribution.

**Infrastructure Components**

- **VPC**: A custom Virtual Private Cloud (VPC) to isolate resources.

- **Subnets**: Two public subnets in different availability zones for high availability.

- **Internet Gateway**: Enables internet access for instances in public subnets.

- **Security Group**: Controls inbound and outbound traffic.

- **EC2 Instances**: Two instances deployed in separate subnets.

- **Application Load Balancer (ALB)**: Distributes traffic across EC2 instances.

- **S3 Bucket**: Stores the Terraform state file remotely.


**Setting Up the Infrastructure**
1. **Initialize Terraform**

   ```
   terraform init
   ```

2. **Plan the Deployment**

   ```
   terraform plan
   ```

3. **Deploy the Infrastructure**

   ```
   terraform apply 
   ```

**Destroying the Infrastructure**

To clean up and remove all created resources:

```
terraform destroy
```
