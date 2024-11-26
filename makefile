# Colors
YELLOW := \033[1;33m
GREEN := \033[1;32m
RED := \033[1;31m
CYAN := \033[1;36m
ORANGE := \033[0;33m
PURPLE := \033[1;35m
WHITE := \033[1;37m
NC := \033[0m

# Data-Lunch variables
APP=${PANEL_APP}
IMAGENAME=${DOCKER_USERNAME}/${APP}
RUNNAME=${DOCKER_USERNAME}_${APP}
VERSION=${IMAGE_VERSION}
IMAGEFULLNAME=${IMAGENAME}:${VERSION}
PROJECTNAME=${DOCKER_USERNAME}_${APP}

# Database variables (used if not sqlite)
DBNAME:=postgres
DBSERVICE:=db
DBCONTAINERNAME:=${DBNAME}_${DBSERVICE}
DBIMAGEFULLNAME:=${DBNAME}:${VERSION}
DBPORT:=5432

# Docker compose up
UP_SERVICES:=web nginx

# Directories
CERT_DIR := ssl

# Conda commands
CONDA_ACTIVATE_BASE:=source ${CONDA_ROOT}/etc/profile.d/conda.sh; conda activate;

help:
	@echo " ${PURPLE}                                  LIST OF AVAILABLE COMMANDS                                    ${NC}"
	@echo " ${RED}======================|=========================================================================${NC}"
	@echo " ${RED}Command               | Description                                                             ${NC}"
	@echo " ${RED}======================|=========================================================================${NC}"
	@echo " ${YELLOW}SETUP ------------------------------------------------------------------------------------------${NC}"
	@echo " ${WHITE}  help                :${NC} prints this help message"
	@echo " ${YELLOW}CLEAN ------------------------------------------------------------------------------------------${NC}"
	@echo " ${WHITE}  clean-folders       :${NC} cleans all folders, pycache & pytest folders"
	@echo " ${WHITE}  clean               :${NC} runs all clean actions"
	@echo " ${YELLOW}DOCS -------------------------------------------------------------------------------------------${NC}"
	@echo " ${WHITE}  docs                :${NC} build docs"
	@echo " ${WHITE}  docs-serve          :${NC} run test server"
	@echo "${RED}=======================|=========================================================================${NC}"
	@echo ""

default: help

# Force execution every time
.PHONY: clean docs

# Clean rules -----------------------------------------------------------------
clean-folders:
	@echo "${YELLOW}clean folders${NC}"
	rm -rf __pycache__ .pytest_cache */__pycache__ */.pytest_cache dist site
	@echo "${GREEN}done${NC}"

clean: clean-folders

# Docs rules ------------------------------------------------------------------
docs:
	@echo "${YELLOW}build html docs pages${NC}"
	mkdocs build
	@echo "${GREEN}done${NC}"

docs-serve:
	@echo "${YELLOW}serving docs with test server ${NC}"
	@mkdocs serve
