import time
from openpyxl import load_workbook

start_time = time.time()
wb = load_workbook('/home/pi/Documents/Battery_Test.xls')
sheet = wb['Sheet1']

uptime = (time.time() - start_time) / 3600

row = ('Uptime in hours', uptime)
sheet.append(row)

wb.save('/home/pi/Documents/Battery_Test.xlsx')
