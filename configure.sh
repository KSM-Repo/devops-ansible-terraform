#!/bin/bash 

ssh-agent bash
ssh-add
aws configure --profile srdevops
