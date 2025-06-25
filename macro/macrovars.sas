/*
*
* Programa: macrovar.sas
* Autor: Juliano
* Data: 24/06/2025
* Módulo: Geral
* Versão: 1.00
* 
*/

%let caminho = /opt/sas/Workshop/Git/OC1;
*%let caminho = /home/Jacques/Workshop/Git/OC1;
%let caminho_libs = /opt/sas/Workshop/libraries;
*%let caminho_libs = /home/Jacques/Workshop/libraries;
libname sicoob base "&caminho_libs/Sicoob";

