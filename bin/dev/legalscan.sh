#!/usr/bin/env bash
PROJECTS="Cloud:Platform:sources:scf Cloud:Platform:sources:buildpacks"
for PROJECT in ${PROJECTS}; do
  for PACKAGE in $(osc ls $PROJECT); do
    osc submitrequest --yes --message=legal-review $PROJECT $PACKAGE ${PROJECT}:reviewed
  done
done
