# How to use AWS ECS tutorial
Example usage of ECS

![overview](https://cdn-media-1.freecodecamp.org/images/scH1QJHgrQ6NgA1jQo9ITuCiQGkAawRHmzSc)

*Thanks image from [here](https://cdn-media-1.freecodecamp.org/images/scH1QJHgrQ6NgA1jQo9ITuCiQGkAawRHmzSc)*

## Definition

- Cluster
    - a logic group of EC2 instances
- Task Definition
    - a blueprint that describes how a docker container should launch
- Task
    - instance of Task Definition (running container with settings defined)
- Service
    - long running Task of the same Task Definition, if a task in a service stops, the task is killed and a new task is launched
- Container Instance
    - EC2 instance that is part of an ECS Cluster and has docker and the ecs-agent running on it

*Read other AWS summary [here](https://github.com/howtoautomateinth/awesome-aws/blob/master/README.md)*

## Prerequsite
- [ECS CLI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html)
    - [configure](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_Configuration.html) access key
        -  Configuration information is stored in the ~/.ecs directory on macOS and Linux systems and in C:\Users\<username>\AppData\local\ecs on Windows systems.
= Create [ecsInstanceRole](https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html) for permission ECS
- Create EC2 key on datacenter you desired

## Steps

```
# configure going to use cluster for using in this tutorial
ecs-cli configure --cluster ec2-tutorial --default-launch-type EC2 --config-name ec2-tutorial --region us-west-2

# configure if you didn't configure above (this will related with permission that generated user have)
ecs-cli configure profile --access-key AWS_ACCESS_KEY_ID --secret-key AWS_SECRET_ACCESS_KEY --profile-name ec2-tutorial-profile

# create cluster with keypair (keypair refer to EC2 keypair that existing on AWS)
# also don't forget to create ecsInstanceRole on prerequsite step
ecs-cli up --keypair id_rsa --capability-iam --size 2 --instance-type t2.medium --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile --instance-role ecsInstanceRole

# deploy our compose file to ecs
# the command looks for a compose file called docker-compose.yml and an optional ECS parameters file called ecs-params.yml in the current directory
ecs-cli compose up --create-log-groups --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile

# verify process is up
ecs-cli ps --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile

# scale it
ecs-cli compose scale 2 --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile

# test service for grouping task as a long running
ecs-cli compose down --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile
ecs-cli compose service up --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile

# clean up
ecs-cli compose service rm --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile
ecs-cli down --force --cluster-config ec2-tutorial --ecs-profile ec2-tutorial-profile
```

### References
- [Loadbalance with ECS](https://medium.com/boltops/gentle-introduction-to-how-aws-ecs-works-with-example-tutorial-cea3d27ce63d)
