#! /bin/bash
# Если свалится одна из команд, рухнет и весь скрипт
set -xe

# Перезаливаем дескриптор сервиса на ВМ для деплоя
sudo cp -rf sausage-store-backend.service /etc/systemd/system/sausage-store-backend.service
sudo rm -f /home/jarservice/sausage-store.jar||true #"<...>||true" говорит, если команда обвалится — продолжай

# Переносим артефакт в нужную папку
curl -u ${NEXUS_REPO_USER}:${NEXUS_REPO_PASS} -o sausage-store.jar ${NEXUS_REPO_URL}/${NEXUS_REPO_BACKEND_NAME}/com/sausage-store/${VERSION}/sausage-store-${VERSION}.jar
sudo cp ./sausage-store.jar /home/jarservice/sausage-store.jar||true #"<...>||true" говорит, если команда обвалится — продолжай

# Обновляем конфиг systemd с помощью рестарта
sudo systemctl daemon-reload

sudo systemctl enable sausage-store-backend

#Перезапускаем сервис сосисочной
sudo systemctl restart sausage-store-backend