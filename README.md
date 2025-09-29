
# 🚀 Project Name
This project contains my solutions for the Lufthansa technical interview process.



## 📦 Installation

Clone the repo:

```bash
git clone https://github.com/Arbs28/Lufthansa-technical-interview.git
cd infrastructure
```
Create a storage to store the terraform state file via Azure GUI: 
1. Create a resource group
2. Create a Azure blob storage and reference the just created resource group there
3. Change the terraform backend configuration keys in main.tf

To deploy the terraform make sure to have an active Azure session:
```bash
  az login
  //select subscription
```
The fun part 

```bash
terraform init # Initialize the backend
terraform plan # Check what is going to be created
terraform apply # Magic
```


## About the infrastructure in this project

Firstly we have the inital config where we reference the cloud provider.

After that we configure the backend which has the state file with all of our resources

Then we start with the resources specified in the document:
1. Created the resource group
2. Then we create the virtual network where our databricks workspace later will be living
3. Inside of it are a couple of things public/private subnets also security groups and then the needed policies for Vnet-injected Databricks 
4. Then we create the data lake where the dataset specified in the requirements will be uploaded
5. Then the unity catalog which is really important for the databricks workspace to store the delta tables(our case the bronze,silver and gold ones)
6. Creating the Databricks workspace which should be premium due to vnet injection supported on premium and above plans.