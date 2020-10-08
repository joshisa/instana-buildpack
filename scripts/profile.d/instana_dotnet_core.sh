#!/bin/bash

set -x

DOTNET_STARTUP_HOOKS=$(find "$(cd ../../ && pwd -P)" -name Instana.Tracing.Core.dll)
export DOTNET_STARTUP_HOOKS

export CORECLR_ENABLE_PROFILING='1'
export CORECLR_PROFILER='{cf0d821e-299b-5307-a3d8-b283c03916dd}'

CORECLR_PROFILER_PATH=$(find "$(cd ../../ && pwd -P)" -name CoreProfiler.so)
export CORECLR_PROFILER_PATH