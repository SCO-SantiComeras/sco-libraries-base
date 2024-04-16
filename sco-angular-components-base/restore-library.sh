#!/bin/bash

# Eliminar librería y reinstalar última versión
echo 'Borrando antigua carpeta "./sco-angular-components-base/node_modules/sco-angular-components"'
rm -rf ./sco-angular-components-base/node_modules/sco-angular-components
echo 'Instalado librería de nuevo... (npm i sco-angular-components)'
cd ./sco-angular-components-base
npm i sco-angular-components