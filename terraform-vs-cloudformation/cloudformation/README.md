
# Create

```
aws cloudformation deploy --template-file template.yml --stack-name TestCFnEC2
```

# Delete

```
aws cloudformation delete-stack --stack-name TestCFnEC2
```

# Stack Detect by CloudFormation

async detection

```
aws cloudformation detect-stack-drift --stack-name TestCFnEC2
{
    'drift-detection-id': '96760b40-8f7b-11eb-8515-069db2e9c955'
}
```

get result from drift detection id

```
aws cloudformation describe-stack-drift-detection-status --stack-drift-detection-id 96760b40-8f7b-11eb-8515-069db2e9c955
```
