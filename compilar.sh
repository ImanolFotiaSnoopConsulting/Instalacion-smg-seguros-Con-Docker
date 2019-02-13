#!/bin/bash

echo "Chequeando que se este en el directorio de instalacion del proyecto"
if [ ! -f smg-dir ]; then
    echo "Usted esta en el directorio equivocado, asegurese de esta en el mismo directorio donde se encuentra el archivo smg-dir"
else
	cd smg-seguros-productores/app/smg-seguros
	npm install
        echo -ne '\n' | react-native link
	npm i exp -g
	npm i expo-cli@2.6.13
	npm install react-native-newrelic --save
	cd android
	sed -i 's/\r//g' gradlew
	./gradlew clean
	./gradlew assembleDebug
	apt-get install -y android-tools-adb
	adb start-server
fi
echo "Proceso Finalizado!"

