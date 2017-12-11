from gpiozero import CPUTemperature
from time import sleep, strftime, time

cpu = CPUTemperature()
temp = cpu.temperature
print ("{0},{1}".format(strftime("%Y%m%d.%H%M"),str(temp)))
















