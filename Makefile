VERILOG = iverilog
TARGET = HW0318.vcd
TEMP = HW0318.vpp

$(TARGET) : HW0318.vvp
	vvp HW0318.vvp

HW0318.vvp: HW0318_tb.v HW0318.v
	$(VERILOG) -o HW0318.vvp HW0318_tb.v HW0318.v

clean:
	-del $(TARGET)
	-del $(TEMP)
