
x
Command: %s
53*	vivadotcl2G
3synth_design -top Top_Student -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 357.305 ; gain = 100.477
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
Top_Student2default:default2
 2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
182default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter MIN_VOL bound to: 2000 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter STEP bound to: 131 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter MAX_LEN bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
clk2default:default2
 2default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/clk20k.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk2default:default2
 2default:default2
12default:default2
12default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/clk20k.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
single_pulse2default:default2
 2default:default2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/single_pulse.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

single_dff2default:default2
 2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/single_dff.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

single_dff2default:default2
 2default:default2
22default:default2
12default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/single_dff.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
single_pulse2default:default2
 2default:default2
32default:default2
12default:default2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/single_pulse.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux12default:default2
 2default:default2_
IC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/mux1.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux12default:default2
 2default:default2
42default:default2
12default:default2_
IC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/mux1.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
bcd2default:default2
 2default:default2^
HC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/bcd.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bcd2default:default2
 2default:default2
52default:default2
12default:default2^
HC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/bcd.v2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2
binary2default:default2
52default:default2
bcd2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
992default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
	char_disp2default:default2
 2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/char_disp.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	char_disp2default:default2
 2default:default2
62default:default2
12default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/char_disp.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
string_driver2default:default2
 2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v2default:default2
232default:default8@Z8-6157h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
i_reg2default:default2!
string_driver2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v2default:default2
322default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	char3_reg2default:default2!
string_driver2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v2default:default2
372default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	char2_reg2default:default2!
string_driver2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v2default:default2
382default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	char1_reg2default:default2!
string_driver2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v2default:default2
392default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	char0_reg2default:default2!
string_driver2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v2default:default2
402default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
temp_reg2default:default2!
string_driver2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v2default:default2
412default:default8@Z8-5788h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
string_driver2default:default2
 2default:default2
72default:default2
12default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/string_driver.v2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
sig12default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1302default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
sig22default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1302default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
opt2default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1302default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
sig12default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1312default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
sig22default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1312default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
opt2default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1312default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
sig22default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1322default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
opt2default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1322default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
sig22default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1332default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
opt2default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1332default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
ledDriv2default:default2
 2default:default2b
LC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/ledDriv.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2b
LC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/ledDriv.v2default:default2
292default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ledDriv2default:default2
 2default:default2
82default:default2
12default:default2b
LC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/ledDriv.v2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
sig12default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1422default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
sig22default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1422default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
opt2default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1422default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2
sig12default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1432default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2
sig22default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1432default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2
opt2default:default2
162default:default2
mux12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1432default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2&
coordinate_display2default:default2
 2default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
252default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
xycalculator2default:default2
 2default:default2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/xycalculator.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
xycalculator2default:default2
 2default:default2
92default:default2
12default:default2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/xycalculator.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
draw_border2default:default2
 2default:default2�
qC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/draw_border.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
draw_border2default:default2
 2default:default2
102default:default2
12default:default2�
qC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/draw_border.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

volume_bar2default:default2
 2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
242default:default8@Z8-6157h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag0_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
482default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag1_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag2_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
502default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag3_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
512default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag4_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
522default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag5_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
532default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag6_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
542default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag7_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
552default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag8_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
562default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	flag9_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
572default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

flag10_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
582default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

flag11_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
592default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

flag12_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
602default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

flag13_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
612default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

flag14_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
622default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

flag15_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
632default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
low_volume_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
642default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
medium_volume_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
652default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2#
high_volume_reg2default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
662default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

volume_bar2default:default2
 2default:default2
112default:default2
12default:default2�
pC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/volume_bar.v2default:default2
242default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
logo_orange2default:default2
 2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_orange.v2default:default2
232default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter STARTX bound to: 0 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 95 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 56 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter startY bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_orange.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_orange.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
logo_orange2default:default2
 2default:default2
122default:default2
12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_orange.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

logo_white2default:default2
 2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_white.v2default:default2
232default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter STARTX bound to: 0 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 95 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 56 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter startY bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_white.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_white.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

logo_white2default:default2
 2default:default2
132default:default2
12default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_white.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	logo_blue2default:default2
 2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_blue.v2default:default2
232default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter STARTX bound to: 0 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 95 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 56 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter startY bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_blue.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_blue.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	logo_blue2default:default2
 2default:default2
142default:default2
12default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_blue.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	logo_game2default:default2
 2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_game.v2default:default2
222default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter STARTX bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 18 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_game.v2default:default2
292default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_game.v2default:default2
292default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	logo_game2default:default2
 2default:default2
152default:default2
12default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_game.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

logo_watch2default:default2
 2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_watch.v2default:default2
222default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter STARTX bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 18 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_watch.v2default:default2
292default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_watch.v2default:default2
292default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

logo_watch2default:default2
 2default:default2
162default:default2
12default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_watch.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

logo_sound2default:default2
 2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_sound.v2default:default2
222default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter STARTX bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 18 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_sound.v2default:default2
292default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_sound.v2default:default2
292default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

logo_sound2default:default2
 2default:default2
172default:default2
12default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_sound.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
str_oled2default:default2
 2default:default2c
MC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/str_oled.v2default:default2
232default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter CHAR_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter CHAR_HEIGHT bound to: 8 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter START_INDEX bound to: 2 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter END_INDEX bound to: 91 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
	text_disp2default:default2
 2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/text_disp.v2default:default2
232default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter CHAR_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter CHAR_HEIGHT bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
font2default:default2
 2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Font_table.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
font2default:default2
 2default:default2
182default:default2
12default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Font_table.v2default:default2
232default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/text_disp.v2default:default2
342default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/text_disp.v2default:default2
342default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	text_disp2default:default2
 2default:default2
192default:default2
12default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/text_disp.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
str_oled2default:default2
 2default:default2
202default:default2
12default:default2c
MC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/str_oled.v2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
482default:default2
string2default:default2
1202default:default2
str_oled2default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
742default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
882default:default2
string2default:default2
1202default:default2
str_oled2default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
752default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
562default:default2
string2default:default2
1202default:default2
str_oled2default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
762default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2 
start_tetris2default:default2
 2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
232default:default8@Z8-6157h px� 
]
%s
*synth2E
1	Parameter MAX_LEN bound to: 15 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
logo_tetris2default:default2
 2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_tetris.v2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter STARTX bound to: 15 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 78 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_tetris.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_tetris.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
logo_tetris2default:default2
 2default:default2
212default:default2
12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/logo_tetris.v2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1202default:default2
pixel2default:default2
12default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
432default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1202default:default2
pixel2default:default2
12default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
442default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1202default:default2
pixel2default:default2
12default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
452default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1202default:default2
pixel2default:default2
12default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
462default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1202default:default2
pixel2default:default2
12default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
472default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1202default:default2
pixel2default:default2
12default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
482default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1202default:default2
pixel2default:default2
12default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
492default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1202default:default2
pixel2default:default2
12default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
502default:default8@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
start_tetris2default:default2
 2default:default2
222default:default2
12default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/start_tetris.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
tetris_main2default:default2
 2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
252default:default8@Z8-6157h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1282default:default2
string2default:default2
1202default:default2
str_oled2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
862default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1282default:default2
string2default:default2
1202default:default2
str_oled2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
872default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1282default:default2
string2default:default2
1202default:default2
str_oled2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
882default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1282default:default2
string2default:default2
1202default:default2
str_oled2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
892default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
string2default:default2
1202default:default2
str_oled2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
922default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
242default:default2
string2default:default2
1202default:default2
str_oled2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
932default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
string2default:default2
1202default:default2
str_oled2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
942default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
402default:default2
string2default:default2
1202default:default2
str_oled2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
952default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
	next_line2default:default2
 2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_line.v2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter STARTX bound to: 64 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 73 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_line.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_line.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	next_line2default:default2
 2default:default2
232default:default2
12default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_line.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

next_leftZ2default:default2
 2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_leftZ.v2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter STARTX bound to: 64 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 73 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_leftZ.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_leftZ.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

next_leftZ2default:default2
 2default:default2
242default:default2
12default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_leftZ.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
next_rightZ2default:default2
 2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_rightZ.v2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter STARTX bound to: 64 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 73 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_rightZ.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_rightZ.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
next_rightZ2default:default2
 2default:default2
252default:default2
12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_rightZ.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
next_square2default:default2
 2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_square.v2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter STARTX bound to: 64 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 73 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_square.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_square.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
next_square2default:default2
 2default:default2
262default:default2
12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_square.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
next_T2default:default2
 2default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_T.v2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter STARTX bound to: 64 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 73 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_T.v2default:default2
302default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_T.v2default:default2
302default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
next_T2default:default2
 2default:default2
272default:default2
12default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_T.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
next_L2default:default2
 2default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_L.v2default:default2
222default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter STARTX bound to: 64 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 73 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_L.v2default:default2
292default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_L.v2default:default2
292default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
next_L2default:default2
 2default:default2
282default:default2
12default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_L.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
next_RL2default:default2
 2default:default2b
LC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_RL.v2default:default2
222default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter STARTX bound to: 64 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter ENDX bound to: 73 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter LOGO_HEIGHT bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2
row_reg2default:default2b
LC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_RL.v2default:default2
292default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	index_reg2default:default2b
LC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_RL.v2default:default2
292default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
next_RL2default:default2
 2default:default2
292default:default2
12default:default2b
LC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/next_RL.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
avgPeak_table2default:default2
 2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/avgPeak_table.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
avgPeak_table2default:default2
 2default:default2
302default:default2
12default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/avgPeak_table.v2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
number2default:default2
1202default:default2!
avgPeak_table2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1082default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
number2default:default2
1202default:default2!
avgPeak_table2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1092default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
number2default:default2
1202default:default2!
avgPeak_table2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1102default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
number2default:default2
1202default:default2!
avgPeak_table2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1112default:default8@Z8-689h px� 
�
-case statement is not full and has no default155*oasys2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1372default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
2582default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
2832default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
3082default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
3192default:default8@Z8-155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
block_out_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1212default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
static_out_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1212default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
moving_out_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1212default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
border_out_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1292default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
ingame_score_out_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1472default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2+
ingame_score_colour_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1482default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
gameOverColour_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
generate_block_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1682default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2*
collision_LRrotate_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
2552default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2&
collision_down_reg2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
2682default:default8@Z8-6014h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
first_game_reg2default:default2
tetris_main2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1672default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2 
top_left_reg2default:default2
tetris_main2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1932default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
block_state_reg2default:default2
tetris_main2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1922default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
lowest_row_reg2default:default2
tetris_main2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
792default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
next_block_reg2default:default2
tetris_main2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
3062default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2&
current_colour_reg2default:default2
tetris_main2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
3092default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
next_colour_reg2default:default2
tetris_main2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
3202default:default8@Z8-5788h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tetris_main2default:default2
 2default:default2
312default:default2
12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
252default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
peak_average2default:default2
 2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_average.v2default:default2
232default:default8@Z8-6157h px� 
]
%s
*synth2E
1	Parameter DIVISOR bound to: 20 - type: integer 
2default:defaulth p
x
� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1282default:default2
string2default:default2
1202default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_average.v2default:default2
362default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
1282default:default2
string2default:default2
1202default:default2
str_oled2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_average.v2default:default2
382default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
number2default:default2
1202default:default2!
avgPeak_table2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_average.v2default:default2
402default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
number2default:default2
1202default:default2!
avgPeak_table2default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_average.v2default:default2
412default:default8@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
peak_average2default:default2
 2default:default2
322default:default2
12default:default2g
QC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_average.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
custom_border2default:default2
 2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_border.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
colourHex_disp2default:default2
 2default:default2i
SC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/colourHex_disp.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
colourHex_disp2default:default2
 2default:default2
332default:default2
12default:default2i
SC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/colourHex_disp.v2default:default2
232default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_border.v2default:default2
772default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
custom_border2default:default2
 2default:default2
342default:default2
12default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_border.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
custom_background2default:default2
 2default:default2l
VC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_background.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2l
VC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_background.v2default:default2
772default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
custom_background2default:default2
 2default:default2
352default:default2
12default:default2l
VC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_background.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

custom_low2default:default2
 2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_low.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_low.v2default:default2
772default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

custom_low2default:default2
 2default:default2
362default:default2
12default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_low.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

custom_med2default:default2
 2default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_med.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_med.v2default:default2
772default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

custom_med2default:default2
 2default:default2
372default:default2
12default:default2e
OC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_med.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
custom_high2default:default2
 2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_high.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_high.v2default:default2
772default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
custom_high2default:default2
 2default:default2
382default:default2
12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/custom_high.v2default:default2
232default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
1902default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
2212default:default8@Z8-155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2#
startScreen_reg2default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
2182default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
menucolour_reg2default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
2192default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
coordinate_display2default:default2
 2default:default2
392default:default2
12default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
252default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	stopwatch2default:default2
 2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/stopwatch.v2default:default2
242default:default8@Z8-6157h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
52default:default2
char2default:default2
82default:default2
	char_disp2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/stopwatch.v2default:default2
912default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
52default:default2
char2default:default2
82default:default2
	char_disp2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/stopwatch.v2default:default2
922default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
52default:default2
char2default:default2
82default:default2
	char_disp2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/stopwatch.v2default:default2
932default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
52default:default2
char2default:default2
82default:default2
	char_disp2default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/stopwatch.v2default:default2
942default:default8@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	stopwatch2default:default2
 2default:default2
402default:default2
12default:default2d
NC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/stopwatch.v2default:default2
242default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
Audio_Capture2default:default2
 2default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Audio_Capture.v2default:default2
252default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Audio_Capture2default:default2
 2default:default2
412default:default2
12default:default2h
RC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Audio_Capture.v2default:default2
252default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
Oled_Display2default:default2
 2default:default2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/Oled_Display.v2default:default2
362default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter Width bound to: 96 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter Height bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter PixelCount bound to: 6144 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter PixelCountWidth bound to: 13 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ClkFreq bound to: 6250000 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter FrameFreq bound to: 60 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter FrameDiv bound to: 104166 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter FrameDivWidth bound to: 17 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter PowerDelay bound to: 20 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ResetDelay bound to: 3 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter VccEnDelay bound to: 20 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter StartupCompleteDelay bound to: 100 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter MaxDelay bound to: 100 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter MaxDelayCount bound to: 625000 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter StateCount bound to: 32 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter StateWidth bound to: 5 - type: integer 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter PowerUp bound to: 5'b00000 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter Reset bound to: 5'b00001 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter ReleaseReset bound to: 5'b00011 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter EnableDriver bound to: 5'b00010 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter DisplayOff bound to: 5'b00110 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter SetRemapDisplayFormat bound to: 5'b00111 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter SetStartLine bound to: 5'b00101 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter SetOffset bound to: 5'b00100 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter SetNormalDisplay bound to: 5'b01100 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter SetMultiplexRatio bound to: 5'b01101 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter SetMasterConfiguration bound to: 5'b01111 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter DisablePowerSave bound to: 5'b01110 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter SetPhaseAdjust bound to: 5'b01010 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter SetDisplayClock bound to: 5'b01011 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter SetSecondPrechargeA bound to: 5'b01001 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter SetSecondPrechargeB bound to: 5'b01000 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter SetSecondPrechargeC bound to: 5'b11000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter SetPrechargeLevel bound to: 5'b11001 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter SetVCOMH bound to: 5'b11011 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter SetMasterCurrent bound to: 5'b11010 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter SetContrastA bound to: 5'b11110 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter SetContrastB bound to: 5'b11111 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter SetContrastC bound to: 5'b11101 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter DisableScrolling bound to: 5'b11100 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter ClearScreen bound to: 5'b10100 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter VccEn bound to: 5'b10101 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter DisplayOn bound to: 5'b10111 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter PrepareNextFrame bound to: 5'b10110 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter SetColAddress bound to: 5'b10010 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter SetRowAddress bound to: 5'b10011 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter WaitNextFrame bound to: 5'b10001 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter SendPixel bound to: 5'b10000 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter SpiCommandMaxWidth bound to: 40 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter SpiCommandBitCountWidth bound to: 6 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/Oled_Display.v2default:default2
1242default:default8@Z8-226h px� 
�
default block is never used226*oasys2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/Oled_Display.v2default:default2
2012default:default8@Z8-226h px� 
�
,zero replication count - replication ignored693*oasys2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/Oled_Display.v2default:default2
3492default:default8@Z8-693h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
Oled_Display2default:default2
 2default:default2
422default:default2
12default:default2�
rC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/Oled_Display.v2default:default2
362default:default8@Z8-6155h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
ecoMode_reg2default:default2
Top_Student2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
1472default:default8@Z8-5788h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Top_Student2default:default2
 2default:default2
432default:default2
12default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
182default:default8@Z8-6155h px� 
�
!design %s has unconnected port %s3331*oasys2
custom_high2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2

custom_med2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2

custom_low2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
custom_background2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2!
custom_border2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
tetris_main2default:default2
btn_up2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2 
start_tetris2default:default2
btnL2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2 
start_tetris2default:default2
btnR2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
start_tetris2default:default2'
tetris_start_screen2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2&
coordinate_display2default:default2
clk40sig2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2&
coordinate_display2default:default2

text_onOff2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
JC[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[10]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[8]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[7]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[6]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[5]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[4]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[3]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[2]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[1]2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 435.484 ; gain = 178.656
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 435.484 ; gain = 178.656
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 435.484 ; gain = 178.656
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2j
TC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/constrs_1/new/Basys3_Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2j
TC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/constrs_1/new/Basys3_Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2h
TC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/constrs_1/new/Basys3_Master.xdc2default:default21
.Xil/Top_Student_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0192default:default2
856.1802default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 856.180 ; gain = 599.352
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 856.180 ; gain = 599.352
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 856.180 ; gain = 599.352
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
counter02default:default2
32default:default2
52default:defaultZ8-5544h px� 
q
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
i2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
temp2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
seg2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	gameReset2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
exit_tetris2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	continue02default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
newgame2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
credits2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
exit2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
pixel2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2f
PC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/tetris_main.v2default:default2
1932default:default8@Z8-5818h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	top_left02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	top_left02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
OLED_colour32default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
OLED_colour52default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
OLED_colour22default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
moving_blocks2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

scoreTotal2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
top_left2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
block_state2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2"
current_colour2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
next_colour2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number12default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number22default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number32default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number12default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number22default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number32default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number12default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number22default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number32default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number12default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number22default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number32default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number12default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number22default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
number32default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
merging register '%s' into '%s'3619*oasys2$
customColour_reg2default:default2#
custom_flag_reg2default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
612default:default8@Z8-4471h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2$
customColour_reg2default:default2�
xC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/imports/EE2026-Design-Project-master/coordinate_display.v2default:default2
612default:default8@Z8-6014h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
watch_start2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
mode_brd2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
mode_background2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
mode_low2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
mode_med2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	mode_high2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
string02default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
string02default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
string02default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2 
second_count2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2 
Oled_Display2default:defaultZ8-802h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
fsm_next_state02default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
fsm_next_state02default:default2
12default:default2
52default:defaultZ8-5544h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
fsm_next_state02default:defaultZ8-5546h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 PowerUp | 00000000100000000000000000000000 |                            00000
2default:defaulth p
x
� 
�
%s
*synth2s
_                   Reset | 00000000000100000000000000000000 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_            ReleaseReset | 00000000000000000000100000000000 |                            00011
2default:defaulth p
x
� 
�
%s
*synth2s
_            EnableDriver | 00000000000000000001000000000000 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_              DisplayOff | 00000000000000000100000000000000 |                            00110
2default:defaulth p
x
� 
�
%s
*synth2s
_   SetRemapDisplayFormat | 00000100000000000000000000000000 |                            00111
2default:defaulth p
x
� 
�
%s
*synth2s
_            SetStartLine | 00001000000000000000000000000000 |                            00101
2default:defaulth p
x
� 
�
%s
*synth2s
_               SetOffset | 10000000000000000000000000000000 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_        SetNormalDisplay | 00000000000000000000000010000000 |                            01100
2default:defaulth p
x
� 
�
%s
*synth2s
_       SetMultiplexRatio | 00000000000000000000000000100000 |                            01101
2default:defaulth p
x
� 
�
%s
*synth2s
_  SetMasterConfiguration | 00000000000000000000000001000000 |                            01111
2default:defaulth p
x
� 
�
%s
*synth2s
_        DisablePowerSave | 00000000000000000000000000000100 |                            01110
2default:defaulth p
x
� 
�
%s
*synth2s
_          SetPhaseAdjust | 00000000000000000000000000001000 |                            01010
2default:defaulth p
x
� 
�
%s
*synth2s
_         SetDisplayClock | 00000000001000000000000000000000 |                            01011
2default:defaulth p
x
� 
�
%s
*synth2s
_     SetSecondPrechargeA | 00000000010000000000000000000000 |                            01001
2default:defaulth p
x
� 
�
%s
*synth2s
_     SetSecondPrechargeB | 01000000000000000000000000000000 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_     SetSecondPrechargeC | 00000010000000000000000000000000 |                            11000
2default:defaulth p
x
� 
�
%s
*synth2s
_       SetPrechargeLevel | 00000001000000000000000000000000 |                            11001
2default:defaulth p
x
� 
�
%s
*synth2s
_                SetVCOMH | 00000000000000010000000000000000 |                            11011
2default:defaulth p
x
� 
�
%s
*synth2s
_        SetMasterCurrent | 00000000000000100000000000000000 |                            11010
2default:defaulth p
x
� 
�
%s
*synth2s
_            SetContrastA | 00000000000001000000000000000000 |                            11110
2default:defaulth p
x
� 
�
%s
*synth2s
_            SetContrastB | 00100000000000000000000000000000 |                            11111
2default:defaulth p
x
� 
�
%s
*synth2s
_            SetContrastC | 00000000000000000000000000000001 |                            11101
2default:defaulth p
x
� 
�
%s
*synth2s
_        DisableScrolling | 00000000000000000000000000000010 |                            11100
2default:defaulth p
x
� 
�
%s
*synth2s
_             ClearScreen | 00000000000000000000000000010000 |                            10100
2default:defaulth p
x
� 
�
%s
*synth2s
_                   VccEn | 00010000000000000000000000000000 |                            10101
2default:defaulth p
x
� 
�
%s
*synth2s
_               DisplayOn | 00000000000010000000000000000000 |                            10111
2default:defaulth p
x
� 
�
%s
*synth2s
_        PrepareNextFrame | 00000000000000001000000000000000 |                            10110
2default:defaulth p
x
� 
�
%s
*synth2s
_           SetColAddress | 00000000000000000000010000000000 |                            10010
2default:defaulth p
x
� 
�
%s
*synth2s
_           SetRowAddress | 00000000000000000000000100000000 |                            10011
2default:defaulth p
x
� 
�
%s
*synth2s
_           WaitNextFrame | 00000000000000000000001000000000 |                            10001
2default:defaulth p
x
� 
�
%s
*synth2s
_               SendPixel | 00000000000000000010000000000000 |                            10000
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2 
Oled_Display2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 856.180 ; gain = 599.352
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
f
%s
*synth2N
:|      |RTL Partition           |Replication |Instances |
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
f
%s
*synth2N
:|1     |string_driver           |           2|     16400|
2default:defaulth p
x
� 
f
%s
*synth2N
:|2     |str_oled                |          33|      8772|
2default:defaulth p
x
� 
f
%s
*synth2N
:|3     |start_tetris__GC0       |           1|       557|
2default:defaulth p
x
� 
f
%s
*synth2N
:|4     |tetris_main__GCB0       |           1|     41913|
2default:defaulth p
x
� 
f
%s
*synth2N
:|5     |tetris_main__GCB1       |           1|     12495|
2default:defaulth p
x
� 
f
%s
*synth2N
:|6     |tetris_main__GCB2       |           1|     24528|
2default:defaulth p
x
� 
f
%s
*synth2N
:|7     |tetris_main__GCB3       |           1|       896|
2default:defaulth p
x
� 
f
%s
*synth2N
:|8     |tetris_main__GCB4       |           1|     24785|
2default:defaulth p
x
� 
f
%s
*synth2N
:|9     |tetris_main__GCB5       |           1|     27297|
2default:defaulth p
x
� 
f
%s
*synth2N
:|10    |peak_average__GC0       |           1|       820|
2default:defaulth p
x
� 
f
%s
*synth2N
:|11    |coordinate_display__GC0 |           1|     10234|
2default:defaulth p
x
� 
f
%s
*synth2N
:|12    |Top_Student__GC0        |           1|      9637|
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 38    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     13 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     13 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1008  
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 495   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 990   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 43    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 21    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  21 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 5     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              312 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               48 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 68    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 19    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 587   
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    312 Bit        Muxes := 27    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input    307 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    103 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input    103 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     87 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     55 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     48 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     48 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input     48 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     47 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     40 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  32 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  32 Input     20 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 22    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  32 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  32 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 102   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 40    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 35    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 156   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
@
%s
*synth2(
Module Top_Student 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     13 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
� 
B
%s
*synth2*
Module string_driver 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__7 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module text_disp__9 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module text_disp__10 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module text_disp__11 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module text_disp__12 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module text_disp__13 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module text_disp__14 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module text_disp 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module str_oled 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module logo_tetris 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module start_tetris 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    103 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input    103 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 28    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
E
%s
*synth2-
Module avgPeak_table__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module avgPeak_table__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module avgPeak_table__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module avgPeak_table__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module next_RL 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module next_L 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module next_T 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module next_square 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module next_rightZ 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module next_leftZ 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module next_line 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module tetris_main 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  21 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              312 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               48 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    312 Bit        Muxes := 27    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input    307 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     48 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     48 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input     48 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 35    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module avgPeak_table__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module avgPeak_table 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module peak_average 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module xycalculator 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 2     
2default:defaulth p
x
� 
@
%s
*synth2(
Module draw_border 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module volume_bar 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
@
%s
*synth2(
Module logo_orange 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     13 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module logo_white 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     13 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module logo_blue 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     13 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module logo_game 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module logo_watch 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module logo_sound 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module custom_border 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
F
%s
*synth2.
Module custom_background 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module custom_low 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module custom_med 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module custom_high 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
G
%s
*synth2/
Module coordinate_display 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 10    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     87 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     55 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     47 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 19    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__7 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module clk 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__7 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__9 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module single_dff__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module single_dff 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module mux1__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module bcd 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module mux1__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module mux1__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module mux1__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module mux1__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__9 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module ledDriv__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module clk__10 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module ledDriv__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module clk__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module ledDriv 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module mux1__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
Module mux1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module stopwatch 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module Audio_Capture 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module Oled_Display 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     40 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  32 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  32 Input     20 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  32 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  32 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4031*oasys2
22default:defaultZ8-5580h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
clk10/slowclk_reg2default:default2a
KC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.srcs/sources_1/new/clk20k.v2default:default2
282default:default8@Z8-6014h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2$
clk625m/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
clk20k/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
clk361/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2"
clk40/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2"
clk20/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
clk4/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
clk1/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
exit2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
credits2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
newgame2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
clk600/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
clk600/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
clk600/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2 
second_count2default:default2
322default:default2
252default:defaultZ8-5545h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
fsm_next_state02default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
fsm_next_state02default:defaultZ8-5546h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
clk1/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
clk20k/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2!
clk4/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2$
clk625m/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
clk361/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2"
clk40/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2"
clk20/slowclk02default:default2
322default:default2
252default:defaultZ8-5545h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
JC[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[10]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[8]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[7]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[6]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[5]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[4]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[3]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[2]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
sw[1]2default:defaultZ8-3331h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/ones_place/number_reg[5]2default:default2
FD2default:default2:
&tetrisgamei_5/tens_place/number_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/ones_place/number_reg[6]2default:default2
FD2default:default2:
&tetrisgamei_5/tens_place/number_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/ones_place/number_reg[7]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/ones_place/number_reg[8]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/ones_place/number_reg[9]2default:default2
FD2default:default2;
'tetrisgamei_5/ones_place/number_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/ones_place/number_reg[10]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/ones_place/number_reg[11]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/ones_place/number_reg[12]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/ones_place/number_reg[13]2default:default2
FD2default:default2;
'tetrisgamei_5/ones_place/number_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/tens_place/number_reg[5]2default:default2
FD2default:default2:
&tetrisgamei_5/tens_place/number_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/tens_place/number_reg[6]2default:default2
FD2default:default2;
'tetrisgamei_5/thous_place/number_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/tens_place/number_reg[7]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/tens_place/number_reg[8]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/tens_place/number_reg[9]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/tens_place/number_reg[10]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/tens_place/number_reg[11]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/tens_place/number_reg[12]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/tens_place/number_reg[13]2default:default2
FD2default:default2;
'tetrisgamei_5/tens_place/number_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/hund_place/number_reg[5]2default:default2
FD2default:default2;
'tetrisgamei_5/thous_place/number_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/hund_place/number_reg[6]2default:default2
FD2default:default2;
'tetrisgamei_5/thous_place/number_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/hund_place/number_reg[7]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/hund_place/number_reg[8]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&tetrisgamei_5/hund_place/number_reg[9]2default:default2
FD2default:default2;
'tetrisgamei_5/hund_place/number_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/hund_place/number_reg[10]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/hund_place/number_reg[11]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/hund_place/number_reg[12]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/hund_place/number_reg[13]2default:default2
FD2default:default2;
'tetrisgamei_5/hund_place/number_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/thous_place/number_reg[5]2default:default2
FD2default:default2;
'tetrisgamei_5/thous_place/number_reg[6]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2=
)tetrisgamei_5/\thous_place/number_reg[6] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/thous_place/number_reg[7]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/thous_place/number_reg[8]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'tetrisgamei_5/thous_place/number_reg[9]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(tetrisgamei_5/thous_place/number_reg[10]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(tetrisgamei_5/thous_place/number_reg[11]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[12]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*tetrisgamei_5/\thous_place/number_reg[12] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(tetrisgamei_5/thous_place/number_reg[13]2default:default2
FD2default:default2<
(tetrisgamei_5/thous_place/number_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!peakAvgi_8/avgTable/number_reg[5]2default:default2
FD2default:default26
"peakAvgi_8/peakTable/number_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!peakAvgi_8/avgTable/number_reg[6]2default:default2
FD2default:default26
"peakAvgi_8/peakTable/number_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!peakAvgi_8/avgTable/number_reg[7]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!peakAvgi_8/avgTable/number_reg[8]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!peakAvgi_8/avgTable/number_reg[9]2default:default2
FD2default:default26
"peakAvgi_8/avgTable/number_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"peakAvgi_8/avgTable/number_reg[10]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"peakAvgi_8/avgTable/number_reg[11]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"peakAvgi_8/avgTable/number_reg[12]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"peakAvgi_8/avgTable/number_reg[13]2default:default2
FD2default:default26
"peakAvgi_8/avgTable/number_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"peakAvgi_8/peakTable/number_reg[5]2default:default2
FD2default:default26
"peakAvgi_8/peakTable/number_reg[6]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default28
$peakAvgi_8/\peakTable/number_reg[6] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"peakAvgi_8/peakTable/number_reg[7]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"peakAvgi_8/peakTable/number_reg[8]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys26
"peakAvgi_8/peakTable/number_reg[9]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#peakAvgi_8/peakTable/number_reg[10]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#peakAvgi_8/peakTable/number_reg[11]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[12]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%peakAvgi_8/\peakTable/number_reg[12] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#peakAvgi_8/peakTable/number_reg[13]2default:default2
FD2default:default27
#peakAvgi_8/peakTable/number_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
i_0/watchmod/minutes_reg[4]2default:default2
FDC2default:default29
%i_0/watchmod/minute_tens_count_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%i_0/watchmod/minute_tens_count_reg[4]2default:default2
FDC2default:default29
%i_0/watchmod/minute_tens_count_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%i_0/watchmod/minute_tens_count_reg[3]2default:default2
FDC2default:default2/
i_0/watchmod/seconds_reg[4]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
i_0/watchmod/\seconds_reg[4] 2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
seconds_reg[4]2default:default2
	stopwatch2default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameText /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text8/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text7/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text6/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text5/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text4/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text3/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text2/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \disp1/gameText /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__12default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__22default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__32default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__42default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__52default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__62default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__72default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__82default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2 
text_disp__92default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__142default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"\disp1/gameWatch /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameWatch /text3/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameWatch /text2/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameWatch /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameWatch /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__292default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__282default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__272default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__262default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__162default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"\disp1/gameSound /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameSound /text7/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameSound /text6/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameSound /text5/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameSound /text4/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameSound /text3/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameSound /text2/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameSound /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\disp1/gameSound /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__442default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__432default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__422default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__412default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__402default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__392default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__382default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__372default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__312default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\disp1/stopWatchText /text14/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\disp1/stopWatchText /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\disp1/stopWatchText /text12/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%\disp1/stopWatchText /text2/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%\disp1/stopWatchText /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%\disp1/stopWatchText /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__592default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__582default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__572default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__472default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__462default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__452default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option1 /text14/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option1 /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option1 /text12/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option1 /text11/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option1 /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option1 /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__742default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__732default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__632default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__622default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__612default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__602default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option2 /text14/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option2 /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option2 /text12/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option2 /text11/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option2 /text6/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option2 /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option2 /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__892default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__882default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__832default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__782default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__772default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__762default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__752default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option3 /text14/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option3 /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option3 /text12/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option3 /text11/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option3 /text10/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option3 /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option3 /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1042default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1032default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__942default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__932default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__922default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__912default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2!
text_disp__902default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option4 /text14/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option4 /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option4 /text12/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option4 /text11/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/option4 /text10/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option4 /text9/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option4 /text8/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option4 /text7/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option4 /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\disp1/tetrisMenu/option4 /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1192default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1182default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1122default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1112default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1102default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1092default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1082default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1072default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1062default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1052default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits0 /text14/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits0 /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits0 /text12/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits0 /text11/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1232default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1222default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1212default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1202default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text8/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text7/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text6/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text5/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text4/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text3/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text2/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits1 /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1492default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1482default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1472default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1462default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1452default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1442default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1432default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1422default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1412default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text8/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text7/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text6/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text5/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text4/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text3/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text2/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text1/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits2 /text0/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1642default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1632default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1622default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1612default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1602default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1592default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1582default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1572default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1562default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits3 /text14/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits3 /text13/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits3 /text12/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits3 /text11/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\disp1/tetrisMenu/credits3 /text10/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits3 /text9/pixel_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1702default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1692default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1682default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1672default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1662default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1652default:defaultZ8-3332h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits4 /text8/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits4 /text7/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits4 /text6/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits4 /text5/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits4 /text4/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits4 /text3/pixel_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\disp1/tetrisMenu/credits4 /text2/pixel_reg2default:defaultZ8-3333h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1942default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1932default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1922default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1912default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1902default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1892default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1882default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1872default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__1862default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__2092default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	pixel_reg2default:default2"
text_disp__2082default:defaultZ8-3332h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
simultaneous_clear_reg[2]2default:default2
FDCE2default:default2-
simultaneous_clear_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
simultaneous_clear_reg[1]2default:default2
FDCE2default:default2-
simultaneous_clear_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
current_colour_reg[1]2default:default2
FDE2default:default2)
current_colour_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
next_colour_reg[1]2default:default2
FDE2default:default2&
next_colour_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
current_colour_reg[3]2default:default2
FDE2default:default2)
current_colour_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
next_colour_reg[3]2default:default2
FDE2default:default2&
next_colour_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
current_colour_reg[5]2default:default2
FDE2default:default2)
current_colour_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
next_colour_reg[5]2default:default2
FDE2default:default2&
next_colour_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
current_colour_reg[7]2default:default2
FDE2default:default2)
current_colour_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
next_colour_reg[7]2default:default2
FDE2default:default2&
next_colour_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
current_colour_reg[8]2default:default2
FDE2default:default2*
current_colour_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
next_colour_reg[8]2default:default2
FDE2default:default2'
next_colour_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2*
current_colour_reg[11]2default:default2
FDE2default:default2*
current_colour_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
next_colour_reg[11]2default:default2
FDE2default:default2'
next_colour_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2*
current_colour_reg[12]2default:default2
FDE2default:default2*
current_colour_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
next_colour_reg[12]2default:default2
FDE2default:default2'
next_colour_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2*
current_colour_reg[13]2default:default2
FDE2default:default2*
current_colour_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
next_colour_reg[13]2default:default2
FDE2default:default2'
next_colour_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2#
movement_reg[1]2default:default2
FDC2default:default2#
movement_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
OLED_colour_reg[1]2default:default2
FDS2default:default2&
OLED_colour_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
OLED_colour_reg[11]2default:default2
FDS2default:default2'
OLED_colour_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2'
OLED_colour_reg[12]2default:default2
FDS2default:default2'
OLED_colour_reg[15]2default:defaultZ8-3886h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
string02default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
string02default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
string02default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
!design %s has unconnected port %s3331*oasys2
custom_high2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2

custom_med2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2

custom_low2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
custom_background2default:default2
mid_sel2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2!
custom_border2default:default2
mid_sel2default:defaultZ8-3331h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:03:00 ; elapsed = 00:03:23 . Memory (MB): peak = 882.105 ; gain = 625.277
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
2
%s*synth2

ROM:
2default:defaulth px� 
r
%s*synth2Z
F+------------+---------------------+---------------+----------------+
2default:defaulth px� 
s
%s*synth2[
G|Module Name | RTL Object          | Depth x Width | Implemented As | 
2default:defaulth px� 
r
%s*synth2Z
F+------------+---------------------+---------------+----------------+
2default:defaulth px� 
s
%s*synth2[
G|char_disp   | seg                 | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|font        | data                | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|text_disp   | font_disp/data      | 256x40        | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|stopwatch   | minute_tens_pos/seg | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|stopwatch   | minute_pos/seg      | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|stopwatch   | second_tens_pos/seg | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|stopwatch   | second_pos/seg      | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | str_4/seg           | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | str_5/seg           | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | str_6/seg           | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | str_7/seg           | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | str_8/seg           | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | str_9/seg           | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | str_10/seg          | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | str_11/seg          | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | char0/seg           | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|Top_Student | char1/seg           | 256x8         | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G+------------+---------------------+---------------+----------------+

2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
f
%s
*synth2N
:|      |RTL Partition           |Replication |Instances |
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
f
%s
*synth2N
:|1     |string_driver           |           2|      1034|
2default:defaulth p
x
� 
f
%s
*synth2N
:|2     |str_oled                |           1|      1079|
2default:defaulth p
x
� 
f
%s
*synth2N
:|3     |start_tetris__GC0       |           1|       328|
2default:defaulth p
x
� 
f
%s
*synth2N
:|4     |tetris_main__GCB0       |           1|     10925|
2default:defaulth p
x
� 
f
%s
*synth2N
:|5     |tetris_main__GCB1       |           1|      2049|
2default:defaulth p
x
� 
f
%s
*synth2N
:|6     |tetris_main__GCB2       |           1|      3636|
2default:defaulth p
x
� 
f
%s
*synth2N
:|7     |tetris_main__GCB3       |           1|        60|
2default:defaulth p
x
� 
f
%s
*synth2N
:|8     |tetris_main__GCB4       |           1|      3989|
2default:defaulth p
x
� 
f
%s
*synth2N
:|9     |tetris_main__GCB5       |           1|      3343|
2default:defaulth p
x
� 
f
%s
*synth2N
:|10    |peak_average__GC0       |           1|       318|
2default:defaulth p
x
� 
f
%s
*synth2N
:|11    |coordinate_display__GC0 |           1|      3966|
2default:defaulth p
x
� 
f
%s
*synth2N
:|12    |Top_Student__GC0        |           1|      4472|
2default:defaulth p
x
� 
f
%s
*synth2N
:|13    |str_oled__1             |           1|      1392|
2default:defaulth p
x
� 
f
%s
*synth2N
:|14    |str_oled__2             |           1|      1093|
2default:defaulth p
x
� 
f
%s
*synth2N
:|15    |str_oled__3             |           1|      1055|
2default:defaulth p
x
� 
f
%s
*synth2N
:|16    |str_oled__4             |           1|      2131|
2default:defaulth p
x
� 
f
%s
*synth2N
:|17    |str_oled__5             |           1|      1302|
2default:defaulth p
x
� 
f
%s
*synth2N
:|18    |str_oled__6             |           1|      1283|
2default:defaulth p
x
� 
f
%s
*synth2N
:|19    |str_oled__7             |           1|      1076|
2default:defaulth p
x
� 
f
%s
*synth2N
:|20    |str_oled__8             |           1|      1203|
2default:defaulth p
x
� 
f
%s
*synth2N
:|21    |str_oled__9             |           1|       819|
2default:defaulth p
x
� 
f
%s
*synth2N
:|22    |str_oled__10            |           1|       831|
2default:defaulth p
x
� 
f
%s
*synth2N
:|23    |str_oled__11            |           1|      1054|
2default:defaulth p
x
� 
f
%s
*synth2N
:|24    |str_oled__12            |           1|       837|
2default:defaulth p
x
� 
f
%s
*synth2N
:|25    |str_oled__13            |           1|       806|
2default:defaulth p
x
� 
f
%s
*synth2N
:|26    |str_oled__14            |           1|      1309|
2default:defaulth p
x
� 
f
%s
*synth2N
:|27    |str_oled__15            |           1|      1066|
2default:defaulth p
x
� 
f
%s
*synth2N
:|28    |str_oled__16            |           1|      1005|
2default:defaulth p
x
� 
f
%s
*synth2N
:|29    |str_oled__17            |           1|       778|
2default:defaulth p
x
� 
f
%s
*synth2N
:|30    |str_oled__18            |           1|       735|
2default:defaulth p
x
� 
f
%s
*synth2N
:|31    |str_oled__19            |           1|       724|
2default:defaulth p
x
� 
f
%s
*synth2N
:|32    |str_oled__20            |           1|       727|
2default:defaulth p
x
� 
f
%s
*synth2N
:|33    |str_oled__21            |           1|       729|
2default:defaulth p
x
� 
f
%s
*synth2N
:|34    |str_oled__22            |           1|       835|
2default:defaulth p
x
� 
f
%s
*synth2N
:|35    |str_oled__23            |           1|       718|
2default:defaulth p
x
� 
f
%s
*synth2N
:|36    |str_oled__24            |           1|       741|
2default:defaulth p
x
� 
f
%s
*synth2N
:|37    |str_oled__25            |           1|       720|
2default:defaulth p
x
� 
f
%s
*synth2N
:|38    |str_oled__26            |           1|       736|
2default:defaulth p
x
� 
f
%s
*synth2N
:|39    |str_oled__27            |           1|       778|
2default:defaulth p
x
� 
f
%s
*synth2N
:|40    |str_oled__28            |           1|      1079|
2default:defaulth p
x
� 
f
%s
*synth2N
:|41    |str_oled__29            |           1|       741|
2default:defaulth p
x
� 
f
%s
*synth2N
:|42    |str_oled__30            |           1|       731|
2default:defaulth p
x
� 
f
%s
*synth2N
:|43    |str_oled__31            |           1|       911|
2default:defaulth p
x
� 
f
%s
*synth2N
:|44    |str_oled__32            |           1|       741|
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:03:10 ; elapsed = 00:03:34 . Memory (MB): peak = 907.113 ; gain = 650.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
startScreen/char3_reg[7]2default:default2
FDE2default:default2,
startScreen/char2_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
startScreen/char2_reg[7]2default:default2
FDE2default:default2,
startScreen/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
startScreen/char1_reg[7]2default:default2
FDE2default:default2,
startScreen/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char3_reg[0]2default:default2
FDE2default:default2,
ecoModeDisp/char3_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char3_reg[4]2default:default2
FDE2default:default2,
ecoModeDisp/char2_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char3_reg[5]2default:default2
FDE2default:default2,
ecoModeDisp/char2_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char3_reg[7]2default:default2
FDE2default:default2,
ecoModeDisp/char2_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char2_reg[0]2default:default2
FDE2default:default2,
ecoModeDisp/char2_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char2_reg[4]2default:default2
FDE2default:default2,
ecoModeDisp/char2_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char2_reg[5]2default:default2
FDE2default:default2,
ecoModeDisp/char2_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char2_reg[7]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char1_reg[4]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char1_reg[5]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char1_reg[7]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char0_reg[0]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char0_reg[1]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char0_reg[2]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char0_reg[3]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char0_reg[4]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char0_reg[6]2default:default2
FDE2default:default2,
ecoModeDisp/char0_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char1_reg[0]2default:default2
FDE2default:default2,
ecoModeDisp/char1_reg[6]2default:defaultZ8-3886h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:03:18 ; elapsed = 00:03:43 . Memory (MB): peak = 961.391 ; gain = 704.563
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
f
%s
*synth2N
:|      |RTL Partition           |Replication |Instances |
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
f
%s
*synth2N
:|1     |string_driver           |           1|       384|
2default:defaulth p
x
� 
f
%s
*synth2N
:|2     |str_oled                |           1|      1035|
2default:defaulth p
x
� 
f
%s
*synth2N
:|3     |start_tetris__GC0       |           1|       328|
2default:defaulth p
x
� 
f
%s
*synth2N
:|4     |tetris_main__GCB0       |           1|     10873|
2default:defaulth p
x
� 
f
%s
*synth2N
:|5     |tetris_main__GCB1       |           1|      1447|
2default:defaulth p
x
� 
f
%s
*synth2N
:|6     |tetris_main__GCB2       |           1|      2418|
2default:defaulth p
x
� 
f
%s
*synth2N
:|7     |tetris_main__GCB3       |           1|        60|
2default:defaulth p
x
� 
f
%s
*synth2N
:|8     |tetris_main__GCB4       |           1|      2788|
2default:defaulth p
x
� 
f
%s
*synth2N
:|9     |tetris_main__GCB5       |           1|      3278|
2default:defaulth p
x
� 
f
%s
*synth2N
:|10    |peak_average__GC0       |           1|       318|
2default:defaulth p
x
� 
f
%s
*synth2N
:|11    |coordinate_display__GC0 |           1|      3945|
2default:defaulth p
x
� 
f
%s
*synth2N
:|12    |Top_Student__GC0        |           1|      4183|
2default:defaulth p
x
� 
f
%s
*synth2N
:|13    |str_oled__1             |           1|      1348|
2default:defaulth p
x
� 
f
%s
*synth2N
:|14    |str_oled__2             |           1|      1049|
2default:defaulth p
x
� 
f
%s
*synth2N
:|15    |str_oled__3             |           1|      1055|
2default:defaulth p
x
� 
f
%s
*synth2N
:|16    |str_oled__4             |           1|      2131|
2default:defaulth p
x
� 
f
%s
*synth2N
:|17    |str_oled__5             |           1|      1302|
2default:defaulth p
x
� 
f
%s
*synth2N
:|18    |str_oled__6             |           1|      1283|
2default:defaulth p
x
� 
f
%s
*synth2N
:|19    |str_oled__7             |           1|      1076|
2default:defaulth p
x
� 
f
%s
*synth2N
:|20    |str_oled__8             |           1|      1203|
2default:defaulth p
x
� 
f
%s
*synth2N
:|21    |str_oled__9             |           1|       819|
2default:defaulth p
x
� 
f
%s
*synth2N
:|22    |str_oled__10            |           1|       831|
2default:defaulth p
x
� 
f
%s
*synth2N
:|23    |str_oled__11            |           1|      1054|
2default:defaulth p
x
� 
f
%s
*synth2N
:|24    |str_oled__12            |           1|       837|
2default:defaulth p
x
� 
f
%s
*synth2N
:|25    |str_oled__13            |           1|       806|
2default:defaulth p
x
� 
f
%s
*synth2N
:|26    |str_oled__14            |           1|      1309|
2default:defaulth p
x
� 
f
%s
*synth2N
:|27    |str_oled__15            |           1|      1066|
2default:defaulth p
x
� 
f
%s
*synth2N
:|28    |str_oled__16            |           1|      1005|
2default:defaulth p
x
� 
f
%s
*synth2N
:|29    |str_oled__17            |           1|       778|
2default:defaulth p
x
� 
f
%s
*synth2N
:|30    |str_oled__18            |           1|       735|
2default:defaulth p
x
� 
f
%s
*synth2N
:|31    |str_oled__19            |           1|       724|
2default:defaulth p
x
� 
f
%s
*synth2N
:|32    |str_oled__20            |           1|       727|
2default:defaulth p
x
� 
f
%s
*synth2N
:|33    |str_oled__21            |           1|       729|
2default:defaulth p
x
� 
f
%s
*synth2N
:|34    |str_oled__22            |           1|       835|
2default:defaulth p
x
� 
f
%s
*synth2N
:|35    |str_oled__23            |           1|       718|
2default:defaulth p
x
� 
f
%s
*synth2N
:|36    |str_oled__24            |           1|       741|
2default:defaulth p
x
� 
f
%s
*synth2N
:|37    |str_oled__25            |           1|       720|
2default:defaulth p
x
� 
f
%s
*synth2N
:|38    |str_oled__26            |           1|       736|
2default:defaulth p
x
� 
f
%s
*synth2N
:|39    |str_oled__27            |           1|       778|
2default:defaulth p
x
� 
f
%s
*synth2N
:|40    |str_oled__28            |           1|      1079|
2default:defaulth p
x
� 
f
%s
*synth2N
:|41    |str_oled__29            |           1|       741|
2default:defaulth p
x
� 
f
%s
*synth2N
:|42    |str_oled__30            |           1|       731|
2default:defaulth p
x
� 
f
%s
*synth2N
:|43    |str_oled__31            |           1|       911|
2default:defaulth p
x
� 
f
%s
*synth2N
:|44    |str_oled__32            |           1|       741|
2default:defaulth p
x
� 
f
%s
*synth2N
:|45    |string_driver__1        |           1|       212|
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2*
ecoModeDisp/i_reg[3]_C2default:default2
FDCE2default:default2*
ecoModeDisp/i_reg[4]_C2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char2_reg[1]2default:default2
FDRE2default:default2,
ecoModeDisp/char2_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char2_reg[2]2default:default2
FDRE2default:default2,
ecoModeDisp/char2_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
ecoModeDisp/char1_reg[1]2default:default2
FDRE2default:default2,
ecoModeDisp/char1_reg[6]2default:defaultZ8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:03:25 ; elapsed = 00:03:59 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
f
%s
*synth2N
:|      |RTL Partition           |Replication |Instances |
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
f
%s
*synth2N
:|1     |string_driver           |           1|       110|
2default:defaulth p
x
� 
f
%s
*synth2N
:|2     |str_oled                |           1|       409|
2default:defaulth p
x
� 
f
%s
*synth2N
:|3     |start_tetris__GC0       |           1|       104|
2default:defaulth p
x
� 
f
%s
*synth2N
:|4     |tetris_main__GCB0       |           1|      5402|
2default:defaulth p
x
� 
f
%s
*synth2N
:|5     |tetris_main__GCB1       |           1|       158|
2default:defaulth p
x
� 
f
%s
*synth2N
:|6     |tetris_main__GCB2       |           1|      1249|
2default:defaulth p
x
� 
f
%s
*synth2N
:|7     |tetris_main__GCB3       |           1|        36|
2default:defaulth p
x
� 
f
%s
*synth2N
:|8     |tetris_main__GCB4       |           1|       313|
2default:defaulth p
x
� 
f
%s
*synth2N
:|9     |tetris_main__GCB5       |           1|      1235|
2default:defaulth p
x
� 
f
%s
*synth2N
:|10    |peak_average__GC0       |           1|       134|
2default:defaulth p
x
� 
f
%s
*synth2N
:|11    |coordinate_display__GC0 |           1|      1288|
2default:defaulth p
x
� 
f
%s
*synth2N
:|12    |Top_Student__GC0        |           1|      1612|
2default:defaulth p
x
� 
f
%s
*synth2N
:|13    |str_oled__1             |           1|       586|
2default:defaulth p
x
� 
f
%s
*synth2N
:|14    |str_oled__2             |           1|       464|
2default:defaulth p
x
� 
f
%s
*synth2N
:|15    |str_oled__3             |           1|       543|
2default:defaulth p
x
� 
f
%s
*synth2N
:|16    |str_oled__4             |           1|       657|
2default:defaulth p
x
� 
f
%s
*synth2N
:|17    |str_oled__5             |           1|       543|
2default:defaulth p
x
� 
f
%s
*synth2N
:|18    |str_oled__6             |           1|       546|
2default:defaulth p
x
� 
f
%s
*synth2N
:|19    |str_oled__7             |           1|       429|
2default:defaulth p
x
� 
f
%s
*synth2N
:|20    |str_oled__8             |           1|       662|
2default:defaulth p
x
� 
f
%s
*synth2N
:|21    |str_oled__9             |           1|       464|
2default:defaulth p
x
� 
f
%s
*synth2N
:|22    |str_oled__10            |           1|       458|
2default:defaulth p
x
� 
f
%s
*synth2N
:|23    |str_oled__11            |           1|       571|
2default:defaulth p
x
� 
f
%s
*synth2N
:|24    |str_oled__12            |           1|       464|
2default:defaulth p
x
� 
f
%s
*synth2N
:|25    |str_oled__13            |           1|       458|
2default:defaulth p
x
� 
f
%s
*synth2N
:|26    |str_oled__14            |           1|       701|
2default:defaulth p
x
� 
f
%s
*synth2N
:|27    |str_oled__15            |           1|       576|
2default:defaulth p
x
� 
f
%s
*synth2N
:|28    |str_oled__16            |           1|       503|
2default:defaulth p
x
� 
f
%s
*synth2N
:|29    |str_oled__17            |           1|       404|
2default:defaulth p
x
� 
f
%s
*synth2N
:|30    |str_oled__18            |           1|       334|
2default:defaulth p
x
� 
f
%s
*synth2N
:|31    |str_oled__19            |           1|       336|
2default:defaulth p
x
� 
f
%s
*synth2N
:|32    |str_oled__20            |           1|       337|
2default:defaulth p
x
� 
f
%s
*synth2N
:|33    |str_oled__21            |           1|       339|
2default:defaulth p
x
� 
f
%s
*synth2N
:|34    |str_oled__22            |           1|       409|
2default:defaulth p
x
� 
f
%s
*synth2N
:|35    |str_oled__23            |           1|       335|
2default:defaulth p
x
� 
f
%s
*synth2N
:|36    |str_oled__24            |           1|       338|
2default:defaulth p
x
� 
f
%s
*synth2N
:|37    |str_oled__25            |           1|       337|
2default:defaulth p
x
� 
f
%s
*synth2N
:|38    |str_oled__26            |           1|       335|
2default:defaulth p
x
� 
f
%s
*synth2N
:|39    |str_oled__27            |           1|       394|
2default:defaulth p
x
� 
f
%s
*synth2N
:|40    |str_oled__28            |           1|       611|
2default:defaulth p
x
� 
f
%s
*synth2N
:|41    |str_oled__29            |           1|       392|
2default:defaulth p
x
� 
f
%s
*synth2N
:|42    |str_oled__30            |           1|       336|
2default:defaulth p
x
� 
f
%s
*synth2N
:|43    |str_oled__31            |           1|       496|
2default:defaulth p
x
� 
f
%s
*synth2N
:|44    |str_oled__32            |           1|       340|
2default:defaulth p
x
� 
f
%s
*synth2N
:+------+------------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:03:31 ; elapsed = 00:04:06 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:03:31 ; elapsed = 00:04:06 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:34 ; elapsed = 00:04:09 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:03:35 ; elapsed = 00:04:10 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:03:37 ; elapsed = 00:04:11 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:03:37 ; elapsed = 00:04:12 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     7|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |  2699|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |  2477|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |  5385|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |  2129|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |  2046|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |  3287|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |  6287|
2default:defaulth px� 
D
%s*synth2,
|9     |MUXF7  |   321|
2default:defaulth px� 
D
%s*synth2,
|10    |MUXF8  |    62|
2default:defaulth px� 
D
%s*synth2,
|11    |FDCE   |   699|
2default:defaulth px� 
D
%s*synth2,
|12    |FDE_1  |    32|
2default:defaulth px� 
D
%s*synth2,
|13    |FDPE   |     1|
2default:defaulth px� 
D
%s*synth2,
|14    |FDRE   |  1489|
2default:defaulth px� 
D
%s*synth2,
|15    |FDSE   |    20|
2default:defaulth px� 
D
%s*synth2,
|16    |IBUF   |    13|
2default:defaulth px� 
D
%s*synth2,
|17    |OBUF   |    37|
2default:defaulth px� 
D
%s*synth2,
|18    |OBUFT  |     1|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
i
%s
*synth2Q
=+------+------------------------+-------------------+------+
2default:defaulth p
x
� 
i
%s
*synth2Q
=|      |Instance                |Module             |Cells |
2default:defaulth p
x
� 
i
%s
*synth2Q
=+------+------------------------+-------------------+------+
2default:defaulth p
x
� 
i
%s
*synth2Q
=|1     |top                     |                   | 26992|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|2     |  ledDriverStart        |ledDriv_6          |    76|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|3     |    clk600              |clk_21             |    54|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|4     |  clk1                  |clk                |    54|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|5     |  clk20                 |clk_0              |    55|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|6     |  clk20k                |clk_1              |    52|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|7     |  clk361                |clk_2              |    54|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|8     |  clk4                  |clk_3              |    56|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|9     |  clk625m               |clk_4              |    51|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|10    |  disp1                 |coordinate_display | 24977|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|11    |    border1             |draw_border        |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|12    |    coord               |xycalculator       |  7118|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|13    |    customHigh          |custom_high        |    98|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|14    |    customLow           |custom_low         |    98|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|15    |    customMed           |custom_med         |   142|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|16    |    custombackgrd       |custom_background  |    98|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|17    |    customborder        |custom_border      |   114|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|18    |    gameSound           |str_oled           |   279|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|19    |      text10            |text_disp_247      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|20    |      text11            |text_disp_248      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|21    |      text12            |text_disp_249      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|22    |      text14            |text_disp_250      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|23    |      text8             |text_disp_251      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|24    |      text9             |text_disp_252      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|25    |    gameText            |str_oled_26        |   279|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|26    |      text10            |text_disp_242      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|27    |      text11            |text_disp_243      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|28    |      text12            |text_disp_244      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|29    |      text14            |text_disp_245      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|30    |      text9             |text_disp_246      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|31    |    gameWatch           |str_oled_27        |   298|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|32    |      text10            |text_disp_232      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|33    |      text11            |text_disp_233      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|34    |      text12            |text_disp_234      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|35    |      text14            |text_disp_235      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|36    |      text4             |text_disp_236      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|37    |      text5             |text_disp_237      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|38    |      text6             |text_disp_238      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|39    |      text7             |text_disp_239      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|40    |      text8             |text_disp_240      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|41    |      text9             |text_disp_241      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|42    |    menuGame            |logo_game          |     8|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|43    |    menuSound           |logo_sound         |     8|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|44    |    menuWatch           |logo_watch         |     8|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|45    |    orange              |logo_orange        |    57|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|46    |    peakAvg             |peak_average       |  1388|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|47    |      average_info      |str_oled_200       |   277|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|48    |        text10          |text_disp_225      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|49    |        text4           |text_disp_226      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|50    |        text5           |text_disp_227      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|51    |        text6           |text_disp_228      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|52    |        text7           |text_disp_229      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|53    |        text8           |text_disp_230      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|54    |        text9           |text_disp_231      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|55    |      avgNumber         |str_oled_201       |   211|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|56    |        text6           |text_disp_223      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|57    |        text7           |text_disp_224      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|58    |      avgTable          |avgPeak_table_202  |    21|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|59    |      peakNumber        |str_oled_203       |   215|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|60    |        text6           |text_disp_221      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|61    |        text7           |text_disp_222      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|62    |      peakTable         |avgPeak_table_204  |    21|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|63    |      peak_info         |str_oled_205       |   236|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|64    |        text5           |text_disp_217      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|65    |        text6           |text_disp_218      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|66    |        text7           |text_disp_219      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|67    |        text8           |text_disp_220      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|68    |      volume_info       |str_oled_206       |   315|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|69    |        text10          |text_disp_207      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|70    |        text11          |text_disp_208      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|71    |        text12          |text_disp_209      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|72    |        text2           |text_disp_210      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|73    |        text3           |text_disp_211      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|74    |        text4           |text_disp_212      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|75    |        text5           |text_disp_213      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|76    |        text6           |text_disp_214      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|77    |        text7           |text_disp_215      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|78    |        text9           |text_disp_216      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|79    |    stopWatchText       |str_oled_28        |   293|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|80    |      text10            |text_disp_191      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|81    |      text11            |text_disp_192      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|82    |      text3             |text_disp_193      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|83    |      text4             |text_disp_194      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|84    |      text5             |text_disp_195      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|85    |      text6             |text_disp_196      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|86    |      text7             |text_disp_197      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|87    |      text8             |text_disp_198      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|88    |      text9             |text_disp_199      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|89    |    tetrisMenu          |start_tetris       |  3580|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|90    |      credits0          |str_oled_81        |   319|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|91    |        text0           |text_disp_180      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|92    |        text1           |text_disp_181      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|93    |        text10          |text_disp_182      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|94    |        text2           |text_disp_183      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|95    |        text3           |text_disp_184      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|96    |        text4           |text_disp_185      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|97    |        text5           |text_disp_186      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|98    |        text6           |text_disp_187      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|99    |        text7           |text_disp_188      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|100   |        text8           |text_disp_189      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|101   |        text9           |text_disp_190      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|102   |      credits1          |str_oled_82        |   264|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|103   |        text10          |text_disp_174      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|104   |        text11          |text_disp_175      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|105   |        text12          |text_disp_176      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|106   |        text13          |text_disp_177      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|107   |        text14          |text_disp_178      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|108   |        text9           |text_disp_179      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|109   |      credits2          |str_oled_83        |   260|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|110   |        text10          |text_disp_168      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|111   |        text11          |text_disp_169      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|112   |        text12          |text_disp_170      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|113   |        text13          |text_disp_171      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|114   |        text14          |text_disp_172      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|115   |        text9           |text_disp_173      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|116   |      credits3          |str_oled_84        |   307|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|117   |        text0           |text_disp_159      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|118   |        text1           |text_disp_160      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|119   |        text2           |text_disp_161      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|120   |        text3           |text_disp_162      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|121   |        text4           |text_disp_163      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|122   |        text5           |text_disp_164      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|123   |        text6           |text_disp_165      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|124   |        text7           |text_disp_166      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|125   |        text8           |text_disp_167      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|126   |      credits4          |str_oled_85        |   260|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|127   |        text10          |text_disp_153      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|128   |        text11          |text_disp_154      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|129   |        text12          |text_disp_155      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|130   |        text13          |text_disp_156      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|131   |        text14          |text_disp_157      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|132   |        text9           |text_disp_158      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|133   |      credits5          |str_oled_86        |   264|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|134   |        text10          |text_disp_147      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|135   |        text11          |text_disp_148      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|136   |        text12          |text_disp_149      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|137   |        text13          |text_disp_150      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|138   |        text14          |text_disp_151      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|139   |        text9           |text_disp_152      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|140   |      credits6          |str_oled_87        |   346|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|141   |        text0           |text_disp_134      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|142   |        text1           |text_disp_135      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|143   |        text10          |text_disp_136      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|144   |        text11          |text_disp_137      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|145   |        text12          |text_disp_138      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|146   |        text13          |text_disp_139      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|147   |        text2           |text_disp_140      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|148   |        text3           |text_disp_141      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|149   |        text4           |text_disp_142      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|150   |        text5           |text_disp_143      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|151   |        text6           |text_disp_144      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|152   |        text8           |text_disp_145      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|153   |        text9           |text_disp_146      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|154   |      credits7          |str_oled_88        |   306|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|155   |        text10          |text_disp_124      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|156   |        text12          |text_disp_125      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|157   |        text13          |text_disp_126      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|158   |        text14          |text_disp_127      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|159   |        text3           |text_disp_128      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|160   |        text4           |text_disp_129      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|161   |        text6           |text_disp_130      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|162   |        text7           |text_disp_131      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|163   |        text8           |text_disp_132      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|164   |        text9           |text_disp_133      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|165   |      nolabel_line38    |logo_tetris        |    41|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|166   |      option1           |str_oled_89        |   322|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|167   |        text10          |text_disp_114      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|168   |        text2           |text_disp_115      |     6|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|169   |          font_disp     |font_123           |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|170   |        text3           |text_disp_116      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|171   |        text4           |text_disp_117      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|172   |        text5           |text_disp_118      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|173   |        text6           |text_disp_119      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|174   |        text7           |text_disp_120      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|175   |        text8           |text_disp_121      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|176   |          font_disp     |font               |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|177   |        text9           |text_disp_122      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|178   |      option2           |str_oled_90        |   279|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|179   |        text10          |text_disp_106      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|180   |        text2           |text_disp_107      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|181   |        text3           |text_disp_108      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|182   |        text4           |text_disp_109      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|183   |        text5           |text_disp_110      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|184   |        text7           |text_disp_111      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|185   |        text8           |text_disp_112      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|186   |        text9           |text_disp_113      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|187   |      option3           |str_oled_91        |   293|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|188   |        text2           |text_disp_98       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|189   |        text3           |text_disp_99       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|190   |        text4           |text_disp_100      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|191   |        text5           |text_disp_101      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|192   |        text6           |text_disp_102      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|193   |        text7           |text_disp_103      |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|194   |        text8           |text_disp_104      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|195   |        text9           |text_disp_105      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|196   |      option4           |str_oled_92        |   246|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|197   |        text2           |text_disp_93       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|198   |        text3           |text_disp_94       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|199   |        text4           |text_disp_95       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|200   |        text5           |text_disp_96       |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|201   |        text6           |text_disp_97       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|202   |    tetrisgame          |tetris_main        | 10799|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|203   |      game_over         |str_oled_29        |   270|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|204   |        text10          |text_disp_73       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|205   |        text11          |text_disp_74       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|206   |        text3           |text_disp_75       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|207   |        text4           |text_disp_76       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|208   |        text5           |text_disp_77       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|209   |        text6           |text_disp_78       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|210   |        text8           |text_disp_79       |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|211   |        text9           |text_disp_80       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|212   |      hund_place        |avgPeak_table      |    79|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|213   |      next1             |next_line          |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|214   |      next2             |next_leftZ         |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|215   |      next3             |next_rightZ        |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|216   |      next4             |next_square        |     5|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|217   |      next5             |next_T             |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|218   |      next6             |next_L             |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|219   |      next7             |next_RL            |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|220   |      nextBlock         |str_oled_30        |   244|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|221   |        text10          |text_disp_69       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|222   |        text11          |text_disp_70       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|223   |        text12          |text_disp_71       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|224   |        text9           |text_disp_72       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|225   |      ones_place        |avgPeak_table_31   |    40|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|226   |      score_hundred     |str_oled_32        |   211|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|227   |        text10          |text_disp_67       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|228   |        text9           |text_disp_68       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|229   |      score_ingame      |str_oled_33        |   245|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|230   |        text10          |text_disp_62       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|231   |        text11          |text_disp_63       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|232   |        text12          |text_disp_64       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|233   |        text13          |text_disp_65       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|234   |        text14          |text_disp_66       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|235   |      score_ingame_hun  |str_oled_34        |   212|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|236   |        text11          |text_disp_60       |     5|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|237   |        text12          |text_disp_61       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|238   |      score_ingame_one  |str_oled_35        |   213|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|239   |        text13          |text_disp_58       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|240   |        text14          |text_disp_59       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|241   |      score_ingame_ten  |str_oled_36        |   211|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|242   |        text12          |text_disp_56       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|243   |        text13          |text_disp_57       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|244   |      score_ingame_thou |str_oled_37        |   209|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|245   |        text10          |text_disp_54       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|246   |        text11          |text_disp_55       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|247   |      score_ones        |str_oled_38        |   214|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|248   |        text11          |text_disp_52       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|249   |        text12          |text_disp_53       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|250   |      score_screen      |str_oled_39        |   295|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|251   |        text3           |text_disp_47       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|252   |        text4           |text_disp_48       |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|253   |        text5           |text_disp_49       |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|254   |        text6           |text_disp_50       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|255   |        text7           |text_disp_51       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|256   |      score_tens        |str_oled_40        |   205|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|257   |        text10          |text_disp_45       |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|258   |        text11          |text_disp_46       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|259   |      score_thousand    |str_oled_41        |   205|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|260   |        text8           |text_disp          |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|261   |        text9           |text_disp_44       |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|262   |      tens_place        |avgPeak_table_42   |    67|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|263   |      thous_place       |avgPeak_table_43   |    61|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|264   |    volume1             |volume_bar         |    51|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|265   |    white               |logo_white         |   138|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|266   |  down                  |single_pulse       |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|267   |    dff1                |single_dff_24      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|268   |    dff2                |single_dff_25      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|269   |  ledDriver             |ledDriv            |    97|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|270   |    clk600              |clk_23             |    54|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|271   |  ledDriverEco          |ledDriv_5          |    68|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|272   |    clk600              |clk_22             |    54|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|273   |  left                  |single_pulse_7     |     3|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|274   |    dff1                |single_dff_19      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|275   |    dff2                |single_dff_20      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|276   |  mic                   |Audio_Capture      |    96|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|277   |  mid                   |single_pulse_8     |     6|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|278   |    dff1                |single_dff_17      |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|279   |    dff2                |single_dff_18      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|280   |  oled                  |Oled_Display       |   458|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|281   |  right                 |single_pulse_9     |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|282   |    dff1                |single_dff_15      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|283   |    dff2                |single_dff_16      |     2|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|284   |  startScreen           |string_driver      |   125|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|285   |  str_4                 |char_disp          |     9|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|286   |  str_5                 |char_disp_10       |    14|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|287   |  str_6                 |char_disp_11       |     8|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|288   |  str_7                 |char_disp_12       |    15|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|289   |  up                    |single_pulse_13    |     5|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|290   |    dff1                |single_dff         |     4|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|291   |    dff2                |single_dff_14      |     1|
2default:defaulth p
x
� 
i
%s
*synth2Q
=|292   |  watchmod              |stopwatch          |   220|
2default:defaulth p
x
� 
i
%s
*synth2Q
=+------+------------------------+-------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:03:37 ; elapsed = 00:04:12 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 370 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:03:20 ; elapsed = 00:04:00 . Memory (MB): peak = 968.250 ; gain = 290.727
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:03:37 ; elapsed = 00:04:12 . Memory (MB): peak = 968.250 ; gain = 711.422
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
31272default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
!Unisim Transformation Summary:
%s111*project2q
]  A total of 32 instances were transformed.
  FDE_1 => FDRE (inverted pins: C): 32 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4232default:default2
2632default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:03:452default:default2
00:04:212default:default2
968.2502default:default2
724.2422default:defaultZ17-268h px� 
K
"No constraint will be written out.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2`
LC:/School/Y1S2/EE2026/SoundDisplay/SoundDisplay.runs/synth_1/Top_Student.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:072default:default2
00:00:062default:default2
968.2502default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
lExecuting : report_utilization -file Top_Student_utilization_synth.rpt -pb Top_Student_utilization_synth.pb
2default:defaulth px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.236 . Memory (MB): peak = 968.250 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Apr  5 01:39:38 20202default:defaultZ17-206h px� 


End Record