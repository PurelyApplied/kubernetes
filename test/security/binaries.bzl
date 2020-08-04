ALL_BINARIES=[
    "//vendor/k8s.io/sample-controller:sample-controller",
    "//vendor/k8s.io/sample-cli-plugin/cmd:cmd",
    "//vendor/k8s.io/sample-apiserver:sample-apiserver",
    "//vendor/k8s.io/kubectl/pkg/cmd/edit/testdata:edit",
    "//vendor/k8s.io/kube-openapi/cmd/openapi-gen:openapi-gen",
    "//vendor/k8s.io/kube-aggregator:kube-aggregator",
    "//vendor/k8s.io/code-generator/cmd/set-gen:set-gen",
    "//vendor/k8s.io/code-generator/cmd/register-gen:register-gen",
    "//vendor/k8s.io/code-generator/cmd/prerelease-lifecycle-gen:status-gen",
    "//vendor/k8s.io/code-generator/cmd/openapi-gen:openapi-gen",
    "//vendor/k8s.io/code-generator/cmd/lister-gen:lister-gen",
    "//vendor/k8s.io/code-generator/cmd/informer-gen:informer-gen",
    "//vendor/k8s.io/code-generator/cmd/import-boss:import-boss",
    "//vendor/k8s.io/code-generator/cmd/go-to-protobuf/protoc-gen-gogo:protoc-gen-gogo",
    "//vendor/k8s.io/code-generator/cmd/go-to-protobuf:go-to-protobuf",
    "//vendor/k8s.io/code-generator/cmd/defaulter-gen:defaulter-gen",
    "//vendor/k8s.io/code-generator/cmd/deepcopy-gen:deepcopy-gen",
    "//vendor/k8s.io/code-generator/cmd/conversion-gen:conversion-gen",
    "//vendor/k8s.io/code-generator/cmd/client-gen:client-gen",
    "//vendor/k8s.io/client-go/examples/workqueue:workqueue",
    "//vendor/k8s.io/client-go/examples/out-of-cluster-client-configuration:out-of-cluster-client-configuration",
    "//vendor/k8s.io/client-go/examples/leader-election:leader-election",
    "//vendor/k8s.io/client-go/examples/in-cluster-client-configuration:in-cluster-client-configuration",
    "//vendor/k8s.io/client-go/examples/dynamic-create-update-delete-deployment:dynamic-create-update-delete-deployment",
    "//vendor/k8s.io/client-go/examples/create-update-delete-deployment:create-update-delete-deployment",
    "//vendor/k8s.io/apiserver/pkg/admission/plugin/webhook/testing/main:main",
    "//vendor/k8s.io/apiextensions-apiserver:apiextensions-apiserver",
    "//vendor/github.com/onsi/ginkgo/ginkgo:ginkgo",
    "//vendor/github.com/go-bindata/go-bindata/go-bindata:go-bindata",
    "//test/typecheck:typecheck",
    "//test/typecheck:list",
    "//test/soak/serve_hostnames:serve_hostnames",
    "//test/list:list",
    "//test/integration/benchmark/jsonify:jsonify",
    "//test/integration/benchmark/extractlog:extractlog",
    "//test/instrumentation:instrumentation",
    "//test/images/sample-device-plugin:sample-device-plugin",
    "//test/images/resource-consumer/consume-cpu:consume-cpu",
    "//test/images/resource-consumer:resource-consumer",
    "//test/images/regression-issue-74839:regression-issue-74839",
    "//test/images/pets/peer-finder:peer-finder",
    "//test/images/nonewprivs:nonewprivs",
    "//test/images/metadata-concealment:metadata-concealment",
    "//test/images/busybox:hostname",
    "//test/images/apparmor-loader:apparmor-loader",
    "//test/images/agnhost:agnhost",
    "//test/e2e_node/runner/remote:remote",
    "//test/e2e_node/runner/local:local",
    "//test/e2e_node/environment:environment",
    "//test/e2e_kubeadm/runner/local:local",
    "//test/e2e/network/scale/localrun:localrun",
    "//test/conformance/kubeconform:kubeconform",
    "//test/conformance:conformance",
    "//staging/src/k8s.io/sample-controller:sample-controller",
    "//staging/src/k8s.io/sample-cli-plugin/cmd:cmd",
    "//staging/src/k8s.io/sample-apiserver:sample-apiserver",
    "//staging/src/k8s.io/kubectl/pkg/cmd/edit/testdata:edit",
    "//staging/src/k8s.io/kube-aggregator:kube-aggregator",
    "//staging/src/k8s.io/code-generator/cmd/set-gen:set-gen",
    "//staging/src/k8s.io/code-generator/cmd/register-gen:register-gen",
    "//staging/src/k8s.io/code-generator/cmd/prerelease-lifecycle-gen:status-gen",
    "//staging/src/k8s.io/code-generator/cmd/openapi-gen:openapi-gen",
    "//staging/src/k8s.io/code-generator/cmd/lister-gen:lister-gen",
    "//staging/src/k8s.io/code-generator/cmd/informer-gen:informer-gen",
    "//staging/src/k8s.io/code-generator/cmd/import-boss:import-boss",
    "//staging/src/k8s.io/code-generator/cmd/go-to-protobuf/protoc-gen-gogo:protoc-gen-gogo",
    "//staging/src/k8s.io/code-generator/cmd/go-to-protobuf:go-to-protobuf",
    "//staging/src/k8s.io/code-generator/cmd/defaulter-gen:defaulter-gen",
    "//staging/src/k8s.io/code-generator/cmd/deepcopy-gen:deepcopy-gen",
    "//staging/src/k8s.io/code-generator/cmd/conversion-gen:conversion-gen",
    "//staging/src/k8s.io/code-generator/cmd/client-gen:client-gen",
    "//staging/src/k8s.io/client-go/examples/workqueue:workqueue",
    "//staging/src/k8s.io/client-go/examples/out-of-cluster-client-configuration:out-of-cluster-client-configuration",
    "//staging/src/k8s.io/client-go/examples/leader-election:leader-election",
    "//staging/src/k8s.io/client-go/examples/in-cluster-client-configuration:in-cluster-client-configuration",
    "//staging/src/k8s.io/client-go/examples/dynamic-create-update-delete-deployment:dynamic-create-update-delete-deployment",
    "//staging/src/k8s.io/client-go/examples/create-update-delete-deployment:create-update-delete-deployment",
    "//staging/src/k8s.io/apiserver/pkg/admission/plugin/webhook/testing/main:main",
    "//staging/src/k8s.io/apiextensions-apiserver:apiextensions-apiserver",
    "//hack/make-rules/helpers/go2make:go2make",
    "//hack/make-rules:vet",
    "//hack/make-rules:verify",
    "//hack/make-rules:test-integration",
    "//hack/make-rules:test-e2e-node",
    "//hack/make-rules:test-cmd",
    "//hack/make-rules:test",
    "//hack/make-rules:cross",
    "//hack/make-rules:build",
    "//hack/conformance:conformance",
    "//hack:update-mirror",
    "//cmd/verifydependencies:verifydependencies",
    "//cmd/preferredimports:preferredimports",
    "//cmd/linkcheck:_linkcheck.exe-pure",
    "//cmd/linkcheck:_linkcheck-pure",
    "//cmd/linkcheck:_linkcheck-cgo",
    "//cmd/kubemark:_kubemark.exe-pure",
    "//cmd/kubemark:_kubemark-pure",
    "//cmd/kubemark:_kubemark-cgo",
    "//cmd/kubelet:_kubelet.exe-pure",
    "//cmd/kubelet:_kubelet-pure",
    "//cmd/kubelet:_kubelet-cgo",
    "//cmd/kubectl:kubectl",
    "//cmd/kubeadm:kubeadm",
    "//cmd/kube-scheduler:kube-scheduler",
    "//cmd/kube-proxy:kube-proxy",
    "//cmd/kube-controller-manager:kube-controller-manager",
    "//cmd/kube-apiserver:kube-apiserver",
    "//cmd/importverifier:importverifier",
    "//cmd/genyaml:_genyaml.exe-pure",
    "//cmd/genyaml:_genyaml-pure",
    "//cmd/genyaml:_genyaml-cgo",
    "//cmd/genswaggertypedocs:_genswaggertypedocs.exe-pure",
    "//cmd/genswaggertypedocs:_genswaggertypedocs-pure",
    "//cmd/genswaggertypedocs:_genswaggertypedocs-cgo",
    "//cmd/genman:_genman.exe-pure",
    "//cmd/genman:_genman-pure",
    "//cmd/genman:_genman-cgo",
    "//cmd/genkubedocs:_genkubedocs.exe-pure",
    "//cmd/genkubedocs:_genkubedocs-pure",
    "//cmd/genkubedocs:_genkubedocs-cgo",
    "//cmd/gendocs:_gendocs.exe-pure",
    "//cmd/gendocs:_gendocs-pure",
    "//cmd/gendocs:_gendocs-cgo",
    "//cmd/dependencycheck:vendorcycle",
    "//cmd/cloud-controller-manager:cloud-controller-manager",
    "//cmd/clicheck:clicheck",
    "//cluster/images/etcd/migrate:migrate",
    "//cluster/images/etcd/cp:cp",
    "//cluster/images/etcd-version-monitor:etcd-version-monitor",
    "//cluster/images/conformance/go-runner:go-runner",
    "//cluster/gce/ubuntu/mounter:mounter",
    "//cluster/gce/gci/mounter:mounter",
    "//cluster/gce/custom/mounter:mounter",
    "//cluster/gce/cos/mounter:mounter",
    "//cluster/addons/fluentd-elasticsearch/es-image:es-image",
    "//build/go-runner:go-runner",
]
