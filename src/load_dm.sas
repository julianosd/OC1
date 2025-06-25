/*

*

* Programa: load_dm.sas

* Autor: Juliano

* Data: 25/06/2025

* Módulo: Carga de dados

* Versão: 1.00

* 

*/
%include "&caminho/src/libraries.sas";
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
proc import 
	datafile="&caminho/output/DM1.xlsx"
	dbms = xlsx 
	out  = sicoob.vendas;
	sheet= vendas;
run;


/*/home/Jacques/Workshop/Git/OC1/outputs/DM1.xlsx