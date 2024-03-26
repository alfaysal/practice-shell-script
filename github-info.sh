#!/bin/bash

set -x

API_URL="https://api.github.com"

USERNAME=$USER_NAME_GIT
TOKEN=$TOKEN

REPO_OWNER=$1
REPO_NAME=$2

function get_github_url {
	local endpoint="$1"
	local url="${API_URL}/${endpoint}"

	curl -s -u "${USERNAME}:${TOKEN}" "${url}"
}

function repos {
	local endpoint="repos/${REPO_OWNER}/${REPO_NAME}"
	repos="$(get_github_url "$endpoint")"
	if [[ -z "$repos" ]]; then
		echo "No repository found"
	else
		echo "$repo"
	fi
}
echo "Repo list"
repos
