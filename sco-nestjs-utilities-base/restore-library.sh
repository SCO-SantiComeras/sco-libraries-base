#!/bin/bash

# Eliminar librería y reinstalar última versión
echo 'Borrando antigua carpeta "./node_modules/sco-nestjs-utilities"'
rm -rf ./node_modules/sco-nestjs-utilities
echo 'Instalado librería de nuevo... (npm i sco-nestjs-utilities)'
npm i sco-nestjs-utilities