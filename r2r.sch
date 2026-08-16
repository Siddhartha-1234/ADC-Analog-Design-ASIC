v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -100 20 -70 {
lab=b0}
N 20 -10 150 -10 {
lab=#net1}
N 20 -10 20 20 {
lab=#net1}
N 20 80 20 150 {
lab=GND}
N 290 -100 290 -70 {
lab=b1}
N 210 -10 290 -10 {
lab=#net2}
N 570 -100 570 -70 {
lab=b2}
N 490 -10 570 -10 {
lab=#net3}
N 820 -100 820 -70 {
lab=b3}
N 740 -10 820 -10 {
lab=#net4}
N 1160 -100 1160 -70 {
lab=b4}
N 1080 -10 1160 -10 {
lab=#net5}
N 290 -10 430 -10 {
lab=#net2}
N 820 -10 1020 -10 {
lab=#net4}
N 1420 -100 1420 -70 {
lab=b5}
N 1340 -10 1420 -10 {
lab=#net6}
N 1160 -10 1280 -10 {
lab=#net5}
N 1690 -100 1690 -70 {
lab=b6}
N 1610 -10 1690 -10 {
lab=#net7}
N 1420 -10 1550 -10 {
lab=#net6}
N 1960 -100 1960 -70 {
lab=b1}
N 1880 -10 1960 -10 {
lab=out}
N 1690 -10 1820 -10 {
lab=#net7}
N 1960 -10 2110 -10 {
lab=out}
N 570 -10 680 -10 {
lab=#net3}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 20 -40 0 0 {name=R1
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 0 -40 0 0 {name=p18 lab=VSUBS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 20 50 0 0 {name=R16
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 0 50 0 0 {name=p34 lab=VSUBS}
C {ipin.sym} 20 -100 0 0 {name=p1 lab=b0}
C {iopin.sym} 20 150 0 0 {name=p21 lab=GND}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 290 -40 0 0 {name=R2
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 270 -40 0 0 {name=p11 lab=VSUBS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 180 -10 3 0 {name=R9
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 180 10 3 0 {name=p20 lab=VSUBS}
C {ipin.sym} 290 -100 0 0 {name=p2 lab=b1}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 570 -40 0 0 {name=R3
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 550 -40 0 0 {name=p3 lab=VSUBS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 460 -10 3 0 {name=R4
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 460 10 3 0 {name=p4 lab=VSUBS}
C {ipin.sym} 570 -100 0 0 {name=p5 lab=b2
}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 820 -40 0 0 {name=R5
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 800 -40 0 0 {name=p6 lab=VSUBS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 710 -10 3 0 {name=R6
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 710 10 3 0 {name=p7 lab=VSUBS}
C {ipin.sym} 820 -100 0 0 {name=p8 lab=b3
}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 1160 -40 0 0 {name=R7
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1140 -40 0 0 {name=p9 lab=VSUBS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 1050 -10 3 0 {name=R8
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1050 10 3 0 {name=p10 lab=VSUBS}
C {ipin.sym} 1160 -100 0 0 {name=p12 lab=b4
}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 1420 -40 0 0 {name=R10
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1400 -40 0 0 {name=p13 lab=VSUBS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 1310 -10 3 0 {name=R11
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1310 10 3 0 {name=p14 lab=VSUBS}
C {ipin.sym} 1420 -100 0 0 {name=p15 lab=b5}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 1690 -40 0 0 {name=R12
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1670 -40 0 0 {name=p16 lab=VSUBS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 1580 -10 3 0 {name=R13
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1580 10 3 0 {name=p17 lab=VSUBS}
C {ipin.sym} 1690 -100 0 0 {name=p19 lab=b6}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 1960 -40 0 0 {name=R14
L=40
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1940 -40 0 0 {name=p22 lab=VSUBS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 1850 -10 3 0 {name=R15
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1850 10 3 0 {name=p23 lab=VSUBS}
C {ipin.sym} 1960 -100 0 0 {name=p24 lab=b7}
C {opin.sym} 2110 -10 0 0 {name=p25 lab=out}
C {ipin.sym} 140 190 2 0 {name=p26 lab=VSUBS}
C {lab_pin.sym} 140 190 0 0 {name=p27 lab=VSUBS}
