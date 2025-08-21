#!/bin/bash

echo ">>> Allowing www-data to sudo as asterisk..."

echo "www-data ALL=(asterisk) NOPASSWD: ALL" > /etc/sudoers.d/freepbx_wwwdata
chmod 440 /etc/sudoers.d/freepbx_wwwdata

echo ">>> Restarting Apache (if installed)..."
systemctl restart apache2 || true

echo ">>> Done!"
