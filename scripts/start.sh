#!/bin/bash

mkdir -p /var/www/satc

cat > /etc/systemd/system/satc-web.service <<'EOF'
[Unit]
Description=SATC E-Commerce Web Application
After=network.target

[Service]
Type=simple
WorkingDirectory=/var/www/satc
ExecStart=/usr/bin/python3 -m http.server 80 --directory /var/www/satc
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable satc-web.service
systemctl restart satc-web.service
