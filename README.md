# SCO - Libraries base

Libraries Base es una poderosa aplicación web desarrollada principalmente con dos librerías propias: 'Sco-angular-components' para el frontend y 'Sco-nestjs-utilities' para el backend. 
Su objetivo principal es servir como una sólida base de inicio para nuevos proyectos, al tiempo que exhibe las utilidades de ambas librerías en un entorno real. También, conforme se realizen desarrollos en las librerías mencionadas anteriormente, estos se añadirán a la base, por lo que está estará siempre actualizada con las últimas funciones.

# Características principales

- Inicio de Sesión Seguro: Libraries Base implementa un sistema de inicio de sesión basado en seguridad JWT (JSON Web Token), con la posibilidad de configurar el tiempo de expiración del token para un nuevo inicio de sesión, ofreciendo así una autenticación segura y personalizable.
- Conexión en Tiempo Real: La aplicación incluye una conexión en tiempo real a través de websockets, lo que permite una comunicación bidireccional y en tiempo real entre clientes y el servidor, mejorando la experiencia de usuario.
- Gestión de Usuarios: Permite la gestión completa de usuarios, incluyendo el registro de nuevos usuarios, activación por correo electrónico (configurable según necesidades), recuperación de contraseña mediante email, y la administración de usuarios como administrador.
- Personalización del Tema: Los usuarios tienen la opción de personalizar el tema de la aplicación, permitiéndoles adaptar la interfaz según sus preferencias y necesidades.
- Visualización de PDFs: Utiliza el componente 'sco-pdfviewer' para visualizar archivos PDF directamente dentro de la aplicación, facilitando la visualización de documentos importantes.
- Gestión de Administradores: Además de la gestión de usuarios estándar, los administradores tienen la capacidad de gestionar roles de usuarios y los permisos asociados a cada rol, brindando un control completo sobre el acceso y la seguridad de la aplicación.
- Incluye una batería de distintos servicios a poder utilizar:
    - Frontend:
        - JoinPipe
        - HasPermissionsPipe
        - ResolutionService
        - ConfigService
        - TranslateService
        - CacheService
        - MenuService
        - UtilsService
        - HttpErrosService
        - FormErrorsService
        - ThemeService
        - ConstantsService
    - Backend:
        - TranslateService
        - EmailerTemplatesService (Recovery password & Confirm email)
        - BcryptService
        - SftpService
        - WebsocketsService
        - MicroserviceConnectionsService
        - ExcelService
        - LoggerService
        - EmailerService
        - MongoDBService
        - Middlewares
        - SftpService
        - PaginationService

# Parámetros de configuración frontend
<pre>
# Path: sco-libraries-base\sco-angular-components-base\src\assets\config\data.json

{
    "title": "SCO | Angular Components Base", (Título de la aplicación)
    "theme": "theme-default", (Theme por defecto, otros posibles 'theme-dark', 'theme-blue')
    "pwdRecoveryExpire": 30, (Tiempo de caducidad del token de recuperación de contraseña)
    "newUserActived": false, (Indicador para activar o no los nuevos usuarios, si el valor es 'false', el nuevo usuario tendrá que confirmar su cuenta vía email. ** El valor de esta variable, debe coincidir con el valor de la misma variable de configuración en el backend!)
    "formCrud": {
        "closeFormWhenCancel": true, (Indicador para cerrar el formulario del componente sco-form-crud cuando se cancela el formulario)
        "formAlwaysVisible": false, (Indicador mostrar la versión visual del componente sco-form-crud extendida)
        "formBackButton": false (Indicador para mostrar el botón de vuelta atrás del formulario en el componente sco-form-crud)
    }
}
</pre>

<pre>
# Path: sco-libraries-base\sco-angular-components-base\src\environments\environment.prod.ts
# ** Para hacer pruebas en desarrollo, modificar el fichero 'environment.ts' y no el de producción

const environment = {
  name: 'prod', (Nombre del entorno)
  production: true, (Indicador para activar o no el modo producción)
  hostname: 'scoapps.es', (Host en el que estará alojada la aplicación)
  port: '8000', (Puerto en el que se mostrará la aplicación)
  apiPort: '8000', (Puerto en el que estará alojada la api de la aplicación)
  webSocketPort: '8001', (Puerto de los websockets de la api de la aplicación)
  globalPrefix: 'api', (Prefijo de la ruta de la api de la aplicación)
  apiVersion: 'v1', (Versión de la api de la aplicación)
  httpsEnabled: false, (Indicador para activar o no el modo seguro (SSL))
  apiUrl: '', (Variable autogenerada)
  serverSocketUrl: '', (Variable autogenerada)
};

environment.apiUrl = `${environment.httpsEnabled ? 'https://' : 'http://'}`;
environment.apiUrl += `${environment.hostname}`;
environment.apiUrl += `:${environment.apiPort}/${environment.globalPrefix}/${environment.apiVersion}`;

environment.serverSocketUrl = `${environment.httpsEnabled ? 'wss://' : 'ws://'}`;
environment.serverSocketUrl += `${environment.hostname}:${environment.webSocketPort}`;

export default environment;
</pre>

# Parámetros de configuración backend
<pre>
# Path: sco-libraries-base\sco-nestjs-utilities-base\env\production.env
# ** Para hacer pruebas en desarrollo, modificar el fichero 'development.ts' y no el de producción

# APP
APP_PORT: 8000 (Puerto en el que estará levantada la aplicación)
APP_PRODUCTION: true (Indicador para activar o no el modo producción)
APP_SWAGGER: true (Indicador para levantar la ruta de swagger de la aplicación)
APP_SWAGGER_ROUTE: doc (Ruta en la que se levanta la documentación del swagger de la aplicación)
APP_HOST: scoapps.es (Host en el que estará alojada la aplicación)

# MONGO
MONGO_IP: 127.0.0.1 (Host de la base de datos Mongodb)
MONGO_PORT: 27017 (Puerto de la base de datos Mongodb)
MONGO_USER: (Usuario de la base de datos Mongodb)
MONGO_PASS: (Contraseña de la base de datos Mongodb)
MONGO_DATABASE: sco-nestjs-utilities-base (Nombre de la base de datos Mongodb)

# WEBSOCKETS
WEBSOCKETS_PORT: 8001 (Puerto de comunicación a tiempo real websocket de la aplicación)
WEBSOCKETS_ORIGIN: http://scoapps.es,http://scoapps.es:80,http://scoapps.es:8000,http://scoapps.es:8001,http://scoapps.es:8002 (Listado de origenes de las peticiones válidas de los websockets)

# MICROSERVICE CONNECTION
MC_ENABLED: false (Indicador para habilitar o no la conexión de microservicios)
MC_HOST: 0.0.0.0 (Host del microservicio)
MC_PORT: 8002 (Puerto de conexión del microservicio)

# AUTH
AUTH_SECRET: qu3Ric0Est4ElCachop025! (Secreto de encriptación del token JWT)
AUTH_EXPIRES_IN: 7d (Expiración del token JWT)
AUTH_ALGORITHM: HS256 (Algoritmo de encriptación del token JWT)
AUTH_NEW_USER_ACTIVED: false (Indicador para activar o no los nuevos usuarios creados, con valor 'false' el backend enviará el email necesario de activación)

# EMAILER
EMAILER_JWT_CONTROLLER: true (Indicador para activar o no el controlador con JWT)
EMAILER_EMAIL: yourEmail@email.com (Email que enviará las notificaciones de la aplicación)
EMAILER_PASSWORD: yourEmailPassword (Contraseña del email, debe ser una contraseña de aplicación, no de acceso)
EMAILER_SERVICE: gmail (Tipo de servicio del email)

# EXCEL
EXCEL_JWT_CONTROLLER: true (Indicador para activar o no el controlador con JWT)

# SFTP
SFTP_JWT_CONTROLLER: true (Indicador para activar o no el controlador con JWT)
SFTP_HOST: 100.100.100.100 (Host del SFTP al que se conectará la aplicación)
SFTP_PORT: 22 (Puerto del SFTP)
SFTP_USER: user (Usuario del SFTP)
SFTP_PASSWORD: userpassword (Contraseña del SFTP)

# PERMISISIONS
PERMISSIONS_JWT_CONTROLLER: true (Indicador para activar o no el controlador con JWT)

# ROLES
ROLES_JWT_CONTROLLER: true (Indicador para activar o no el controlador con JWT)

# USERS
USERS_JWT_CONTROLLER: true (Indicador para activar o no el controlador con JWT)
USERS_NEW_USER_ACTIVED: false (Indicador para activar o no los nuevos usuarios creados, con valor 'false' el backend enviará el email necesario de activación)

# POPULATE
POPULATE_POPULATE: true (Indicador para popular los usuarios del acceso inicial de la aplicación)
</pre>

# Ejemplo
- http://localhost:4200/#/login
- Publicadmin // Publicadmin123456!
- Public // Public123456!