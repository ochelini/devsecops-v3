const express = require('express');
const app = express();

app.get('/orders', (req, res) => {
  res.send('Order service running');
});

app.listen(8080, () => console.log('Order service running'));
