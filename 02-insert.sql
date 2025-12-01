Use modelagem_de_dados_maternidade;

INSERT INTO profissional (nome, cargo)
VALUES
('Ana Ribeiro', 'M'),
('Carlos Souza', 'E'),
('Fernanda Lima', 'M');

INSERT INTO gestante (nome, cpf, data_nascimento, endereco, telefone)
VALUES
('Mariana Silva', '12345678900', '1995-04-12', 'Rua das Flores, 123', '11988887777'),
('Juliana Rocha', '98765432100', '1990-10-20', 'Av Central, 500', '11999996666');

INSERT INTO prontuario (data_nascimento, id_gestante)
VALUES
('1995-04-12', 1),
('1990-10-20', 2);

INSERT INTO agendamento (id_profissional, id_gestante, data_agendada, tipo_atendimento)
VALUES
(1, 1, '2025-01-10 09:00:00', 'C'),
(2, 2, '2025-01-12 14:00:00', 'E');

INSERT INTO atendimento (data_consulta, id_prontuario, id_profissional, tipo_atendimento)
VALUES
('2025-01-10 09:15:00', 1, 1, 'C'),
('2025-01-12 14:15:00', 2, 2, 'E');

INSERT INTO internacao (anotacoes, data_entrada, id_gestante)
VALUES
('Gestante em observação', '2025-01-15 08:30:00', 1),
('Monitoramento fetal', '2025-01-17 07:10:00', 2);

INSERT INTO parto (data_entrada, data_saida, id_gestante, id_internacao)
VALUES
('2025-01-15 08:30:00', '2025-01-15 12:45:00', 1, 1),
('2025-01-17 07:10:00', '2025-01-17 13:20:00', 2, 2);