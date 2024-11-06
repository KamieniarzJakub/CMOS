* Path to the test bench file
.include 4bitowy_tb.sp

* Path to the models
.include psp102_nmos.mod
.include psp102_pmos.mod

* Simulation setting
.control
* Analysis
TRAN 10p 150n 0
*TRAN 1n 200n 0
plot v(S4), V(S3), V(S2), V(S1), V(Cout)
*plot v(Cout)
*plot v(Cin)
.endc
.end
