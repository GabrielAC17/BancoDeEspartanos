-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema bancoturma
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bancoturma
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bancoturma` DEFAULT CHARACTER SET utf8 ;
USE `bancoturma` ;

-- -----------------------------------------------------
-- Table `bancoturma`.`ALUNO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancoturma`.`ALUNO` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoturma`.`DISCIPLINA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancoturma`.`DISCIPLINA` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NULL,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoturma`.`PROFESSOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancoturma`.`PROFESSOR` (
  `id` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancoturma`.`TURMA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancoturma`.`TURMA` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dia_da_semana` INT NULL,
  `horario` VARCHAR(45) NULL,
  `ALUNO_id` INT NOT NULL,
  `DISCIPLINA_id` INT NOT NULL,
  `PROFESSOR_id` INT NOT NULL,
  PRIMARY KEY (`id`, `ALUNO_id`, `DISCIPLINA_id`, `PROFESSOR_id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_TURMA_ALUNO_idx` (`ALUNO_id` ASC),
  INDEX `fk_TURMA_DISCIPLINA1_idx` (`DISCIPLINA_id` ASC),
  INDEX `fk_TURMA_PROFESSOR1_idx` (`PROFESSOR_id` ASC),
  CONSTRAINT `fk_TURMA_ALUNO`
    FOREIGN KEY (`ALUNO_id`)
    REFERENCES `bancoturma`.`ALUNO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TURMA_DISCIPLINA1`
    FOREIGN KEY (`DISCIPLINA_id`)
    REFERENCES `bancoturma`.`DISCIPLINA` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TURMA_PROFESSOR1`
    FOREIGN KEY (`PROFESSOR_id`)
    REFERENCES `bancoturma`.`PROFESSOR` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
