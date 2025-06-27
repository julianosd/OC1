/*
 *
 * Programa: formatos_corp.sas
 * Autor: Juliano
 * Data: 27/06/2025
 * Módulo: Geral
 * Versão: 1.00
 * 
 */


proc format;
    value tamanhos
        1 = 'Pequeno'
        2 = 'Médio'
        3 = 'Grande'
        4 = 'Extra-Grande';
run;