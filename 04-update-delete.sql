use modelagem_de_dados_maternidade;

UPDATE gestante
SET telefone = '11977778888'
WHERE id_gestante = 1;

UPDATE profissional
SET cargo = 'E'
WHERE id_profissional = 1;

UPDATE internacao
SET data_saida = '2025-01-15 15:30:00'
WHERE id_internacao = 1;

DELETE FROM profissional
WHERE id_profissional = 3;

DELETE FROM gestante
WHERE id_gestante = 3;

DELETE FROM agendamento
WHERE data_agendada = '2025-02-01 09:00:00';
