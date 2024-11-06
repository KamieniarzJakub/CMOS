* Path to the inverter component library
.INCLUDE C:\Users\kamie\Documents\CMOS\MOS\inwerter.sp
* Test bench connection diagram
* Supply DC voltage
*VX OUT REFERENCE DC VALUE
VSD VDD VSS DC 1.2V
* GROUND polarity
VSS VSS 0 0

* Source(LOW HIGH DELAY RISE FALL WIDTH PERIOD)
*VX OUT REFERENCE PULSE (INITIAL_VALUE PULSE_VALUE DELAY PEROID)
VG VIN VSS PULSE (0 1.2V 0 1n 1n 10n 20ns)
* Load
*CX OUT REFERENCE VALUE
*C1 VOUT VSS  500f
.end