set -e
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}" 
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
docker build -t "${REPO}simple-fortune-cookie-group18:latest" -t "${REPO}simple-fortune-cookie-group18:1.0-$Tag" .