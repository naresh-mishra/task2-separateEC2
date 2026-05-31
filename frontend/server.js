const express = require("express");
const axios = require("axios");

const app = express();

const BACKEND_URL = "http://BACKEND_PRIVATE_IP:5000";

app.get("/", async (req, res) => {
  try {
    const response = await axios.get(BACKEND_URL);

    res.send(`
      <h1>Express Frontend</h1>
      <h2>${response.data.message}</h2>
    `);
  } catch (error) {
    res.send("Error connecting backend");
  }
});

app.listen(3000, "0.0.0.0", () => {
  console.log("Frontend running on port 3000");
});