#!/bin/bash

circleci config pack src >orb.yml
circleci orb validate orb.yml
circleci orb publish orb.yml snippet-software/aws-deploy@dev:alpha-1
rm -rf orb.yml
