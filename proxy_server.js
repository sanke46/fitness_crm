const express = require('express');
const { createProxyMiddleware } = require('http-proxy-middleware');

const app = express();
const port = 8080; // You can choose any available port

app.use(
  '/api',
  createProxyMiddleware({
    target: 'http://bored-api.appbrewery.com',
    changeOrigin: true,
    pathRewrite: {
      '^/api': '', // remove /api from the request path
    },
  })
);

app.listen(port, () => {
  console.log(`Proxy server listening at http://localhost:${port}`);
});