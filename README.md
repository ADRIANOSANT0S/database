# Projeto de Gerenciamento de Banco de Dados - Loja

## Descrição do Projeto

Este projeto consiste na criação de um sistema de gerenciamento para uma loja, utilizando um banco de dados relacional MySQL. O objetivo principal é estruturar e gerenciar informações sobre estados, municípios, clientes e contas a receber. O sistema permite registrar e consultar dados de forma eficiente, facilitando operações de negócios cotidianas.

## Estrutura do Banco de Dados

O banco de dados `Loja` é composto pelas seguintes tabelas:

1. **Estado**: Armazena informações sobre os estados, incluindo um identificador único (ID), o nome do estado e sua sigla (UF).
  
2. **Municipio**: Contém dados sobre os municípios, incluindo um identificador único (ID), o ID do estado ao qual pertence (Estado_ID), o nome do município e o código IBGE.

3. **Cliente**: Registra informações sobre os clientes, incluindo um identificador único (ID), nome completo, CPF, número de celular, endereço completo e o município de residência (EndMunicipio).

4. **ContaReceber**: Armazena as contas a receber, com um identificador único (ID), o ID do cliente associado (Cliente_ID), data da conta, data de vencimento, valor da conta e a situação (que pode ser registrada, cancelada ou paga).

## Considerações Finais

Este projeto foi desenvolvido com o intuito de aprimorar o entendimento sobre modelagem de dados, criação de tabelas, relacionamentos e manipulação de dados utilizando SQL. Com a implementação deste sistema, é possível gerenciar de forma eficiente informações cruciais para a operação de uma loja.

## Acesso ao Repositório

Todos os scripts utilizados na criação e manipulação do banco de dados estão disponíveis no repositório. Para acessar os arquivos e executar os scripts, siga as instruções contidas no repositório.
