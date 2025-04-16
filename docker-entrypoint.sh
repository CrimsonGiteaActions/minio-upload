#!/bin/bash

insecure_option=""
if [[ "$MINIO_INSECURE" == "true" ]]; then
  insecure_option="--insecure"
fi

recursive_option=""
if [[ "$MINIO_RECURSIVE" == "true" ]]; then
  recursive_option="--recursive"
fi

debug_option=""
if [[ "$MINIO_DEBUG" == "true" ]]; then
  debug_option="--debug"
fi

export MINIO_ALIAS="target"

mcli alias set ${insecure_option:+"$insecure_option"} "$MINIO_ALIAS" "$MINIO_ENDPOINT" "$MINIO_ACCESS_KEY" "$MINIO_SECRET_KEY"
mcli ${insecure_option:+"$insecure_option"} ${debug_option:+"$debug_option"} cp ${recursive_option:+"$recursive_option"} "$1" "$MINIO_ALIAS/$2"
