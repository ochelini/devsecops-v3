const express = require('express');
const app = express();

app.get('/users', (req, res) => {
  res.send('User service running');
});

app.listen(8080, () => console.log('User service running inside container'));
``
