# nrc-aws

### Prerequisites:

1. Configure AWS credentials in `.aws` file. If not configured, `aws_secret_key` and `aws_access_key` need to be added to each task.

### VPC Playbook

```
AWS_PROFILE=profile-name ansible-playbook vpc-playbook.yml
```

### CloudFormation Scripts

#### ECS Staging Cluster

```
aws cloudformation create-stack \
    --stack-name staging-cluster \
    --capabilities CAPABILITY_IAM \
    --template-body file://templates/ecs-cluster-cf.template \
    --parameters ParameterKey=KeyPair,ParameterValue=EffectiveDevOpsAWS \
    ParameterKey=VpcId,ParameterValue=vpc-0d905a36eb3d82fd1 \
    ParameterKey=PublicSubnet,ParameterValue=subnet-08adc574879125d08\\,subnet-0487574f17800b181\\,subnet-067fcf17a259dd767\\,subnet-02ded1a452e569daa

{
    "StackId": "arn:aws:cloudformation:us-west-2:372607532290:stack/staging-cluster/73765150-61f0-11e9-9bd4-0630890b2eee"
}
```

#### Staging Application Load Balancer

```
aws cloudformation create-stack --stack-name staging-alb --capabilities CAPABILITY_IAM --template-body file://templates/helloworld-ecs-alb-cf.template

{
    "StackId": "arn:aws:cloudformation:us-west-2:372607532290:stack/staging-alb/19249030-61f1-11e9-b731-02a485342252"
}
```
