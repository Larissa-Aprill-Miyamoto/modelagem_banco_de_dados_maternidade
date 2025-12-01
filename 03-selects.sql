use modelagem_de_dados_maternidade;

SELECT id_gestante, nome, cpf
FROM gestante
WHERE cpf IS NOT NULL
ORDER BY nome ASC;

SELECT *
FROM agendamento
ORDER BY data_agendada ASC
LIMIT 3;

SELECT g.nome AS gestante, p.id_prontuario, p.data_nascimento
FROM prontuario p
JOIN gestante g ON p.id_gestante = g.id_gestante;

SELECT a.id_atendimento, a.data_consulta,
       g.nome AS gestante,
       pr.nome AS profissional
FROM atendimento a
JOIN prontuario p ON a.id_prontuario = p.id_prontuario
JOIN gestante g ON p.id_gestante = g.id_gestante
JOIN profissional pr ON a.id_profissional = pr.id_profissional
ORDER BY a.data_consulta DESC;

SELECT g.nome AS gestante, i.anotacoes, i.data_entrada
FROM internacao i
JOIN gestante g ON i.id_gestante = g.id_gestante
WHERE i.data_saida IS NULL;