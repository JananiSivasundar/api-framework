const { request, settings } = require('pactum');
const { Before } = require('@cucumber/cucumber');
const { stash } = require('pactum');

Before(() => {
  request.setBaseUrl('https://sandbox.neonomics.io');
stash.addDataMap({
  'App': {
   // 'baseUrl': process.env.base_url || 'https://sandbox.neonomics.io',
    'clientId': process.env.clientId || 'd9f659ba-4998-47c1-be93-b49092cdd1c0',
    'clientSecret': process.env.clientSecret || '35d754c1-ea69-4540-9944-646fdc958dd2',
    'device_id': process.env.device_id || 'example_id_for_quickstart',
    'grantType': process.env.grantType || 'client_credentials'
  }
});
});