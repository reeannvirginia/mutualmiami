var bodyParser = require('body-parser');
var express = require('express');
var plaid = require('plaid');

// We store the access_token in memory - in production, store it in a secure
// persistent data store
var ACCESS_TOKEN = null;
var PUBLIC_TOKEN = null;

var client = new plaid.Client(
  '[PLAID_CLIENT_ID]',
  '[PLAID_SECRET]',
  '[PLAID_PUBLIC_KEY]',
  plaid.environments.sandbox
);

// Accept the public_token sent from Link
var app = express();
app.post('/get_access_token', function(request, response, next) {
  PUBLIC_TOKEN = request.body.public_token;
  client.exchangePublicToken(PUBLIC_TOKEN, function(error, tokenResponse) {
    if (error != null) {
      console.log('Could not exchange public_token!' + '\n' + error);
      return response.json({error: msg});
    }
    ACCESS_TOKEN = tokenResponse.access_token;
    ITEM_ID = tokenResponse.item_id;
    console.log('Access Token: ' + ACCESS_TOKEN);
    console.log('Item ID: ' + ITEM_ID);
    response.json({'error': false});
  });
});
app.listen(8000);
