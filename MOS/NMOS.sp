* Asterisk indicates a comment
* Transistor models
.include psp102_nmos.mod
* Circuit definition
M1 VDD VG VSS VSS NCH L=65n W=400n
VGS VG VSS DC 1.0V
VDS VDD VSS DC 1.2V 
VSS VSS 0 0
* Simulation settings
.options Temp=27.0
.control
repeat 1:
 dc vds 0 1.2 0.05 TEMP 0 100 50
plot dc1.i(vds)
end
.endc
.end
