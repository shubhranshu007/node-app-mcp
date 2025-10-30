const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('🚀 Hello from Node.js running on Amazon EKS!');
});

app.listen(PORT, () => {
  console.log(`✅ Server is running on port ${PORT}`);
});
