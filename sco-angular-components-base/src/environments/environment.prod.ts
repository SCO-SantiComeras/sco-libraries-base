const environment = {
  name: 'prod',
  production: true,
  hostname: 'scoapps.es',
  port: '8000',
  apiPort: '8000',
  webSocketPort: '8001',
  globalPrefix: 'api',
  apiVersion: 'v1',
  httpsEnabled: false,
  apiUrl: '',
  serverSocketUrl: '',
};

environment.apiUrl = `${environment.httpsEnabled ? 'https://' : 'http://'}`;
environment.apiUrl += `${environment.hostname}`;
environment.apiUrl += `:${environment.apiPort}/${environment.globalPrefix}/${environment.apiVersion}`;

environment.serverSocketUrl = `${environment.httpsEnabled ? 'wss://' : 'ws://'}`;
environment.serverSocketUrl += `${environment.hostname}:${environment.webSocketPort}`;

export default environment;