project new //vboxsvr/workarea/SysEmp/ProyectoFinal/ProyectoFinalSDE/Proyecto/pcores/digilentspartan3e1600spi_v2_00_a/devl/projnav/digilentspartan3e1600spi.xise;
project set family spartan3e;
project set device xc3s1600e;
project set package fg320;
project set speed -4;
project set top_level_module_type HDL;
project set synthesis_tool "XST (VHDL/Verilog)";
lib_vhdl new digilentspartan3e1600spi_v2_00_a;
xfile add Z:/SysEmp/ProyectoFinal/ProyectoFinalSDE/Proyecto/pcores/digilentspartan3e1600spi_v2_00_a/hdl/vhdl/digilentspartan3e1600spi.vhd -lib_vhdl digilentspartan3e1600spi_v2_00_a;
xfile add Z:/SysEmp/ProyectoFinal/ProyectoFinalSDE/Proyecto/pcores/digilentspartan3e1600spi_v2_00_a/hdl/vhdl/user_logic.vhd -lib_vhdl digilentspartan3e1600spi_v2_00_a;
lib_vhdl new proc_common_v3_00_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/proc_common_pkg.vhd -lib_vhdl proc_common_v3_00_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_pkg.vhd -lib_vhdl proc_common_v3_00_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_muxcy.vhd -lib_vhdl proc_common_v3_00_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_gate128.vhd -lib_vhdl proc_common_v3_00_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/family_support.vhd -lib_vhdl proc_common_v3_00_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pselect_f.vhd -lib_vhdl proc_common_v3_00_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/counter_f.vhd -lib_vhdl proc_common_v3_00_a;
lib_vhdl new plbv46_slave_single_v1_01_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/plbv46_slave_single_v1_01_a/hdl/vhdl/plb_address_decoder.vhd -lib_vhdl plbv46_slave_single_v1_01_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/plbv46_slave_single_v1_01_a/hdl/vhdl/plb_slave_attachment.vhd -lib_vhdl plbv46_slave_single_v1_01_a;
xfile add C:/Xilinx/12.4/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/plbv46_slave_single_v1_01_a/hdl/vhdl/plbv46_slave_single.vhd -lib_vhdl plbv46_slave_single_v1_01_a;
project close;
