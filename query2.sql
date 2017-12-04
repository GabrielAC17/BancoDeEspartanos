SELECT DISTINCT `turma`.`dia_da_semana`
FROM `bancoturma`.`turma` tu
LEFT JOIN disciplina di ON di.id = tu.DISCIPLINA_id
WHERE di.Nome = 'MATEMATICA'