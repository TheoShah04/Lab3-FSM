rm -rf obj_dir
rm -f top.vcd

verilator -Wall --cc --trace top.sv f1_fsm.sv clktick.sv --exe top_tb.cpp
make -j -C obj_dir/ -f Vtop.mk Vtop

obj_dir/Vtop

#cd
#cd ~/Documents/iac/lab0-devtools/tools
#source ./attach_usb.sh