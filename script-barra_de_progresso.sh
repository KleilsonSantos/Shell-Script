#!/bin/bash
#--------------------------------------------------------------------
# Name Script:	script-barra_de_progresso.sh
# Information:	https://github.com/KleilsonSantos/Shell-Script
# Creation in:	June 2, 2020
# Author:	Kleilson Santos <canalnovoti@gmail.com>
# Description:	Criando barra de progresso
# License:	GPL v3
# Version:	0.1.5
#--------------------------------------------------------------------

# Declarando variável _ARRAY, o parâmetro "-r" indica 
# que a variável e apenas leitura (read)
declare -r _ARRAY=(/ / / / / / / / / / / / / / / / / / / / / / / / / / / / / /)

# Declarando variável _BAR_TYPE, o parâmetro "-r" indica 
# que a variável e apenas leitura (read)
#declare -r _BAR_TYPE_1="░▒▓█▓▒░"
#declare -r _BAR_TYPE_2="⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"
#declare -r _BAR_TYPE_3="◒◐◑"
#declare -r _BAR_TYPE_4=":(:|:):D"
#declare -r _BAR_TYPE_5="◇◈◆"
#declare -r _BAR_TYPE_6="⚬⚭⚮⚯"
#declare -r _BAR_TYPE_7="##############################"
#declare -r _BAR_TYPE_8="..........................."
#declare -r _BAR_TYPE_9="============================"
#declare -r _BAR_TYPE_10="------------------------------"
declare -r _BAR_TYPE="##############################"

# Declarando variável _TOTAL, o parâmetro "-r" indica 
# que a variável e apenas leitura (read)
declare -r _TOTAL=${#_ARRAY[@]}
#echo $_TOTAL

# Esconde o cursor
tput civis -- invisible

# Simulando carregamento de um comando executando
echo "Loading..."

for i in "${!_ARRAY[@]}"; do
	#statements
	# Calculando a porcentagem do loop.
	porc=$(((($i+1) * 100) / _TOTAL))
	# Calcula o ultimo caracter da barra baseado na porcentagem.
	bar=$((($porc * _TOTAL) / 100))
	#Simulando um comando rodando
 	sleep 0.1
	# Mostrando a porcentagem da barra de progresso.
	# Flag -n -> Manter o cursor na mesma linha.
	# Flag -e -> Voltar o cursor no inicio da linha.
	# \\r -> Progressão da barra em uma única vez.
	# Cores na saida da barra de progresso
	# \e[01;32m -> Cor Verde
	# \e[01;37m -> Cor Branca
	echo -n -e "\\r\e[01;32mProgress...$porc%\e[01;37m[${_BAR_TYPE:0:$bar}]"
done

# Pulando linha após termino do barra de progresso
echo ""
# Mostra o cursor
tput cnorm -- normal