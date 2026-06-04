#!/bin/bash
#------------------------------------------------------------------------
# Name Script:	script-echo.sh
# Information:	https://github.com/KleilsonSantos/Shell-Script
# Creation in:	June 2, 2020
# Author:	Kleilson Santos <canalnovoti@gmail.com>
# Description:	Imprimindo textos e a data do sistema
# License:	GPL v3
# Version:	0.0.1
#------------------------------------------------------------------------

usage() {
	echo "Uso: $(basename "$0")"
	echo "     $(basename "$0") --help"
	echo ""
	echo "Exibe uma mensagem e a data atual do sistema."
}

case "${1:-}" in
	-h|--help)
		usage
		exit 0
		;;
	"")
		;;
	*)
		echo "Parâmetro inválido: $1" >&2
		usage >&2
		exit 1
		;;
esac

# -> Inicio do script
# Comando echo, imprime o conteudo do que esta entre as aspas -> ""
echo "===================================="
echo "Imprimindo data atual do sistema" 

# Comando date, imprime a data atual do sistema
date
echo "===================================="
# -> Fim do script
