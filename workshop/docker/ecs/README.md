# How to use ECS tutorial
Example usage of ECS

## Definition
- Cluster
- Task Definition
    - describes how a docker container should launch
- Task
    - instance of Task Definition (running container with settings defined)
- Service
    - long running task of the same Task Definition
- Container Instance
    - EC2 instance that is part of an ECS Cluster and has docker and the ecs-agent running on it

*Read other AWS summary [here](https://github.com/howtoautomateinth/awesome-aws/blob/master/README.md)

## Prerequsite
- [ECS CLI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html)
    - [configure](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_Configuration.html) access key
        -  Configuration information is stored in the ~/.ecs directory on macOS and Linux systems and in C:\Users\<username>\AppData\local\ecs on Windows systems.
= Create [ecsInstanceRole](https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html) for permission ECS
- Create EC2 key on datacenter

# Steps
- 