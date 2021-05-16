# My Kali docker config

## Run

``` shell
docker run -ti --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql my-kali
```

## Attach to running container

```shell
docker exec -it <id> /bin/zsh
```
