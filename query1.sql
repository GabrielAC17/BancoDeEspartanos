SELECT al.Nome
FROM `bancoturma`.`turma` tu
INNER JOIN bancoturma.aluno al ON al.id = tu.ALUNO_id
INNER JOIN bancoturma.professor pr ON pr.id = tu.PROFESSOR_id 
WHERE pr.Nome = 'JOAO PEDRO'