* Path to the SUMATOR component library
.include sumator.sp

* Instantiation of the SUMATOR subcircuit
XSUMATOR A B C SUM CARRY VDD VSS SUMATOR

* Supply DC voltage
VSD VDD VSS DC 1.2V

* GROUND polarity
VSS VSS 0 0


* Source signals for inputs A, B, and C (LOW HIGH DELAY RISE FALL WIDTH PERIOD)
V_A A VSS PULSE (0V 1.2V 0 1n 1n 50n 100n)
V_B B VSS PULSE (0V 1.2V 0 1n 1n 100n 200n)
V_C C VSS PULSE (0V 1.2V 0 1n 1n 200n 400n)

* Load capacitors on outputs SUM and CARRY
CX1 VSS CARRY 500.0f
CX2 VSS SUM 500.0f

.end