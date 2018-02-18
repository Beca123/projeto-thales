#!/bin/bash
clear

echo "Preencha seus dados corretamente:"

function name () {
	read -p "Digite seu nome: " nome
	echo $nome > .cadastro.tmp
grep -E '([[:digit:]]|[[:punct:]])' .cadastro.tmp
if (( $? == 0 )); then
	echo "Nome incorreto" && name
else
	echo "Nome correto"
sleep 1 && clear
fi
}
function email (){
	read -p "Digite seu email: " email
	echo $email > .cadastro.tmp
grep -E '^([A-Za-z0-9\.\_\-])+@[A-Za-z0-9]+((\.com\.br)|(\.com|\.com|\.br))$' .cadastro.tmp
if (( $? == 0 )); then
	echo "email correto"
sleep 1 && clear
else
	echo "email incorreto" && email
fi
}
function telefone(){
	read -p "Digite seu telefone: " telefone
	echo $telefone > .cadastro.tmp
grep -E '^[(][0-9]{2}[)]9[0-9]{4}-[0-9]{4}' .cadastro.tmp
if (( $? == 0 )); then
	echo "numero de telefone correto"
sleep 1 && clear
else
	echo "numero de telefone incorreto" && telefone
fi
}
function registrog(){
	read -p "digite seu rg: " rg
	echo $rg > .cadastro.tmp
grep -E "^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-((X|x)|[0-9])" .cadastro.tmp
if (( $? == 0 )); then
	echo "rg correto"
sleep 1 && clear
else
	echo "rg incorreto" && registrog
fi
}
function cpf(){
	read -p "digite seu cpf: " cpf
	echo $cpf > .cadastro.tmp
grep -E "^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}" .cadastro.tmp
if (( $? == 0 )); then
	echo "cpf correto"
sleep 1 && clear
else
	echo "cpf incorreto" && cpf
fi
}
function datanasc(){
read -p "digite sua data de nascimento  (dd/mm/aaaa):" data
	echo $data > .cadastro.tmp
grep -E '^(([0][0-9]|[12][0-9])|[3][01])[/]([0][0-9]|[1][0-2])[/]([0-9]{4})' .cadastro.tmp
if (( $? == 0 )); then
	echo "data de nascimento correta"
sleep 1 && clear
else
	echo "data de nascimento incorreta" &&datanasc
fi
}
function ipa(){
read -p "digite seu endereço de ip: " ipa
	echo $ipa > .cadastro.tmp
grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$' .cadastro.tmp
if (( $? == 0 )); then
	echo "ip correto"
sleep 1 && clear
else
	echo "ip incorreto" && ipa
fi
}
function masca(){
read -p "digite a mascara de sua rede: " mask
	echo $mask > .cadastro.tmp
grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$' .cadastro.tmp
if (( $? == 0 )); then
	echo "mascara correta"
sleep 1 && clear
else
	echo "mascara incorreta" && masca
fi
}
name
email
telefone
registrog
cpf
datanasc
ipa
masca
