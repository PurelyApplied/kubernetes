load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "k8s.io/kubernetes/test/instrumentation/levee",
    visibility = ["//visibility:private"],
    deps = [
        "//vendor/github.com/google/go-flow-levee/pkg/levee:go_default_library",
        "//vendor/golang.org/x/tools/go/analysis/singlechecker:go_default_library",
    ],
)

go_binary(
    name = "levee",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "package-srcs",
    srcs = glob(["**"]),
    tags = ["automanaged"],
    visibility = ["//visibility:private"],
)

filegroup(
    name = "all-srcs",
    srcs = [":package-srcs"],
    tags = ["automanaged"],
    visibility = ["//visibility:public"],
)
