#!/bin/bash
podman run --rm -it --network host --privileged -v /sys:/sys -v /proc:/proc quay.io/jcallen/trace-runner:4.7 /bin/bash

