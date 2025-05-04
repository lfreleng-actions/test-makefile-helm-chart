# SPDX-License-Identifier: Apache-2.0
# SPDX-FileCopyrightText: 2025 The Linux Foundation

build:
	# Ensure make/build is idempotent
	rm -Rf charts
	# Build and package test chart
	mkdir charts
	# Must set globally writable; needed for Docker/K8S access
	chmod a+wrx charts
	helm create charts/test-chart
	helm package charts/test-chart
	# Show template folder/file hierarchy
	tree charts
