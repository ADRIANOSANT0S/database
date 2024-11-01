USE Loja;

INSERT INTO Estado (Nome, UF) VALUES 
('São Paulo', 'SP'),
('Minas Gerais', 'MG'),
('Rio de Janeiro', 'RJ');

INSERT INTO Municipio (Estado_ID, Nome, CodIBGE) VALUES 
(1, 'São Paulo', 3550308),
(2, 'Belo Horizonte', 3106200),
(3, 'Rio de Janeiro', 3304557);

INSERT INTO Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, Municipio_ID, EndCEP, EndMunicipio) VALUES 
('João Silva', '12345678901', '11999999999', 'Rua A', '100', 1, '01001000', 1),
('Maria Oliveira', '98765432100', '21988888888', 'Avenida B', '200', 2, '30130130', 2),
('Carlos Santos', '11122233344', '31977777777', 'Rua C', '300', 3, '20020020', 3),
('Ana Costa', '55566677788', '21987654321', 'Rua D', '400', 1, '01111000', 1),
('Pedro Lima', '11223344556', '31987654321', 'Rua E', '500', 2, '30140140', 2),
('Carla Dias', '66778899000', '11987654321', 'Avenida F', '600', 3, '20030030', 3),
('Lucas Rocha', '33322211100', '31999988877', 'Rua G', '700', 1, '01500000', 1);


INSERT INTO ContaReceber (Cliente_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situacao) VALUES 
(1, 1001, '2024-01-01', '2024-01-15', 500.00, '1'), -- Não pago
(2, 1002, '2024-02-01', '2024-02-15', 1500.00, '2'), -- Cancelado
(3, 1003, '2024-03-01', '2024-03-15', 200.00, '1'), -- Não pago
(4, 1004, '2024-04-01', '2024-04-15', 800.00, '3'), -- Pago
(5, 1005, '2024-05-01', '2024-05-15', 1200.00, '1'), -- Não pago
(6, 1006, '2024-06-01', '2024-06-15', 700.00, '3'), -- Pago
(7, 1007, '2024-07-01', '2024-07-15', 300.00, '2'); -- Cancelado
