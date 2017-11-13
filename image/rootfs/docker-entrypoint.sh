#!/bin/bash
set -e

source /docker-entrypoint-utils.sh
set_debug
echo "Running as `id`"

sync_dir "/opt/gitlab/embedded/service/gitlab-rails/public.dist" "/opt/gitlab/embedded/service/gitlab-rails/public"

exec ${BASH_CMD} -- "$@"
