* Test bench dla sumatora jednobitowego

.INCLUDE C:\Users\kamie\Documents\CMOS\SUMATOR\sumator.spi

* Definicja zasilania i masy
VDD vdd 0 DC 1.2V
VSS vss 0 DC 0V

* Definicja sygnałów wejściowych za pomocą źródeł PULSE
VA0 a0 VSS dc 1.2 
VB0 b0 VSS dc 0 
VC0 c0 0 PULSE (0 1.2 50n 0.01n 1n 50n 100n)

*VA1 a1 VSS dc 1.2 
*VB1 b1 VSS dc 0 

*VA2 a2 VSS dc 1.2 
*VB2 a2 VSS dc 0 

*VA3 a3 VSS dc 1.2 
*VB3 b3 VSS dc 0

* Instancja sumatora
XSUMATOR0 a0 b0 c0 S_inv_0 Ca_inv_0 vdd vss SUMATOR
XSUMATOR1 a1 b1 Ca_inv_0 S_inv_1 Ca_inv_1 vdd vss SUMATOR
XSUMATOR2 a2 b2 Ca_inv_1 S_inv_2 Ca_inv_2 vdd vss SUMATOR
XSUMATOR3 a3 b3 Ca_inv_2 S_inv_3 Ca_inv_3 vdd vss SUMATOR

*.subckt SUMATOR A B C S Ca VDD VSS

* Kondensatory na wyjściach
*C1 S_inv_0 0 500fF
*C2 Ca_inv_0 0 500fF
*C3 S_inv_1 0 500fF
*C4 Ca_inv_1 0 500fF
*C5 S_inv_2 0 500fF
*C6 Ca_inv_2 0 500fF
*C7 S_inv_3 0 500fF
*C8 Ca_inv_3 0 500fF

* Konfiguracja analizy czasowej
.control
TRAN 10p 150ns 0ns
* plot V(a)
* let axa = V(S_inv)
* plot axa
*plot V(a3)
*plot V(b3)
*plot V()
plot V(S_inv_0) V(S_inv_1) V(S_inv_2) V(S_inv_3) V(Ca_inv_3)
* plot V(B)
* plot V(c)

.endc

* Polecenia do wizualizacji wyników
.END
