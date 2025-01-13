#!/bin/sh
echo "Starting container openrefine"
# initialize default values for parameters
export REFINE_MEMORY=${REFINE_MEMORY:='1030M'}



openrefine/refine -i 0.0.0.0 -d /mnt/refine -m ${REFINE_MEMORY}
