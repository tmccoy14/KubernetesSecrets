#!/usr/bin/env bash
set -e

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do SOURCE="$(readlink "$SOURCE")"; done
ROOTDIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"

cd "$ROOTDIR"

# shellcheck source=scripts/helpers/assert.sh
source "$ROOTDIR/helpers/assert.sh"
# shellcheck source=scripts/helpers/log.sh
source "$ROOTDIR/helpers/log.sh"

# usage prints how to use the script
usage() {
  echo -e "\
${Green}Usage: $0 [options]
  -h, --help                  Help
  -v, --value                 Secret value to encode

  ex. ./encodeValue.sh --value admin${Color_Off}
"
}

# encode kubernetes secret value to base64
encode() {
  local -r value=$1
  assert_not_empty "Value" "$value" "Value is required"

  # encode kubernetes secret value provided
  log_info "ENCODE KUBERNETES SECRET VALUE TO BASE64..."

  encodedValue=$(echo $value | base64)

  echo $encodedValue
}

VALUE=""
while [ "$1" != "" ]; do
  case "$1" in
    -h | --help)
      usage
      exit 0
      ;;
    -v | --value)
      VALUE="$2"
      assert_not_empty "VALUE" "$VALUE" "Value is required"
      shift 2
      ;;
    *)
      shift
      ;;
  esac
done

# encode kubernetes secret value to base64
encode $VALUE
