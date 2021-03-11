# openshift-kubectl-trace
Making https://github.com/iovisor/kubectl-trace work in OpenShift 4.x


### Build

#### kubectl-trace
Use source to build:
https://github.com/iovisor/kubectl-trace#source

Move the binary to a `PATH` directory.

#### Container

Use already available container listed below or build from
`images/4.7/Dockerfile`

### Security

Change the namespace within `manifests/serviceaccount.yaml`
```
oc apply -f manifests/serviceaccount.yaml
```

### Example

This will trace for five minutes the number of calls to:
* `govmomi/session.(*Manager).SessionIsActive`
* `machine-api-operator/pkg/controller/vsphere/session.GetOrCreate`
* `govmomi.NewClient`

To understand if while running if vCenter sessions are cached.

```
oc trace run --imagename=quay.io/jcallen/trace-runner:4.7 --serviceaccount=kubectltrace pod/machine-api-controllers-c5c796b7f-65l4s -c machine-controller -f tools/mao-vsphere.bt
```

### TODO

* Determine why some existing bpftrace scripts do not function properly:
  * https://github.com/brendangregg/bpf-perf-tools-book
  * https://github.com/iovisor/bpftrace/tree/master/tools

