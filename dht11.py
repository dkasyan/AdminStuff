import Adafruit_DHT
import os

sensor = Adafruit_DHT.DHT11
DHT11_pin = 23
path = '/home/pi'
humidity, temperature = Adafruit_DHT.read_retry(sensor, DHT11_pin)
if humidity is not None and temperature is not None:
  print('Temperature={0:0.1f}*C  Humidity={1:0.1f}%'.format(temperature, humidity))
  file = open("dht11_data.txt", "a")
  file.write("tekst \n")
  file.close()
  
else:
  print('Failed to get reading from the sensor. Try again!')
