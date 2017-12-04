SELECT DISTINCT al.id,
	al.nome
FROM `bancoturma`.`turma` tu
LEFT JOIN bancoturma.aluno al ON al.id = tu.ALUNO_id
LEFT JOIN disciplina di ON di.id = tu.DISCIPLINA_id
where di.Nome in ('MATEMATICA', 'FISICA')
group by al.id
having count(distinct di.id) >= 2