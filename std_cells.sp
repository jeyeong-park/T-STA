***********Parameters***********

.param bcv=17
.param cv=13

********************************


** One input cells

.subckt INV Vdd VSS VA Vout
XPFET0 Vout	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1='bcv'  n2=n  tubes=1
XNFET0 Vout	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1='bcv'  n2=n  tubes=1
.ends

.subckt INVD4 Vdd VSS VA Vout
XPFET0 Vout	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1='bcv'  n2=n  tubes=8
XNFET0 Vout	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1='bcv'  n2=n  tubes=8
.ends

.subckt STI Vdd VSS Vin Vout
* Pull-up
XPFET0 VA	Vin	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=1
XPFET1 Vout	VSS	VA	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=4
XNFET0 VA	Vin	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
* Pull-dwon
XPFET2 VB	Vin	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Vout	Vdd	VB	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=4
XNFET2 VB	Vin	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=1
.ends

.subckt STID4 Vdd VSS Vin Vout
* Pull-up
XPFET0 VA	Vin	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=8
XPFET1 Vout	VSS	VA	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n tubes=32
XNFET0 VA	Vin	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=8
* Pull-dwon
XPFET2 VB	Vin	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=8
XNFET1 Vout	Vdd	VB	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n tubes=32
XNFET2 VB	Vin	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=8
.ends

.subckt NTI Vdd VSS VA Vout
* 2,0 path
XPFET0 Vout	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=1
XNFET0 Vout	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt NTID4 Vdd VSS VA Vout
* 2,0 path
XPFET0 Vout	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=8
XNFET0 Vout	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=8
.ends

.subckt PTI Vdd VSS VA Vout
* 2,0 path
XPFET0 Vout	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET0 Vout	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=1
.ends

.subckt PTID4 Vdd VSS VA Vout
* 2,0 path
XPFET0 Vout	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=8
XNFET0 Vout	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=8
.ends

.subckt NMIN Vdd VSS VA VB Vout
* Pull-up
XPFET0 Vz VA Vdd Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XPFET1 Vz VB Vdd Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1

XPFET2 Vout	VSS	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=5

XNFET0 Vz VA Vy VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Vy VB VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

* Pull-dwon
XPFET3 Vw VA Vdd Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET4 Vw VB Vdd Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET2 Vout	Vdd	Vw	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldid=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=5

XNFET3 Vw VA Vx VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET4 Vx VB VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
.ends

.subckt NMAX Vdd VSS VA VB Vout
* Pull-up
XPFET0 Vz	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XPFET1 Vy	VB	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1

XPFET2 Vout	VSS	Vy	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=9

XNFET0 Vy	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Vy	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

* Pull-dwon
XPFET3 Vw	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET4 Vx	VB	Vw	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET2 Vout	Vdd	Vx	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=9

XNFET3 Vx	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET4 Vx	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
.ends

.subckt NNMIN Vdd VSS A0 A1 Vout
XPFET0 Vout A0 Vdd Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XPFET1 Vout A1 Vdd Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1

XNFET0 Vout A0 Vt  VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Vt   A1 VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt PNMIN VDD VSS A0 A1 Y1
XPFET10 Y1 A0 Vdd Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17 n2=n  tubes=1
XPFET11 Y1 A1 Vdd Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17 n2=n  tubes=1

XNFET10 Y1 A0 Vm  VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET17 VM A1 VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
.ends

.subckt SUB_MUX I2 I0 F x xb
XPFET0	F	x	I0	I0	PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
XNFET0	F	xb	I0	I0	NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
XPFET1	F	xb	I2	I2	PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
XNFET1	F	x	I2	I2	NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
.ends

.subckt MUX VDD VSS I0 I2 x F
XINV VDD VSS x xb INV

XPFET0	F	x	I0	I0	PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
XNFET0	F	xb	I0	I0	NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
XPFET1	F	xb	I2	I2	PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
XNFET1	F	x	I2	I2	NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
.ends



.subckt CNT2 Vdd VSS VA VB Vout
XTC0 Vdd Vss VA VAP PTI
XTC1 Vdd Vss VB VBP PTI

XPFET0 Vz	VAP	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Y1	VBP	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET0 Y1	VAP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Y1	VBP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
*************************************
XPFET2 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=16  n2=n  tubes=2
XNFET2 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=16  n2=n  tubes=2
*************************************
XPFET3 Y2	VAP	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET4 Y2	VBP	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET3 Y2	VAP	Vy	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET4 Vy	VBP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt CNT1 Vdd VSS VA VB Vout
XTC0 Vdd Vss VA VAN NTI
XTC1 Vdd Vss VB VBN NTI

XPFET0 Vz	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Vy	VB	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET2 Vx	VAN	Vy	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET3 Y1	VBN	Vx	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET0 Y1	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET1 Y1	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET2 Y1	VAN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET3 Y1	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

*************************************
XPFET Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=9
XNFET Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=9
*************************************

XPFET4 Vw	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET5 Y2	VAN	Vw	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET6 Vv	VB	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET7 Y2	VBN	Vv	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET4 Y2	VA	Vu	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET5 Y2	VAN	Vu	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET6 Vu	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET7 Vu	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt CNT0 Vdd VSS VA VB Vout
XPFET0 Vz	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XPFET1 Y1	VB	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET0 Y1	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Y1	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
*************************************
XPFET2 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
XNFET2 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=1
*************************************
XPFET3 Y2	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XPFET4 Y2	VB	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET3 Y2	VA	Vy	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET4 Vy	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt SUMD4 VDD VSS VA VB VOUT

XNTIA VDD VSS VA VAN NTID4
XPTIA VDD VSS VA VAP PTID4

XNTIB VDD VSS VB VBN NTID4
XPTIB VDD VSS VB VBP PTID4

XSUM VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_SUMD4
.ends

.subckt SUB_SUMD4 VDD VSS VA VAN VAP VB VBN VBP Vout

* Pull Up
XPPU1A intPU1 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=8
XPPU1B Y1 VBP intPU1 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

XPPU2B intPU2 VB VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=8
XPPU2A Y1 VAP intPU2 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

XPPU3A intPU3 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XPPU3B intPU4 VB intPU3 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XPPU4A intPU5 VAN intPU4 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XPPU4B Y1 VBN intPU5 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

* Pull down
XNPD5A intPD6 VAN VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XNPD5B Y1 VBP intPD6 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

XNPD6A intPD7 VAP VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XNPD6B Y1 VBN intPD7 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

XNPD7A intPD8 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=8
XNPD7B Y1 VB intPD8 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=8

*************************************
XPFET1 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=40
XNFET1 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=40
*************************************w

* Pull Up
XPPU5A intPU6 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=8
XPPU6B Y2 VBN intPU6 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

XPPU7B intPU9 VB VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=8
XPPU7A Y2 VAN intPU9 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

XPPU8A intPU10 VAP VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XPPU8B Y2 VBP intPU10 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

* Pull down
XNPD1A intPD1 VAN VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XNPD1B Y2 VBN intPD1 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

XNPD2A intPD2 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XNPD2B intPD3 VB intPD2 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=8
XNPD3A Y2 VAP intPD3 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8

XNPD4A intPD4 VB VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
XNPD3B intPD5 VA intPD4 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=8
XNPD4B Y2 VBP intPD5 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=8
.ends 

.subckt SUM VDD VSS VA VB VOUT

XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI

XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI

XSUM VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_SUM
.ends

.subckt SUB_SUM VDD VSS VA VAN VAP VB VBN VBP Vout

* Pull Up
XPPU1A intPU1 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XPPU1B Y1 VBP intPU1 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XPPU2B intPU2 VB VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XPPU2A Y1 VAP intPU2 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XPPU3A intPU3 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XPPU3B intPU4 VB intPU3 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XPPU4A intPU5 VAN intPU4 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XPPU4B Y1 VBN intPU5 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

* Pull down
XNPD5A intPD6 VAN VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XNPD5B Y1 VBP intPD6 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XNPD6A intPD7 VAP VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XNPD6B Y1 VBN intPD7 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XNPD7A intPD8 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XNPD7B Y1 VB intPD8 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1

*************************************
XPFET1 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=5
XNFET1 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=5
*************************************w

* Pull Up
XPPU5A intPU6 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XPPU6B Y2 VBN intPU6 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XPPU7B intPU9 VB VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XPPU7A Y2 VAN intPU9 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XPPU8A intPU10 VAP VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XPPU8B Y2 VBP intPU10 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

* Pull down
XNPD1A intPD1 VAN VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XNPD1B Y2 VBN intPD1 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XNPD2A intPD2 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XNPD2B intPD3 VB intPD2 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XNPD3A Y2 VAP intPD3 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XNPD4A intPD4 VB VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XNPD3B intPD5 VA intPD4 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XNPD4B Y2 VBP intPD5 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
.ends 

* FA NAny gate
.subckt NANY VDD VSS VA VB Vout
* Pull up
XPPU2A intPU1 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XPPU2B Y1 VB intPU1 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

* Pull down
XNPD2A Y1 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XNPD2B Y1 VB VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1

*************************************
XPFET1 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=2
XNFET1 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=2
*************************************

* Pull up
XPPU1A Y2 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XPPU1B Y2 VB VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

* Pull down
XNPD1A intPD1 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XNPD1B Y2 VB intPD1 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1

.ends 

* NCarry gate
.subckt NCONS VDD VSS VA VB Vout
* Pull up
XPPU1A intPU1 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XPPU1B Y1 VB intPU1 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XPPU2A Y1 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1

XPPU2B Y1 VB VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1

* Pull down
XNPD1A intPD1 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1
XNPD1B Y1 VB intPD1 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1

XNPD2A intPD2 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=17  n2=n  tubes=1
XNPD2B Y1 VB intPD2 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfp' Dout=0  Sout=0  Pitch=6e-9  n1=8  n2=n  tubes=1

*************************************
XPFET1 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=2
XNFET1 Vout	VDD	VDD	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=2
*************************************
.ends


.subckt PROD VDD VSS VA VB VOUT
XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI

XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI

XPROD VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_PROD
.ends

* Mult_P gate / partial product
.subckt SUB_PROD VDD VSS VA VAN VAP VB VBN VBP Vout
* 2,0 path
* Pull up
XPPU1A intPU1 VA VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPPU2A intPU2 VAN intPU1 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPPU1B Y1 VBP intPU2 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XPPU2B intPU3 VB VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPPU3A intPU4 VAP intPU3 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPPU3B Y1 VBN intPU4 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

* Pull down
XNPD2A intPD1 VAP VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNPD2B Y1 VBP intPD1 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNPD3A intPD2 VA VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNPD3B Y1 VB intPD2 VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1

* 1 path
*************************************
XPFET1 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=7
XNFET1 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=7
*************************************

* Pull up
XPPU4A intPU5 VAN VDD VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPPU4B Y2 VBN intPU5 VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

* Pull down
XNPD1A Y2 VAN VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNPD1B Y2 VBN VSS VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends 

.subckt MB0 VDD VSS VA VB VOUT
XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI
XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI

XMB0 VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_MB0
.ends

.subckt SUB_MB0 Vdd VSS VA VAN VAP VB VBN VBP Vout

XPFET0 Vs	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Vt	VAN	Vs	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET2 Y1	VB	Vt	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=1
XPFET3 Y1	VBP	Vt	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XPFET4 Vu	VB	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET5 Vv	VBN	Vu	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET6 Y1	VA	Vv	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8   n2=n  tubes=1
XPFET7 Y1	VAP	Vv	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET0 Y1	VA	Vw	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET1 Y1	VAN	Vw	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET2 Vw	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET3 Vw	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET4 Y1	VA	Vx	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET5 Vx	VAP	Vy	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET6 Vy	VB	Vz	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET7 Vz	VBP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

*************************************
XPFET8 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=3
XNFET8 Vout	VDD	VDD	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=3
*************************************
.ends

.subckt MB1 VDD VSS VB VA VOUT
XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI
XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI 

XMB1 VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_MB1
.ends

.subckt SUB_MB1 Vdd VSS VA VAN VAP VB VBN VBP Vout
XPFET0 Vz	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Vy	VB	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET2 Y1	VBN	Vy	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=1

XNFET0 Y1	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1

*************************************
XPFET3 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=15  n2=n  tubes=3
XNFET1 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=15  n2=n  tubes=3
*************************************

XPFET4 Y2	VAP	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET2 Y2	VAP	Vx	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET3 Vx	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET4 Vx	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt MB2 VDD VSS VB VA VOUT
XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI
XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI 

XMB2 VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_MB2
.ends

.subckt SUB_MB2 Vdd VSS VA VAN VAP VB VBN VBP Vout
XPFET0 Vz	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Vy	VAN	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET2 Y1	VBP	Vy	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=1

XNFET0 Y1	VAN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Y1	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET2 Y1	VBP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

*************************************
XPFET3 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=16  n2=n  tubes=4
XNFET3 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=16  n2=n  tubes=4
*************************************

XPFET4 Vx	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET5 Vw	VAN	Vx	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET6 Y2	VBN	Vw	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=1
XPFET7 Y2	VBP	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET4 Y2	VAN	Vv	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET5 Y2	VA	Vv	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET6 Vv	VBP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET7 Y2	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt MB3 VDD VSS VB VA VOUT
XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI
XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI 

XMB3 VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_MB3
.ends

.subckt SUB_MB3 Vdd VSS VA VAN VAP VB VBN VBP Vout
XPFET0 Vt	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XPFET1 Y1	VBP	Vt	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET0 Y1	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET1 Y1	VB	Vu	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET2 Vu	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

*************************************
XPFET2 Vout	VSS	Y1	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=3
XNFET3 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=3
*************************************

XPFET3 Vv	VB	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET4 Vw	VAP	Vv	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET5 Y2	VBN	Vw	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=1
XPFET6 Vx	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET7 Y2	VBP	Vx	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET4 Y2	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET5 Y2	VAP	Vy	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET6 Vy	VBP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET7 Y2	VA	Vz	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET8 Vz	VB	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
.ends

.subckt MB4 VDD VSS VB VA VOUT
XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI
XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI 

XMB4 VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_MB4
.ends

.subckt SUB_MB4 Vdd VSS VA VAN VAP VB VBN VBP Vout
*************************************
XPFET3 Vout	VSS	VSS	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=3
XNFET3 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=3
*************************************

XPFET0 Vy	VA	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Vz	VAN	Vy	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET2 Y2	VBP	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET0 Y2	VAN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Y2	VA	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1
XNFET2 Y2	VBP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt MB5 VDD VSS VA VB VOUT
XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI
XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI 

XMB5 VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_MB5
.ends

.subckt SUB_MB5 Vdd VSS VA VAN VAP VB VBN VBP Vout

*************************************
XPFET2 Vout	VSS	VSS	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=15  n2=n  tubes=3
XNFET2 Vout	VDD	Y2	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=15  n2=n  tubes=3
*************************************
XPFET0 Vz	VAP	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Y2	VBP	Vz	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET0 Y2	VAP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Y2	VBP	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt MB6 VDD VSS VA VB VOUT
XNTIA VDD VSS VA VAN NTI
**XPTIA VDD VSS VA VAP PTI
XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI 

XMB6 VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_MB6
.ends

.subckt SUB_MB6 Vdd VSS VA VAN VAP VB VBN VBP Vout
XPFET0 Y0	VAN	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Y0	VBP	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET0 Y0	VBP	Vz	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Vz	VAN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

*************************************
XPFET Vout	VSS	Y0	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=3
XNFET Vout	VDD	Y1	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=14  n2=n  tubes=3
*************************************

XPFET2 Y1	VAN	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET3 Y1	VBN	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET2 Y1	VAN	Vy	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET3 Vy	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt MB6_OLD VDD VSS VA VB VOUT
XNTIA VDD VSS VA VAN NTI
XPTIA VDD VSS VA VAP PTI
XNTIB VDD VSS VB VBN NTI
XPTIB VDD VSS VB VBP PTI 

XMB6 VDD VSS VA VAN VAP VB VBN VBP VOUT SUB_MB6_OLD
.ends

.subckt SUB_MB6_OLD Vdd VSS VA VAN VAP VB VBN VBP Vout
XPFET0 Y0	VAN	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XPFET1 Y0	VBN	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET0 Y0	VAP	Vz	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET1 Vz	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

*************************************
XPFET Vout	VSS	Y0	VDD PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1='cv'  n2=n  tubes=1
XNFET Vout	VDD	Y1	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1='cv'  n2=n  tubes=1
*************************************

XPFET2 Y1	VAN	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1

XNFET2 Y1	VAN	Vy	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
XNFET3 Vy	VBN	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt STI01_OLD Vdd VSS Vin Vout
XTC    Vdd	VSS	Vin	Vp  PTI

XPFET1 Vout	VSS	VA	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1='cv'  n2=n  tubes=1

XPFET0 VA	Vp	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=1
XNFET1 Vout	Vdd	Vdd	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1='cv'  n2=n  tubes=1
XNFET0 VA	Vp	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt STI01 Vdd VSS Vin Vout
XTC    Vdd	VSS	Vin	Vp  PTI
XPFET1 Vout	VSS	VSS	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=8
XPFET0 VA	Vp	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=1
XNFET1 Vout	Vdd	VA	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=8
XNFET0 VA	Vp	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=1
.ends

.subckt STI01D4 Vdd VSS Vin Vout
XTC    Vdd	VSS	Vin	Vp  PTI
XPFET1 Vout	VSS	VSS	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=64
XPFET0 VA	Vp	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=8
XNFET1 Vout	Vdd	VA	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=64
XNFET0 VA	Vp	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=17  n2=n  tubes=8
.ends

.subckt STI12 Vdd VSS Vin Vout
XPFET0 VA	Vin	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=1
XPFET1 Vout	VSS	VA	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=3
XNFET0 VA	Vin	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=1

XNFET1 Vout	Vdd	Vdd	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=3
.ends

.subckt STI12D4 Vdd VSS Vin Vout
XPFET0 VA	Vin	Vdd	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=17   n2=n  tubes=8
XPFET1 Vout	VSS	VA	Vdd PCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbp='Vfp' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=24
XNFET0 VA	Vin	VSS	VSS NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=8  n2=n  tubes=8

XNFET1 Vout	Vdd	Vdd	VSS  NCNFET Lch=Lg  Lgeff='Lgef' Lss=32e-9  Ldd=32e-9  
+ Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn='Vfn' Dout=0  Sout=0  Pitch=20e-9  n1=13  n2=n  tubes=24
.ends

