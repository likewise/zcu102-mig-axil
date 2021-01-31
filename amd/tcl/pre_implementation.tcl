# WARNING: [DRC MIG-69] Invalid Constraint: [ps_inst/design_1_i/ddr4] The Memory IP reset port
# has an incompatible IO Standard LVCMOS18 selected. If a level shifter or similar is used to
# ensure compatibility, this DRC can be demoted. For more details please refer AR66800.
#
# ZCU102 uses a voltage level shifter designated U112
#
# https://www.xilinx.com/support/answers/66800.html

set_param memory.dontrundrc true
set_property is_enabled false [get_drc_checks MIG-69]
