#!/usr/bin/with-contenv bashio

import requests

url = "http://192.168.69.116/api/dongle/devices/16"

payload = ""
headers = {
  'User': 'b167ecc8-87ce-47da-9b7d-cab632a2eeba',
  'authorization': '61753e6193bcba016ac3b10956a17c735e79e876c2d34c2c8b805cb1dcc73060'
}

response = requests.request("GET", url, headers=headers, data=payload)

print(response.text)



# python 3.6

import random
import time

from paho.mqtt import client as mqtt_client


broker = '192.168.3.105'
port = 1883
topic = "PoolSync"
# generate client ID with pub prefix randomly
client_id = f'python-mqtt-{random.randint(0, 1000)}'
username = config.get('user', None)
password = config.get('password', None)



import paho.mqtt.client as mqtt

# This is the Publisher

client = mqtt.Client((client_id))
client.username_pw_set(username, password)
client.connect(broker,port)
client.publish(topic, response.text)
client.disconnect()
