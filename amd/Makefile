.ONESHELL:
.PHONY: export clean mrproper monitor

# we use bash's shell expansion in clean
SHELL:=bash
PROJECT:=zcu102-blinky

default: $(PROJECT)/$(PROJECT).xpr

# Workflow:
# 1. Manually setup an initial project (once)
#
# 2. Modify project and sources
# 3. Export project to recreate.tcl using "make export"
# 4. Commit sources and recreate.tcl to GIT.
# 5. Goto 2.

# Revisit project
#
# a. Recreate project using "make"
# b. Open project in Vivado
# c. Goto 2

# Build project on CI/CD/CT
#
# i. Recreate project using "make"
# ii.Build project using make bitstream (TODO)


# recreate the Vivado project using recreate.tcl
$(PROJECT)/$(PROJECT).xpr:
	# the origin is the top-level directory
	vivado -mode batch -source recreate.tcl -tclargs --origin_dir ..

# export the Vivado project to recreate.tcl
export:
	# tcl/export.tcl will export to recreate.tcl
	vivado -mode batch -source tcl/export.tcl $(PROJECT)/$(PROJECT).xpr

implement: $(PROJECT)/$(PROJECT).xpr
	# build project
	vivado -mode batch -source tcl/implement.tcl $(PROJECT)/$(PROJECT).xpr

bitstream: #$(PROJECT)/$(PROJECT).runs/impl_1/$(PROJECT).bit
	vivado -mode batch -source tcl/bitstream.tcl $(PROJECT)/$(PROJECT).xpr

handoff: $(PROJECT)/$(PROJECT).xpr
	vivado -mode batch -source tcl/xsa.tcl $(PROJECT)/$(PROJECT).xpr

clean:
	rm -rfv vivado{_*,}{.backup,}.{jou,log,str}

mrproper: clean
	rm -rf $(PROJECT)/$(PROJECT).* $(PROJECT)/vivado{_*,}{.backup,}.{jou,log,str} $(PROJECT)/.Xil

monitor:
	tail -F zcu102-blinky/zcu102-blinky.runs/{synth,impl}_1/runme.log
