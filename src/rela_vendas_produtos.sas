/*
*
* Programa: rela_vendas_produtos.sas
* Autor: Juliano
* Data: 25/06/2025
* Módulo: Relatorios
* Versão: 1.00
* 
*/

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";


data vendasprodutos;
	set sicoobsp.vendasprodutos;
	total_venda = QtdeVendida*PrecoUnitario;

proc print data=vendasprodutos;
var CodProduto DataVenda Descricao QtdeVendida PrecoUnitario total_venda;
run;