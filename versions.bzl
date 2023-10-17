VERSIONS = {
    # This should match the version in `.ruby-version`
    # It must also be availble, and preferably the default here:
    #  https://github.com/netlify/build-image/blob/focal/included_software.md
    "python": "3.10",
    "aspect_bazel_lib": {
        "type": "github_archive",
        "repo": "aspect-build/bazel-lib",
        "version": "8d3c941c6499626376d2a1e3e01e05f3e1ec6856",
        "sha256": "1b1da9d7d58b83ae47e7f15f1dd6c5033f84bc2b5ad65226fa745861b2204d91",
        "url": "https://github.com/{repo}/archive/{version}.tar.gz",
        "strip_prefix": "bazel-lib-{version}",
    },
    "com_github_twbs_bootstrap": {
        "type": "github_archive",
        "repo": "twbs/bootstrap",
        "version": "5.1.3",
        "sha256": "55b951db46e1d69b4236494122fe559716a76c4b8a418c11f3fed6abc2d4de3f",
        "url": "https://github.com/{repo}/archive/refs/tags/v{version}.tar.gz",
        "strip_prefix": "bootstrap-{version}",
        "build_file": "@envoy-website//bazel:bootstrap.BUILD",
    },
    "envoy": {
        "type": "github_archive",
        "repo": "envoyproxy/envoy",
        "version": "9d787ffeeef339268aa62e547c549e86f85e7bbb",
        "sha256": "8c953e0718c96a63be9c6ec24c57bf77e26f7f61ec69c50e79e46213febf496e",
        "url": "https://github.com/{repo}/archive/{version}.tar.gz",
        "strip_prefix": "envoy-{version}",
    },
    "envoy_archive": {
        "type": "github_archive",
        "repo": "envoyproxy/archive",
        "version": "ce4ba2b7998ddd6f8e6f219404e4e830b65cbfef",
        "sha256": "78ce35004adaf9b9206ba9e44a6629d4ec1ade4b1f63126edfda07d85356e751",
        "url": "https://github.com/{repo}/archive/{version}.tar.gz",
        "patch_args": ["-p1"],
        "strip_prefix": "archive-{version}",
    },
    "envoy_toolshed": {
        "type": "github_archive",
        "repo": "envoyproxy/toolshed",
        "version": "0.0.11",
        "sha256": "89364302f38864370d7a380a15974b44b646e616ecf7b80f04aa0e44cb4f8a2f",
        "url": "https://github.com/{repo}/archive/bazel-v{version}.tar.gz",
        "strip_prefix": "toolshed-bazel-v{version}/bazel",
    },
}
