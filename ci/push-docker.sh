set -e

SHA="${GIT_COMMIT:-${GITHUB_SHA:-local}}"
Tag="${SHA:0:8}"
OWNER_LC="$(echo "${docker_username}" | tr '[:upper:]' '[:lower:]')"
IMG="ghcr.io/${OWNER_LC}/simple-fortune-cookie-group18"
echo "$docker_password" | docker login ghcr.io --username "$docker_username" --password-stdin
docker push "ghcr.io/$docker_username/simple-fortune-cookie-group18:1.0-${GIT_COMMIT::8}" 
docker push "ghcr.io/$docker_username/simple-fortune-cookie-group18:latest" &
wait
