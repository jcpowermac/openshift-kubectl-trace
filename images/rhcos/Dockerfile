FROM quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:b0a75146e88eb861bf7f1d8a249a8ccd0bfa76d83eecac6e221f43a2044e6891

RUN rpm-ostree install bpftrace && \
    ostree container commit
