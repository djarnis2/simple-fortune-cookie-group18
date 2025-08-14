set -e
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}" 
OWNER_LC="$(echo "$docker_username" | tr '[:upper:]' '[:lower:]')"
REPO="ghcr.io/${OWNER_LC}"
IMG="${REPO}/simple-fortune-cookie-group18"
echo "${REPO}"
docker build -t "${REPO}simple-fortune-cookie-group18:latest" -t "${REPO}simple-fortune-cookie-group18:1.0-$Tag" .
