import boto3

ecr_client = boto3.client('ecr') #ref to ecr aws document

repository_name = "cloud-devops-repo"
response = ecr_client.create_repository(repositoryName=repository_name)

repository_uri = response ['repository']['repositoryUri']
print(repository_uri)


##help to create a new repository into AWS ECR Service