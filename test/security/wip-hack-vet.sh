set -x

cd /usr/local/google/home/patrhom/workspace/kubernetes

# Hackjob to get import path names
bazelisk query "kind(go_library, staging/... + pkg/...)" --output xml > .rules.xml
sed -i "s/xml version=\"1.1\"/xml version=\"1.0\"/" .rules.xml

xmllint --xpath '//*/string[@name="importpath"]/@value ' .rules.xml > .importpaths
sed -i "s/value=\"\(.*\)\"/\\1/" .importpaths

 # TODO
grep -v windows .importpaths |\
  xargs go vet -vettool ../go-flow-levee/levee -config $(pwd)/../go-flow-levee/configuration/example-config.json


#    make vet WHAT='-vettool=/usr/local/google/home/patrhom/workspace/kubernetes/../go-flow-levee/levee -config=/usr/local/google/home/patrhom/workspace/kubernetes/../go-flow-levee/configuration/example-config.json'
