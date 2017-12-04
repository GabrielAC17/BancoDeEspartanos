SELECT distinct di.id,
    di.Nome
FROM `bancoturma`.`disciplina` di
LEFT JOIN bancoturma.turma tu ON tu.DISCIPLINA_id = di.id
where tu.DISCIPLINA_id IS NULL