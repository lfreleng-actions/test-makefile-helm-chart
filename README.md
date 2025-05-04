
<!--
# SPDX-License-Identifier: Apache-2.0
# SPDX-FileCopyrightText: 2025 The Linux Foundation
-->

# Makefile: Helm Chart Build

This is a template Makefile to build a sample Helm Chart.

## test-helm-chart-makefile

## Usage Example

To build a test/sample Helm Chart, download the repository and invoke make.

```console
$ git clone modeseven-lfreleng-actions/test-helm-chart-makefile
$ cd test-helm-chart-makefile
$ make build
# Ensure make/build is idempotent
rm -Rf charts
# Build and package test chart
mkdir charts
# Must set globally writable; needed for Docker/K8S access
chmod a+wrx charts
helm create charts/test-chart
Creating charts/test-chart
helm package charts/test-chart
Successfully packaged chart and saved it to: /Users/mwatkins/Repos/modeseven-lfreleng-actions/test-helm-chart-makefile/test-chart-0.1.0.tgz
# Show template folder/file hierarchy
tree charts
charts
└── test-chart
 ├── Chart.yaml
 ├── charts
 ├── templates
 │   ├── _helpers.tpl
 │   ├── deployment.yaml
 │   ├── hpa.yaml
 │   ├── ingress.yaml
 │   ├── NOTES.txt
 │   ├── service.yaml
 │   ├── serviceaccount.yaml
 │   └── tests
 │       └── test-connection.yaml
 └── values.yaml

5 directories, 10 files
```
