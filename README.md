## docker for development environment

### up

```
$ docker-compose up -d
or
$ docker-compose up --build --remove-orphans
```

### down

```
$ docker-compose down && docker system prune -a
```

### プロセス確認

```
$ docker-compose ps
```

### docker 環境へ ssh

```
$ docker-compose exec <サービス名> bash
```