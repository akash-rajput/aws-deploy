#!/bin/bash

circleci config pack src >orb.yml
circleci orb validate orb.yml
circleci orb publish orb.yml snippet-software/aws-deploy@0.0.1
rm -rf orb.yml
