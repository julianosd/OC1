/*
 *
 * Programa: tran_VendasPeriodo_Format..sas
 * Autor: Juliano
 * Data: 27/06/2025
 * M�dulo: Prepera��o de Dados
 * Vers�o: 2.00
 * 
 */

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";
%include "&caminho/src/formatos_corp.sas";

proc sql;
	create table sicoobsp.VendasPeriodo as
	select a.codproduto, b.descricao, c.descricao as Grupo, 
           d.descricao as Depto, 
           e.descricao as Cor, a.CodTamanho format = tamanhos., 
		   g.Sigla, g.Nome as Estado, h.Nome as Regiao,
           a.datavenda, a.qtdevendida, 
           b.precounitario, 
		   a.qtdevendida*b.precounitario as TotalVenda,
		   g.percimposto format=percent6.2, 
		   a.qtdevendida*b.precounitario*g.percimposto as TotalImposto
	  from sicoob.vendas a
	 inner join sicoob.produtos b
        on b.codproduto = a.codproduto
     inner join sicoob.grupos c
        on c.codgrupo = b.codgrupo
     inner join sicoob.deptos d
        on d.coddepto = b.coddepto
     inner join sicoob.cores e
        on e.codcor = a.codcor
     inner join sicoob.tamanhos f
        on f.codtamanho = a.codtamanho
     inner join sicoob.estados g
        on g.codestado = a.codestado
     inner join sicoob.regioes h
        on h.codregiao = g.codregiao
;
quit;

%include "&caminho/src/clear_libs.sas";
