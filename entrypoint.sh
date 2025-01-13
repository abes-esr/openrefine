#!/bin/sh
echo "Starting container openrefine"
openrefine/refine -i 0.0.0.0 -d /mnt/refine -m ${REFINE_MEMORY}
