#!/usr/bin/python3
import os
root_path = os.path.join(os.environ["HOME"], "jetbrains")

for client in os.listdir(root_path):
    client_path = os.path.join(root_path, client)
    
    if not os.path.isdir(client_path):
        continue

    print('export PATH={}:$PATH'.format(os.path.join(client_path, "bin")))

