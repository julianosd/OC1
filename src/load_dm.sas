/*

*

* Programa: load_dm.sas

* Autor: Juliano

* Data: 25/06/2025

* M�dulo: Carga de dados

* Vers�o: 1.00

* 

*/

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";
proc import 
	datafile="&caminho/outputs/DM1.xlsx"
	dbms = xlsx 
	out  = sicoob.vendas5;
	sheet= vendas;
run;


proc import 
	datafile="&caminho/outputs/DM1.xlsx"
	dbms = xlsx 
	out  = sicoob.produtos5;
	sheet= produtos;
run;
