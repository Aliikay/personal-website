#!/bin/sh
gh workflow run deploy.yml --ref main
gh run list --workflow="deploy.yml"
