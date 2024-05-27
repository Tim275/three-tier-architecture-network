# Multi-Tier Architecture on AWS using Terraform

multi-Tier- architecture on AWS



## 📌 Architecture Diagram
![multi-tier-architecture](https://github.com/mathesh-me/multi-tier-architecture-using-terraform/assets/144098846/14aeb752-ba87-4f51-87d5-bcf3000ee455)

## 🌟 Web Tier

The Web Tier is the entry point for incoming user requests. It typically includes:

- **Load Balancer**: Distributes traffic across multiple web servers.
- **Auto Scaling**: Automatically adjusts the number of web servers based on traffic.
- **Security Groups**: Controls incoming and outgoing traffic to the web servers.

### Web Tier Configuration

- [Launch Template Configuration](launch-template-web.tf)
- [Load Balancer Configuration](alb-web.tf)
- [Auto Scaling Configuration](asg-web.tf)
- [Security Group Configuration of Load balancer](alb-web-sg.tf)
- [Security Group Configuration of Auto Scaling Group](asg-web-sg.tf)

## 🚀 Application Tier

The Application Tier hosts the application servers responsible for running business logic and interacting with the database tier. Key components include:

- **Application Servers**: These run your application code and can be horizontally scaled.
- **Load Balancer**: Distributes traffic to the application servers.
- **Auto Scaling**: Automatically adjusts the number of web servers based on traffic.
- **Security Groups**: Controls incoming and outgoing traffic to the application servers.

### Application Tier Configuration

- [Launch Template Configuration](launch-template-app.tf)
- [Load Balancer Configuration](alb-app.tf)
- [Auto Scaling Configuration](asg-app.tf)
- [Security Group Configuration of Load balancer](alb-app-sg.tf)
- [Security Group Configuration of Auto Scaling Group](asg-app-sg.tf)

## 💽 Database Tier

The Database Tier stores and manages our application data. We use Amazon RDS for a managed database service. Key components include:

- **Amazon RDS**: A managed database service for MySQL/PostgreSQL/SQL Server databases.
- **Security Groups**: Control incoming and outgoing traffic to the database.

### Database Tier Configuration

- [DB Subnet group Configuration](db-subnet-group.tf)
- [Amazon RDS Configuration](rds.tf)
- [Security Group Configuration](db-sg.tf)


## 💼 Usage

### Scaling
- To scale the Web or Application Tier, use Auto Scaling configurations provided in the respective Terraform files. Adjust the desired capacity to match your scaling requirements.
### Database Management
- Access the Amazon RDS instance in the Database Tier to manage your data.
### Load Balancing
- Configure the load balancer in the Web and Application Tiers to distribute traffic evenly.
### Security Considerations
- Review and customize the security groups and network ACLs to meet your specific security requirements.


