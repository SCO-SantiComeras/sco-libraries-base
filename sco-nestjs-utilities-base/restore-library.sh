#!/bin/bash

# Eliminar librería y reinstalar última versión
echo 'Borrando antigua carpeta "./sco-nestjs-utilities-base/node_modules/sco-nestjs-utilities"'
rm -rf ./sco-nestjs-utilities-base/node_modules/sco-nestjs-utilities
echo 'Instalado librería de nuevo... (npm i sco-nestjs-utilities)'
cd sco-nestjs-utilities-base
npm i sco-nestjs-utilities