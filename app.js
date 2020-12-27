const { response } = require('express');
const express = require('express');
const os = require('os');
const port = 3000;

const app = express();
app.get('/', 
    (request, response) => response.send(`Coucou depuis: ${os.hostname}`)
);


app.listen(port, () => console.log(`Listening on port ${port}`));
