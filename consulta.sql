USE Loja;

-- Criando uma VIEW para contas a receber que ainda não foram pagas
CREATE VIEW ContasNaoPagas AS
SELECT 
    cr.ID AS ContaReceberID,
    c.Nome AS ClienteNome,
    c.CPF AS ClienteCPF,
    cr.DataVencimento,
    cr.Valor
FROM 
    ContaReceber cr
JOIN 
    Cliente c ON cr.Cliente_ID = c.ID
WHERE 
    cr.Situacao = '1';

SELECT * FROM ContasNaoPagas;
