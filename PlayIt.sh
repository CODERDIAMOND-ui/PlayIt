echo "=== Updating system ==="
sudo apt update && sudo apt upgrade -y

echo "=== Installing PlayIt ==="
wget https://github.com/playit-cloud/playit-agent/releases/download/v0.16.2/playit-linux-amd64

echo "=== Enabling Playit service ==="
sudo systemctl start playit
sudo systemctl enable playit

echo "=== Running Playit setup ==="
playit setup

echo "✅ Playit installation complete!"
echo "➡️ Run 'playit status' to check the tunnel status."
