# Kittygram - социальная сеть для любителей котиков

## Развертывание в облаке

1. GitHub secrets:
    - YC_CLOUD_ID
    - YC_FOLDER_ID
    - YC_KEY_JSON
    - YC_ACCESS_KEY_ID
    - YC_SECRET
    - SSH_PUB

2. Настроен запуск трёх сценариев:
    - plan
    - apply
    - destroy

3. Настроить секреты для запуска приложения на сервере.

4. Workflow запускается при коммите в main.

## Как проверить работу с помощью автотестов

В корне репозитория создайте файл tests.yml со следующим содержимым:
```yaml
repo_owner: ваш_логин_на_гитхабе
kittygram_domain: полная ссылка (http://<ip-адрес вашей ВМ>:<порт gateway>) на ваш проект Kittygram
dockerhub_username: ваш_логин_на_докерхабе
```

Скопируйте содержимое файла `.github/workflows/main.yml` в файл `kittygram_workflow.yml` в корневой директории проекта.

Для локального запуска тестов создайте виртуальное окружение, установите в него зависимости из backend/requirements.txt и запустите в корневой директории проекта `pytest`.
