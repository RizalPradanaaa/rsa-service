const express = require("express");
const NodeRSA = require("node-rsa");
const connection = require("./database");
const app = express();
const port = 3000;

app.use(express.json());

// Generate RSA key pair
const key = new NodeRSA({ b: 512 });

// Endpoint untuk mendapatkan public key
app.get("/public-key", (req, res) => {
  const publicKey = key.exportKey("public");
  res.send(publicKey);
});

// Endpoint untuk enkripsi data dan menyimpan ke database
app.post("/encrypt", (req, res) => {
  const { data } = req.body;
  const encryptedData = key.encrypt(data, "base64");

  const query = "INSERT INTO encrypted_data (encrypted_data) VALUES (?)";
  connection.query(query, [encryptedData], (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err.stack);
      res.status(500).send("Error inserting data into MySQL");
      return;
    }
    res.send({ id: results.insertId, encryptedData });
  });
});

// Endpoint untuk dekripsi data dari database
app.post("/decrypt", (req, res) => {
  const { id } = req.body;

  const query = "SELECT encrypted_data FROM encrypted_data WHERE id = ?";
  connection.query(query, [id], (err, results) => {
    if (err) {
      console.error("Error retrieving data from MySQL:", err.stack);
      res.status(500).send("Error retrieving data from MySQL");
      return;
    }

    if (results.length === 0) {
      res.status(404).send("No data found with the given ID");
      return;
    }

    const encryptedData = results[0].encrypted_data;
    const decryptedData = key.decrypt(encryptedData, "utf8");
    res.send({ decryptedData });
  });
});

app.listen(port, () => {
  console.log(`Server berjalan di http://localhost:${port}`);
});
