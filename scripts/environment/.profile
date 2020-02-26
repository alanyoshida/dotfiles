HOST=$(hostname -s)

set -o allexport
test -f "$HOME/.env" && source "$HOME/.env"
test -f "$HOME/.env-$HOST" && source "$HOME/.env-$HOST"
set +o allexport
