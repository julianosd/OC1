/*
* Programa: CarrosEurope.sas
* Autor: Juliano
* Data: 24/06/2025
* M�dulo: Geral
* Vers�o: 1.00
*/


data CarrosEuropa;
	set sashelp.cars;
		IF ORIGIN = 'Europe';
run;