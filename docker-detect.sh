# Detect container runtime. Can be overridden by setting DOCKER in the environment.
# Usage: source this file, then use $DOCKER as the command.
if [ -z "${DOCKER:-}" ]; then
    if command -v docker > /dev/null 2>&1; then
        DOCKER=docker
    elif command -v podman > /dev/null 2>&1; then
        DOCKER=podman
    else
        echo "Error: neither docker nor podman found in PATH" >&2
        exit 1
    fi
fi
