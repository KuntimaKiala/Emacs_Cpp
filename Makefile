COMPILER= "nvcc"
PROJECT = cuda
CODE  = cuda.cu

$(PROJECT):$(CODE)
	$(COMPILER) $(CODE) -o $(PROJECT) 
