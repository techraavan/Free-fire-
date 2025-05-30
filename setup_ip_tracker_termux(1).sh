#!/data/data/com.termux/files/usr/bin/bash

echo "Updating packages..."
pkg update -y
pkg install -y python wget unzip

echo "Installing Python dependencies..."
pip install flask requests

echo "Downloading Ngrok..."
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
mv ngrok /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/ngrok

echo "DONE! Now run the following manually:"
echo "1. Get your ngrok auth token from: https://dashboard.ngrok.com/get-started/setup"
echo "2. Run: ngrok config add-authtoken <your_token>"
echo "3. Start your tracker app: python ip_tracker_app.py"
echo "4. In new session run: ngrok http 5000"
