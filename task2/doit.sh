rm -rf obj_dir
rm -f top.vcd

verilator -Wall --cc --trace f1_fsm.sv --exe f1_fsm_tb.cpp
make -j -C obj_dir/ -f Vf1_fsm.mk Vf1_fsm

obj_dir/Vf1_fsm

#cd
#cd ~/Documents/iac/lab0-devtools/tools
#source ./attach_usb.sh