Prezado cliente,

Segue abaixo o passo-a-passo para execu��o do script para limpeza de registros obsoletos do banco do DFE.
Importante ressaltar que este processo j� foi homologado em nossos ambientes internos e SaaS, mas n�o temos controle sobre o tempo que estes scripts levar�o para serem executados frente � arquitetura e volume de armazenamento de cada cliente.
O �nico pr�-requisito � possuir a vers�o entre 3.88.1 e 3.90.0 no ambiente em que for executar os scripts.

1) Pare o DFE (todos os servi�os da aplica��o);
2) Execute o backup do banco de dados;
3) Execute os scripts na ordem abaixo:
                3.1) Script - Passo 1 - Incluir Tabelas - MSSQL.sql;
                3.2) Script - Passo 2 - M�dulo CT-e - MSSQL.sql;
                3.3) Script - Passo 2 - M�dulo CT-e OS - MSSQL.sql;
                3.4) Script - Passo 2 - M�dulo MDF-e - MSSQL.sql;
                3.5) Script - Passo 2 - M�dulo NFC-e - MSSQL.sql;
                3.6) Script - Passo 2 - M�dulo NF-e - MSSQL.sql;
                3.7) Script - Passo 2 - M�dulo NFS-e - MSSQL.sql;
                3.8) Script - Passo 2 - M�dulo Receptor NF-e_CT-e - MSSQL.sql;
                3.9) Script - Passo 2 - M�dulo Receptor NFS-e - MSSQL.sql;

4) Execute o script e retornar o resultado no chamado:
                4.1) Script - Passo 3 - Contagem.sql;
                4.2) Formalizar no chamado o resultado que retornou no script 4.1 (Script - Passo 3 - Contagem.sql);

5) � partir desse ponto o DFE pode ser reiniciado e operar normalmente;

6) Execute o script de Saneamento:
                6.1) Script - Passo 4 - Executa Saneamento.sql;

7) Executar o script e retornar o resultado no chamado:
                7.1) Script - Passo 5 - Contagem.sql;
                7.2) Formalizar no chamado o resultado que retornou no script 7.1 (Script - Passo 5 - Contagem.sql);

8) Executar o script que remove as Tabelas TEMP:
                8.1) Script - Passo 6 - Remover Tabelas TEMP.sql;

Ao final o DBA do cliente deve realizar um processo de reorganiza��o da tabela DFE_LOB para ter o ganho efetivo de espa�o dos registros apagados.
Lembrando que como essa tabela tem coluna LOB, tamb�m ser� necess�rio fazer um move do segmento.
