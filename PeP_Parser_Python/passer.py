opcode = {}
func = {}
DATA = 18 
inst = []


def getCode(function): 
	if (func.has_key(function.lower())):
		return func.get(function.lower())

def getFunc(code):
	for key, value in func.items():
		if int(value) == int(code, base=2):
			return key

def passer():
	word = ""
	with open('example.txt') as f:
	    for line in f:
	    	l = list(line.rstrip().split(" "))  
	    	res = l[1].split(",")
	    	r1 = res[0]
	    	r2 = res[1] 
	    	word += "010000"
	    	word += '{0:04b}'.format(int(getCode(l[0])))
	    	word += '{0:03b}'.format(int(r1[1:2])) 
	    	word += '{0:03b}'.format(int(r2[1:2])) 
	    	inst.append(word)
	    	word = ""
	    return word

def readBinaryFile():
	with open('binary.txt') as f:
	    for line in f:
	    	print getFunc(line[6:10]) + " R" + str(int(line[10:13], base=2)) + ",R" + str(int(line[13:16], base=2))

def read_opcode():
	with open('opcode') as f:
	    for line in f:
	    	l = list(line.rstrip().split(" "))
	    	opcode.update({ l[0] : l[1]}) 

def read_func():
	with open('func') as f:
	    for line in f:
	    	l = list(line.rstrip().split(" "))
	    	func.update({ l[0] : l[1]}) 

def main():
	read_opcode() 
	read_func() 
	passer()
	for i in inst:
		print i
	readBinaryFile()

if __name__ == "__main__":
    main()