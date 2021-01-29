# UG994
#open_project zcu102-blinky/zcu102-blinky.xpr

# block diagram (not tested with multiple)
generate_target all [get_files *.bd]
export_ip_user_files -of_objects [get_files *.bd] -no_script -sync -force
create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files *.bd]]

synth_design

