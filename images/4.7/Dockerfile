FROM quay.io/iovisor/kubectl-trace-bpftrace:latest as kubectl-trace-runner

FROM registry.svc.ci.openshift.org/ocp/4.7:base
COPY --from=kubectl-trace-runner /bin/trace-runner /bin/trace-runner
COPY installpkgs.sh /
RUN chmod +x /installpkgs.sh && ./installpkgs.sh

