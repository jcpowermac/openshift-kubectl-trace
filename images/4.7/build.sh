#!/bin/bash

podman build -t quay.io/jcallen/trace-runner:4.7 -f Dockerfile .

podman push quay.io/jcallen/trace-runner:4.7

