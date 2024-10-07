# DIO.Bootcamp.Database-Experience
Repositório destinado aos desafios do Bootcamp DataBase Experience da Dio.me 

Bootcamp sobre Banco de Dados da DIO - experiência em Ciência de Dados para se aprimorar nos principais conceitos de banco de dados SQL e NoSQL. 
No Database Experience - modelagem de dados, SGBD, EER, arquitetura, queries entre outras.  

Conteúdo de Repositório:

  1 - Desafios:
  
      1.1 - Banco de Dados SQL
         
         a - Refinando um Projeto Conceitual de Banco de Dados – E-COMMERCE:
                  Refine o modelo apresentado acrescentando os seguintes pontos:
                      + Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
                      + Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
                      + Entrega – Possui status e código de rastreio.
                      
        
        b - Criação de Esquema conceitual para banco de dados - OFICINA MECANICA
                  Cria o esquema conceitual para o contexto de oficina com base na narrativa fornecida:
                      + Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica
                      + Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões  periódicas
                      + Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
                      + A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
                      + O valor de cada peça também irá compor a OSO cliente autoriza a execução dos serviços
                      + A mesma equipe avalia e executa os serviços
                      + Os mecânicos possuem código, nome, endereço e especialidade
                      + Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.
             
         c - Primeiro projeto lógico de banco de dados
                   Replique a modelagem do projeto lógico de banco de dados para o cenário de e-commerce. 
                   Fique atento as definições de chave primária e estrangeira, assim como as constraints presentes no cenário modelado. 
                   Perceba que dentro desta modelagem haverá relacionamentos presentes no modelo EER. 
                   Sendo assim, consulte como proceder para estes casos. 
                   Além disso, aplique o mapeamento de modelos aos refinamentos propostos no módulo de modelagem conceitual.
                   Assim como demonstrado durante o desafio, realize a criação do Script SQL para criação do esquema do banco de dados. 
                   Posteriormente, realize a persistência de dados para realização de testes. 
                   Especifique ainda queries mais complexas dos que apresentadas durante a explicação do desafio. Sendo assim, 
                   crie queries SQL com as cláusulas abaixo:

                       + Recuperações simples com SELECT Statement
                       + Filtros com WHERE Statement
                       + Crie expressões para gerar atributos derivados
                       + Defina ordenações dos dados com ORDER BY
                       + Condições de filtros aos grupos – HAVING Statement
                       + Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
                       + Não há um mínimo de queries a serem realizadas;
                       + Os tópicos supracitados devem estar presentes nas queries;
                       + Elabore perguntas que podem ser respondidas pelas consultas;
                       + As cláusulas podem estar presentes em mais de uma query;
                       
         d - Construção de Projeto Lógico de Banco de Dados do Zero (
                   Para este cenário você irá utilizar seu esquema conceitual, criado no desafio do módulo de modelagem de BD com modelo ER, 
                   para criar o esquema lógico para o contexto de uma oficina. Neste desafio, você definirá todas as etapas. 
                   Desde o esquema até a implementação do banco de dados. Sendo assim, neste projeto você será o protagonista. 
                   Tenha os mesmos cuidados, apontados no desafio anterior, ao modelar o esquema utilizando o modelo relacional.
                   Após a criação do esquema lógico, realize a criação do Script SQL para criação do esquema do banco de dados. 
                   Posteriormente, realize a persistência de dados para realização de testes. 
                   Especifique ainda queries mais complexas do que apresentadas durante a explicação do desafio. 
                   Sendo assim, crie queries SQL com as cláusulas abaixo:
            
                       + Recuperações simples com SELECT Statement;
                       + Filtros com WHERE Statement;
                       + Crie expressões para gerar atributos derivados;
                       + Defina ordenações dos dados com ORDER BY;
                       + Condições de filtros aos grupos – HAVING Statement;
                       + Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;
                       + Não há um mínimo de queries a serem realizadas;
                       + Os tópicos supracitados devem estar presentes nas queries;
                       + Elabore perguntas que podem ser respondidas pelas consultas
                       + As cláusulas podem estar presentes em mais de uma query

      1.2 - Bancos de Dados SQL e NoSQL na Engenharia de Dados
                  Neste desafio, você terá a missão de compreender o papel dos Bancos de Dados Relacionais (SQL) e Não Relacionais (NoSQL) 
                  no contexto de um Engenheiro de Dados. Para isso, anote todos os conceitos, definições e insights que julgar relevantes. 





          
