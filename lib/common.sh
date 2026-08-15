#!/usr/bin/env bash
# Common utility functions for bash scripts

# Color output functions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print colored output
info() {
    printf "${BLUE}[INFO]${NC} %s\n" "$@"
}

success() {
    printf "${GREEN}[SUCCESS]${NC} %s\n" "$@"
}

warn() {
    printf "${YELLOW}[WARN]${NC} %s\n" "$@" >&2
}

error() {
    printf "${RED}[ERROR]${NC} %s\n" "$@" >&2
}

# Exit with error message
die() {
    error "$@"
    exit 1
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if running as root
is_root() {
    [[ $EUID -eq 0 ]]
}

# Log function with timestamp
log() {
    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    printf "[%s] %s\n" "$timestamp" "$@"
}
