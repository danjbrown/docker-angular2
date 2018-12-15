var express = require('express');
var app = express();

const PORT = 8080;
const HOST = '0.0.0.0';

app.use('/', express.static(__dirname ));

//app.listen(3000, function() { console.log('Listening on port 3000.')});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);