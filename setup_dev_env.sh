RED='\033[1;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
CODE='\033[1;30;43m'
NC='\033[0m'

# Install conda environments
echo "${YELLOW}installing development environment${NC}"
conda env create -f requirements/environment.yml
echo "${YELLOW}activate with ${CODE} conda activate settimana-bianca ${NC}\n"

echo "${GREEN}environments installed${NC}\n"

echo "${YELLOW}run ${CODE} make ${NC}${YELLOW} to see available commands ${NC}\n"

echo "${GREEN}done${NC}\n"

return 0