import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

GPIO.setup(35, GPIO.IN)
GPIO.setup(19, GPIO.OUT)

GPIO.output(19, False)

print("Initializing PIR Sensor...")
time.sleep(2)

print("PIR Ready")

try:
    while True:
        if GPIO.input(35):

            GPIO.output(19, True)
            print("Motion Detected")

            while GPIO.input(35):
                time.sleep(0.2)

        else:
            GPIO.output(19, False)

except KeyboardInterrupt:
    GPIO.cleanup()
