SHELL = /bin/bash

INFILE = curriculum

# Colors codes
GREEN = \033[0;32m
ORANGE = \033[0;33m
NC = \033[0m

# =============================================================================

# Check all commands used
# Missing check: <perl URI::file> (perl MURI::file -e 1)
DEPENDENCIES = xelatex
K := $(foreach exec,$(DEPENDENCIES),\
		 $(if $(shell which $(exec)), OK, $(error "No $(exec) in PATH")))


# =============================================================================

default:
	@echo "Utilice 'make cv' para generar el pdf o 'make alt' para reemplazar"
	@echo "el texto de resumen por uno distinto."

test: get_files change_name

cv: pdf change_name clean

alt: change_resume pdf restore change_name restore

# =============================================================================

pdf:
	@echo -e "Generando PDF a partir de ${ORANGE}$(INFILE).tex${NC}: "
	@xelatex -synctex=1 -interaction=batchmode -halt-on-error "${INFILE}".tex
	@echo -e "\n${GREEN}OK${NC}\n${ORANGE}$(INFILE).pdf${NC} generado exitosamente."

get_files:
	@ls sections | grep resumen

change_name:
	@read -p "Ingrese el archivo del resumen: " RESUMEN; \
	echo -e "Reemplazando el resumen por ${ORANGE}$${RESUMEN}.tex${NC}"
# @: Evita mostrar la llamada del comando en la salida.
# -@: Ignora los comandos que retornan non-successful status.
