
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: ee409b97
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:20 . Memory (MB): peak = 3551.242 ; gain = 29.262 ; free physical = 7671 ; free virtual = 96852default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.1 Fix Topology Constraints | Checksum: ee409b97
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:20 . Memory (MB): peak = 3575.238 ; gain = 53.258 ; free physical = 7635 ; free virtual = 96502default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.2 Pre Route Cleanup | Checksum: ee409b97
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:20 . Memory (MB): peak = 3575.238 ; gain = 53.258 ; free physical = 7635 ; free virtual = 96512default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.3 Update Timing | Checksum: 1c3bf5a5d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:25 ; elapsed = 00:00:20 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7621 ; free virtual = 96372default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=3.217  | TNS=0.000  | WHS=-0.187 | THS=-31.702|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 16b10567b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:21 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96272default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 16b10567b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:21 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96272default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 1de05606d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:21 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7614 ; free virtual = 96302default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=3.338  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 140250e3a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=3.338  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1ef144236
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1ef144236
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1ef144236
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1ef144236
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1ef144236
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 158b55c9c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=3.352  | TNS=0.000  | WHS=0.047  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1286484ca
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1286484ca
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 160c438e9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7612 ; free virtual = 96282default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 160c438e9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:22 . Memory (MB): peak = 3606.121 ; gain = 84.141 ; free physical = 7611 ; free virtual = 96282default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1d1807812
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:29 ; elapsed = 00:00:22 . Memory (MB): peak = 3622.129 ; gain = 100.148 ; free physical = 7611 ; free virtual = 96272default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=3.352  | TNS=0.000  | WHS=0.047  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 1d1807812
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:29 ; elapsed = 00:00:22 . Memory (MB): peak = 3622.129 ; gain = 100.148 ; free physical = 7611 ; free virtual = 96272default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:29 ; elapsed = 00:00:22 . Memory (MB): peak = 3622.129 ; gain = 100.148 ; free physical = 7648 ; free virtual = 96642default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1322default:default2
32default:default2
32default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:322default:default2
00:00:232default:default2
3622.1292default:default2
100.1482default:default2
76482default:default2
96642default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.572default:default2
00:00:00.192default:default2
3622.1292default:default2
0.0002default:default2
76352default:default2
96562default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
h/home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Zybo_Imp.runs/impl_1/Imp_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
vExecuting : report_drc -file Imp_wrapper_drc_routed.rpt -pb Imp_wrapper_drc_routed.pb -rpx Imp_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2}
ireport_drc -file Imp_wrapper_drc_routed.rpt -pb Imp_wrapper_drc_routed.pb -rpx Imp_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
l/home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Zybo_Imp.runs/impl_1/Imp_wrapper_drc_routed.rptl/home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Zybo_Imp.runs/impl_1/Imp_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file Imp_wrapper_methodology_drc_routed.rpt -pb Imp_wrapper_methodology_drc_routed.pb -rpx Imp_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file Imp_wrapper_methodology_drc_routed.rpt -pb Imp_wrapper_methodology_drc_routed.pb -rpx Imp_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
x/home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Zybo_Imp.runs/impl_1/Imp_wrapper_methodology_drc_routed.rptx/home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Zybo_Imp.runs/impl_1/Imp_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file Imp_wrapper_power_routed.rpt -pb Imp_wrapper_power_summary_routed.pb -rpx Imp_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
yreport_power -file Imp_wrapper_power_routed.rpt -pb Imp_wrapper_power_summary_routed.pb -rpx Imp_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1442default:default2
32default:default2
32default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2w
cExecuting : report_route_status -file Imp_wrapper_route_status.rpt -pb Imp_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file Imp_wrapper_timing_summary_routed.rpt -pb Imp_wrapper_timing_summary_routed.pb -rpx Imp_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
%s4*runtcl2h
TExecuting : report_incremental_reuse -file Imp_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2h
TExecuting : report_clock_utilization -file Imp_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file Imp_wrapper_bus_skew_routed.rpt -pb Imp_wrapper_bus_skew_routed.pb -rpx Imp_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record