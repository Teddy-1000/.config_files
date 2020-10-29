#!/bin/bash

#Download latest version of code
wget 'https://go.microsoft.com/fwlink/?LinkID=620884' -O ~/Downloads/vscode_latest_stable.tar.gz

#Unpack at correct location
tar -xzvf ~/Downloads/vscode_latest_stable.tar.gz -C ~/Documents/vs_code/ --totals
