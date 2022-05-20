SHELL = /bin/bash

INFILE = curriculum
OUTFILE = index

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

test: pdf

cv: pdf change_name clean

alt: change_resume pdf restore change_name restore

# =============================================================================

pdf:
	@echo -e "Generando PDF a partir de ${ORANGE}$(INFILE).tex${NC}: "
	@xelatex -synctex=1 -interaction=nonstopmode "${INFILE}".tex
	@echo -e "${GREEN}OK${NC}\n${ORANGE}$(INFILE).pdf${NC} generado exitosamente."

# @: Evita mostrar la llamada del comando en la salida.
# -@: Ignora los comandos que retornan non-successful status.
