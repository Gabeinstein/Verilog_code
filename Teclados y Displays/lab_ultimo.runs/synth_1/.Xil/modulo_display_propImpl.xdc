set_property SRC_FILE_INFO {cfile:D:/Coding/Verilog/lab_ultimo/lab_ultimo.srcs/constrs_1/new/hola.xdc rfile:../../../lab_ultimo.srcs/constrs_1/new/hola.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W16 [get_ports {cols[2]}]
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U17 [get_ports {rows[2]}]
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V13 [get_ports {rows[3]}]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L16 [get_ports clk]
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y16 [get_ports reset]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J15 [get_ports {cols[1]}]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H15 [get_ports {cols[0]}]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T17 [get_ports {rows[1]}]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y17 [get_ports {rows[0]}]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T20 [get_ports {B[0]}]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U20 [get_ports {B[1]}]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V20 [get_ports {B[2]}]
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T15 [get_ports {signal7[1]}]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P14 [get_ports {signal7[2]}]
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R14 [get_ports {signal7[3]}]
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U14 [get_ports {signal7[4]}]
set_property src_info {type:XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U15 [get_ports {signal7[5]}]
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V17 [get_ports {signal7[6]}]
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T14 [get_ports {signal7[0]}]
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V12 [get_ports {cols[3]}]
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
create_debug_core u_ila_0 ila
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property src_info {type:XDC file:1 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe0 [get_nets [list {B_OBUF[0]} {B_OBUF[1]} {B_OBUF[2]}]]
set_property src_info {type:XDC file:1 line:65 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 2 [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list {D_in[0]} {D_in[1]}]]
set_property src_info {type:XDC file:1 line:69 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe2 [get_nets [list {D_out[0]} {D_out[1]}]]
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe3 [get_nets [list {cols_OBUF[0]} {cols_OBUF[1]} {cols_OBUF[2]} {cols_OBUF[3]}]]
set_property src_info {type:XDC file:1 line:77 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 5 [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:80 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe4 [get_nets [list {key[0]} {key[1]} {key[2]} {key[3]} {key[4]}]]
set_property src_info {type:XDC file:1 line:81 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 5 [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:84 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe5 [get_nets [list {rd[0]} {rd[1]} {rd[2]} {rd[3]} {rd[4]}]]
set_property src_info {type:XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 4 [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:1 line:88 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe6 [get_nets [list {rows_IBUF[0]} {rows_IBUF[1]} {rows_IBUF[2]} {rows_IBUF[3]}]]
set_property src_info {type:XDC file:1 line:89 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:1 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 7 [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:1 line:92 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe7 [get_nets [list {signal7_OBUF[0]} {signal7_OBUF[1]} {signal7_OBUF[2]} {signal7_OBUF[3]} {signal7_OBUF[4]} {signal7_OBUF[5]} {signal7_OBUF[6]}]]
set_property src_info {type:XDC file:1 line:93 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:1 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe8 [get_nets [list enable]]
set_property src_info {type:XDC file:1 line:97 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property src_info {type:XDC file:1 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
set_property src_info {type:XDC file:1 line:100 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe9 [get_nets [list str]]
set_property src_info {type:XDC file:1 line:101 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe10 [get_nets [list valid]]
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
