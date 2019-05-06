#!/bin/bash
set -euo pipefail

MICROSCANNER_TOKEN="${MICROSCANNER_TOKEN:-}"
MICROSCANNER_OPTIONS="${MICROSCANNER_OPTIONS:-'--html'}"
DOCKER_IMAGE="${1:-}"

MICROSCANNER_TOKEN=${MICROSCANNER_TOKEN} MICROSCANNER_OPTIONS=$MICROSCANNER_OPTIONS  ./scan.sh "${DOCKER_IMAGE}" | sed -n '/<!DOCTYPE html>/,/<\/body>/p'
