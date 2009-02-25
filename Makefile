NAME=shell_vim
APP=$(NAME).app

all:
	osacompile -o $(APP) $(NAME).scpt

clean:
	rm -r $(APP)

