### Terraform

#### Ansible -- Configuration Management tool --OR-- CAC (configuration as code)

#### Terraform -- IAC (Infrastructure as code)

### Create InfraStructure Manually
```
1. resources created manually
2. takes more time
3. follow sequence
    - create sg
    - create ec2
    - create r53 record
4. we need to check resource manually note them
5. cost analysis
```

### InfraStructure as code
```
1. version control
2. same infra across environments -- DEV,QA,PROD,...etc
3. CRUD
4. inventory (list of resources to create project)
5. dependency (automatically resolve)
6. cost analysis (if cost increase then delete unwanted resources easily)
7. code reuse (terraform modules)
8. state management (implicit feature)
```

### Terraform works with providers

### Create EC2
```
1. provider configuration
2. create sg
3. create ec2
```