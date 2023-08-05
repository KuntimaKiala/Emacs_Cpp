COMPILER= "g++"
PROJECT = runner
CODE  = main.cpp

$(PROJECT):$(CODE)
	$(COMPILER) -Wall $(CODE) -o $(PROJECT) 
