# registers visibles to users program
pc = 0 # program counter that points to the next instruction to be feched for execution
AC = 0 # accumulate the arithmetic results
# internal registers
instr = 0 # holding the current instruction during the execution 
instr_type = 0 # type of the current instruction (opcode)
data_loc = 0 # address of the instruction's operand 
data = 0 # the operand

def interp(memory, starting_addr):
	pc = starting_addr
	while run_bit:
		instr = memory[pc]
		pc = pc + 1
		instr_type = get_instr_type(instr)
		data_loc = find_data(instr, instr_type)
		if (data_loc >= 0):
			data = memory[data_loc]
		execute(instr_type, data)