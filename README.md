# flake8とautopep8のサンプル

起動

```bash
docker compose build
docker compose up -d
```

main.pyに対してflake8を実行

```bash
docker compose exec mypython flake8 main.py
```

または

```bash
docker compose exec mypython flake8 --show-source main.py
```

main.pyに対してautopep8を実行

```bash
docker compose exec mypython autopep8 main.py
```

もしくは

```bash
docker compose exec mypython autopep8 -i main.py
docker compose exec mypython autopep8 -a -i main.py
```

停止

```bash
docker compose down
```
