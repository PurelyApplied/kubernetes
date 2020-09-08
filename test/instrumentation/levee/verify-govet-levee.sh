#!/usr/bin/env bash

# Copyright 2020 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# TODO: This script has evolved to the point of just being a wrapper for `make vet`.
# It might be cleaner to simply invoke `make vet -vettool=...` or `hack/verify-govet.sh` with arguments directly.
# It has also iterated to a point that it that it doesn't really belong in //test/instrumentation anymore.

# This script vets all *.go files by running `go vet -vettool=levee`.
# It is equivalent to `make vet` with appropraite flags.
# Usage: `test/instrumentation/levee/verify-govet-levee.sh`.

set -o errexit
set -o pipefail

KUBE_ROOT=$(dirname $(realpath "${BASH_SOURCE[0]}"))/../../../
BAZEL_OUT_DIR="$KUBE_ROOT/bazel-bin"

# Warn future developers against trying to link this into an sh_test
if [ -e "${TEST_BINARY}" ]; then
  echo "Due to requiring build environment and artifacts, vet must be run via make, not Bazel."
fi

build_levee () {
  pushd ${KUBE_ROOT} &> /dev/null
    bazel build //test/instrumentation/levee:levee &> /dev/null
  popd &> /dev/null

  find ${BAZEL_OUT_DIR}/test/instrumentation/levee -name levee -type f
}

# Accept an argument for an alternate test binary, or build locally.
LEVEE_BIN=${1:-$(build_levee)}
CONFIG_FILE=${KUBE_ROOT}/test/instrumentation/levee/testdata/levee-config.json

# make vet runs on all packages when no targets are provided
make vet WHAT="-vettool=${LEVEE_BIN} -config=${CONFIG_FILE}"
