set -o errexit

nohup dotnet $1 --urls=http://localhost:$2 >/dev/null 2>&1 &