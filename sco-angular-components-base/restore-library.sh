#!/bin/bash

# Eliminar librería y reinstalar última versión
echo 'Borrando antigua carpeta "./node_modules/sco-angular-components"'
rm -rf ./node_modules/sco-angular-components
echo 'Instalado librería de nuevo... (npm i sco-angular-components)'
npm i sco-angular-components