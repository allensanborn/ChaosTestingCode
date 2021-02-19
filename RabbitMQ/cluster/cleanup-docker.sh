docker volume rm $(docker volume ls -qf dangling=true)
docker container rm --force $(docker container ls --all)