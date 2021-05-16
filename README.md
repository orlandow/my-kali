# My Kali docker config

## Run

``` shell
docker run --rm -ti -d -v kali-postgres:/var/lib/postgres -v kali-root:/root --name=kali my-kali
```

## Attach to running container

```shell
docker exec -it kali /bin/zsh
```
