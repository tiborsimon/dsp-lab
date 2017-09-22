NAME := DSP Sandbox

help:
	@echo ""
	@echo "$(BOLD_NAME) - make interface"
	@echo "---------------------------------------------------------------------------"
	@echo "Targets:"
	@echo "  make [help] - Prints out this help message."
	@echo "  make init   - Initializes the sandbox environment."
	@echo ""

BOLD := $(shell tput bold)
RED := $(shell tput setaf 1)
GREEN := $(shell tput setaf 2)
YELLOW := $(shell tput setaf 3)
RESET:= $(shell tput sgr0)

BOLD_NAME := $(BOLD)$(NAME)$(RESET)

TASK    := [ $(BOLD)$(GREEN)>>$(RESET) ]
OK      := [ $(BOLD)$(GREEN)OK$(RESET) ]
WARNING := [ $(BOLD)$(YELLOW)!!$(RESET) ]
ERROR   := [$(BOLD)$(RED)FAIL$(RESET)]

init:
	@echo "$(TASK) Initializing the environment.."
	@virtualenv env
	@./env/bin/pip install -r requirements.txt
	@echo "$(OK) Environment Initializingtialized. You should activate the virtual environment."

