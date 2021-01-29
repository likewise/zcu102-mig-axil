# -paths_relative_to <path> must point to the top-level under which all sources are
# this script is intended to be run from the Makefile one-level above
write_project_tcl -paths_relative_to ".." -all_properties -force recreate.tcl

#write_ip_tcl -force -multiple_files -quiet [get_ips] /tmp/project.ips
