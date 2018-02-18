#!/bin/usr/python
#-*- coding: utf8 -*-
import os, re
os.system('clear')

print('Preencha seus dados corretamente')
nome = raw_input('Digite seu nome:')
if re.findall ('[0-9]|[!@#$%&*,_-]', nome):
	print('Nome Incorreto.')
else:
	print('Nome Correto.')

email = raw_input('Digite seu email:')
if re.findall ('^([A-Z0-9\.\_-])+@[A-Z]+(\.com\.br)|(\.com|\.br)$', email):
	print('Email correto.')
else:
	print('Email Incorreto.')

tel = raw_input('Digite seu telefone:')
if re.findall ('^[(][0-9]{2}[)][0-9]{5}-[0-9]{4}$', tel):
	print('Telefone Correto.')
else:
	print('Telefone Incorreto.')

rg = raw_input('Digite seu RG:')
if re.findall ('^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-((X|x)|[0-9]){1}$', rg):
	print('RG correto.')
else:
	print('RG Incorreto.')

cpf = raw_input('Digite seu CPF:')
if re.findall ('^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$', cpf):
	print('CPF Correto.')
else:
	print('CPF Incorreto.')

data = raw_input('Data de Nascimento:')
if re.findall ('^(([0][0-9]|[12][0-9])|[3][01])[/]([0][0-9]|[1][0-2])[/]([0-9]{4})', data):
	print('Data Correta.')
else:
	print('Data Incorreta.')

ip = raw_input('Digite um IP:')
if re.findall ('^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$', ip):
	print('IP Correto.')
else:
	print('IP Incorreto.')

mask = raw_input('Digite uma máscara:')
if re.findall ('^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$', mask):
	print('Máscara Correta.')
else:
	print('Máscata Incorreta.') 
