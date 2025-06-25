/*
*
* Programa: vendasprodutos.sas
* Autor: Juliano
* Data: 25/06/2025
* Módulo: Preparacao de dados
* Versão: 1.00
* 
*/


%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";


proc sort
	data=sicoob.vendas (where=(CodProduto is not missing))
	out =  vendas_produtos;
	by  CodProduto;
run;

proc sort
	data=sicoob.produtos (where=(CodProduto is not missing))
	out =  produtos_produtos;
	by  CodProduto;
run;

data sicoobsp.vendasprodutos;
	merge vendas_produtos produtos_produtos;
	by  CodProduto;
run;


