#!/bin/bash

echo "y" | fly -t pcfnl set-pipeline -p simple-boot -c pipeline.yml -l ~/.concourse/simple-boot.ci.yml

