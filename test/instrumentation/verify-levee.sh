set -o errexit
set -o pipefail

set -x


KUBE_ROOT=$(dirname "${BASH_SOURCE[0]}")/../..
BAZEL_OUT_DIR="$KUBE_ROOT/bazel-bin"
BAZEL_GEN_DIR="$KUBE_ROOT/bazel-genfiles"
METRICS_LIST_PATH="test/instrumentation/stable-metrics-list.yaml"

# detect if run from bazel
if [ -z "${TEST_BINARY}" ]; then
  bazel build //test/instrumentation:list_stable_metrics

  if [ -d "$BAZEL_OUT_DIR" ]; then
    OUTPUT_FILE="$BAZEL_OUT_DIR/$METRICS_LIST_PATH"
  else
    # Handle bazel < 0.25
    # https://github.com/bazelbuild/bazel/issues/6761
    OUTPUT_FILE="$BAZEL_GEN_DIR/$METRICS_LIST_PATH"
  fi
else
  OUTPUT_FILE="$KUBE_ROOT/$METRICS_LIST_PATH"
fi

if diff -u "$KUBE_ROOT/test/instrumentation/testdata/stable-metrics-list.yaml" "$OUTPUT_FILE"; then
  echo PASS
  exit 0
fi

echo 'Diffs in stable metrics detected, please run "test/instrumentation/update-stable-metrics.sh"'
exit 1



# Hackjob to get import path names
bazelisk query "kind(go_library, staging/... + pkg/...)" --output xml > .rules.xml
sed -i "s/xml version=\"1.1\"/xml version=\"1.0\"/" .rules.xml

xmllint --xpath '//*/string[@name="importpath"]/@value ' .rules.xml > .importpaths
sed -i "s/value=\"\(.*\)\"/\\1/" .importpaths

 # TODO
grep -v windows .importpaths |\
  xargs go vet -vettool ../go-flow-levee/levee -config $(pwd)/../go-flow-levee/configuration/example-config.json


#    make vet WHAT='-vettool=/usr/local/google/home/patrhom/workspace/kubernetes/../go-flow-levee/levee -config=/usr/local/google/home/patrhom/workspace/kubernetes/../go-flow-levee/configuration/example-config.json'
