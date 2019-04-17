# VPC Creation

This role spins up a VPC with a public subnet and private subnet in each availability zone (AZ). It sets up an internet gateway, NAT gateway, and routing tables.

## Requirements

Configure AWS credentials. If not configured, `aws_secret_key` and `aws_access_key` need to be added to each task.

## Role Variables

**Please set the following variables in the default folder:**

- `aws_region`
- `vcp_name`
- `vpc_cidr_block`

**Please set the following variables in the vars folder:**

- `public_vpc_subnets`
- `private_vpc_subnets`

## Dependencies

## Example Playbook

    - hosts: localhost
      roles:
        - vpc
