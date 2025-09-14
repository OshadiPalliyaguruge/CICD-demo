const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("Hello from DevSecOps CI/CD Pipeline");
});

// Export the app, do NOT listen here
module.exports = app;

// Only start server if run directly (not when imported for tests)
if (require.main === module) {
  const port = 3000;
  app.listen(port, () => console.log(`App running at http://localhost:${port}`));
}