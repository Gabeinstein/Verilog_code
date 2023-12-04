set_property IOSTANDARD LVCMOS33 [get_ports {cols[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cols[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cols[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cols[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rows[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rows[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rows[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rows[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN W16 [get_ports {cols[2]}]

set_property PACKAGE_PIN U17 [get_ports {rows[2]}]
set_property PACKAGE_PIN V13 [get_ports {rows[3]}]
set_property PACKAGE_PIN L16 [get_ports clk]
set_property PACKAGE_PIN Y16 [get_ports reset]

set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {signal7[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {signal7[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {signal7[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {signal7[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {signal7[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {signal7[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {signal7[0]}]
set_property PACKAGE_PIN J15 [get_ports {cols[1]}]
set_property PACKAGE_PIN H15 [get_ports {cols[0]}]
set_property PACKAGE_PIN T17 [get_ports {rows[1]}]
set_property PACKAGE_PIN Y17 [get_ports {rows[0]}]
set_property PACKAGE_PIN T20 [get_ports {B[0]}]
set_property PACKAGE_PIN U20 [get_ports {B[1]}]
set_property PACKAGE_PIN V20 [get_ports {B[2]}]
set_property PACKAGE_PIN T15 [get_ports {signal7[1]}]
set_property PACKAGE_PIN P14 [get_ports {signal7[2]}]
set_property PACKAGE_PIN R14 [get_ports {signal7[3]}]
set_property PACKAGE_PIN U14 [get_ports {signal7[4]}]
set_property PACKAGE_PIN U15 [get_ports {signal7[5]}]
set_property PACKAGE_PIN V17 [get_ports {signal7[6]}]






set_property PACKAGE_PIN T14 [get_ports {signal7[0]}]
set_property PACKAGE_PIN V12 [get_ports {cols[3]}]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {B_OBUF[0]} {B_OBUF[1]} {B_OBUF[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 2 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {D_in[0]} {D_in[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {D_out[0]} {D_out[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {cols_OBUF[0]} {cols_OBUF[1]} {cols_OBUF[2]} {cols_OBUF[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 5 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {key[0]} {key[1]} {key[2]} {key[3]} {key[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 5 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {rd[0]} {rd[1]} {rd[2]} {rd[3]} {rd[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 4 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {rows_IBUF[0]} {rows_IBUF[1]} {rows_IBUF[2]} {rows_IBUF[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 7 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {signal7_OBUF[0]} {signal7_OBUF[1]} {signal7_OBUF[2]} {signal7_OBUF[3]} {signal7_OBUF[4]} {signal7_OBUF[5]} {signal7_OBUF[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list enable]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list str]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list valid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
