* Asterisk indicates a comment
* Transistor models
.include psp102_pmos.mod
* Circuit definition
M1 VSS VG VDD VDD PCH L=65n W=400n
VSG VDD VG DC 1.0V
VSD VDD VSS DC 1.2V 
VSS VSS 0 0
* Simulation settings

.options Temp=27.0
.control
DC VSD 0 1.2 0.02 TEMP 0 100 50
plot VSD#branch ylabel 'Drain current'

.endc
.end
