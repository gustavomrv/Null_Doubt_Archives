create database null_doubt;
use null_doubt;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Banco de dados: `null_doubt`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendados`
--

CREATE TABLE `agendados` (
  `fk_discente` varchar(250) DEFAULT NULL,
  `fk_agendamento` int DEFAULT NULL,
  `concluido` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Estrutura da tabela `agendados_monitoria`
--

CREATE TABLE `agendados_monitoria` (
  `fk_discente` varchar(250) DEFAULT NULL,
  `fk_monitoria` int DEFAULT NULL,
  `concluido` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `horario` time DEFAULT NULL,
  `dia` int DEFAULT NULL,
  `cod_agendamento` int NOT NULL,
  `fk_local` int DEFAULT NULL,
  `fk_docente` varchar(250) DEFAULT NULL,
  `fk_disciplina` int DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `cod_curso` int NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Estrutura da tabela `discente`
--

CREATE TABLE `discente` (
  `matricula` varchar(250) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `monitor` tinyint(1) DEFAULT NULL,
  `fk_curso` int DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `periodo` int DEFAULT NULL,
  `data_de_encerramento` date DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `cod_disciplina` int DEFAULT NULL,
  `monitor` varchar(250) DEFAULT NULL,
  `fk_docente` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Estrutura da tabela `disciplinas_discente`
--

CREATE TABLE `disciplinas_discente` (
  `fk_disciplina` int DEFAULT NULL,
  `fk_discente` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `docente`
--

CREATE TABLE `docente` (
  `nome` varchar(250) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `matricula` varchar(250) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Estrutura da tabela `local`
--

CREATE TABLE `local` (
  `departamento` varchar(250) DEFAULT NULL,
  `sala` varchar(250) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `cod_local` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `monitoria`
--

CREATE TABLE `monitoria` (
  `horario` time DEFAULT NULL,
  `dia` int DEFAULT NULL,
  `cod_monitoria` int NOT NULL,
  `fk_local` int DEFAULT NULL,
  `fk_discente` varchar(250) DEFAULT NULL,
  `fk_disciplina` int DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Estrutura da tabela `super_user`
--

CREATE TABLE `super_user` (
  `login` varchar(250) NOT NULL,
  `senha` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agendados`
--
ALTER TABLE `agendados`
  ADD KEY `FK_agendados_1` (`fk_discente`),
  ADD KEY `FK_agendados_2` (`fk_agendamento`);

--
-- Índices para tabela `agendados_monitoria`
--
ALTER TABLE `agendados_monitoria`
  ADD KEY `FK_agendados_monitoria_1` (`fk_discente`),
  ADD KEY `FK_agendados_monitoria_2` (`fk_monitoria`);

--
-- Índices para tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`cod_agendamento`),
  ADD KEY `FK_agendamento_2` (`fk_local`),
  ADD KEY `FK_agendamento_3` (`fk_docente`),
  ADD KEY `FK_agendamento_4` (`fk_disciplina`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`);

--
-- Índices para tabela `discente`
--
ALTER TABLE `discente`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `FK_discente_2` (`fk_curso`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_disciplina_2` (`fk_docente`);

--
-- Índices para tabela `disciplinas_discente`
--
ALTER TABLE `disciplinas_discente`
  ADD KEY `FK_disciplinas_discente_1` (`fk_disciplina`),
  ADD KEY `FK_disciplinas_discente_2` (`fk_discente`);

--
-- Índices para tabela `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices para tabela `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`cod_local`);

--
-- Índices para tabela `monitoria`
--
ALTER TABLE `monitoria`
  ADD PRIMARY KEY (`cod_monitoria`),
  ADD KEY `FK_monitoria_2` (`fk_local`),
  ADD KEY `FK_monitoria_3` (`fk_discente`),
  ADD KEY `FK_monitoria_4` (`fk_disciplina`);

--
-- Índices para tabela `super_user`
--
ALTER TABLE `super_user`
  ADD PRIMARY KEY (`login`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agendados`
--
ALTER TABLE `agendados`
  ADD CONSTRAINT `FK_agendados_1` FOREIGN KEY (`fk_discente`) REFERENCES `discente` (`matricula`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_agendados_2` FOREIGN KEY (`fk_agendamento`) REFERENCES `agendamento` (`cod_agendamento`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `agendados_monitoria`
--
ALTER TABLE `agendados_monitoria`
  ADD CONSTRAINT `FK_agendados_monitoria_1` FOREIGN KEY (`fk_discente`) REFERENCES `discente` (`matricula`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_agendados_monitoria_2` FOREIGN KEY (`fk_monitoria`) REFERENCES `monitoria` (`cod_monitoria`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `FK_agendamento_2` FOREIGN KEY (`fk_local`) REFERENCES `local` (`cod_local`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_agendamento_3` FOREIGN KEY (`fk_docente`) REFERENCES `docente` (`matricula`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_agendamento_4` FOREIGN KEY (`fk_disciplina`) REFERENCES `disciplina` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `discente`
--
ALTER TABLE `discente`
  ADD CONSTRAINT `FK_discente_2` FOREIGN KEY (`fk_curso`) REFERENCES `curso` (`cod_curso`) ON DELETE RESTRICT;

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `FK_disciplina_2` FOREIGN KEY (`fk_docente`) REFERENCES `docente` (`matricula`) ON DELETE RESTRICT;

--
-- Limitadores para a tabela `disciplinas_discente`
--
ALTER TABLE `disciplinas_discente`
  ADD CONSTRAINT `FK_disciplinas_discente_1` FOREIGN KEY (`fk_disciplina`) REFERENCES `disciplina` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `FK_disciplinas_discente_2` FOREIGN KEY (`fk_discente`) REFERENCES `discente` (`matricula`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `monitoria`
--
ALTER TABLE `monitoria`
  ADD CONSTRAINT `FK_monitoria_2` FOREIGN KEY (`fk_local`) REFERENCES `local` (`cod_local`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_monitoria_3` FOREIGN KEY (`fk_discente`) REFERENCES `discente` (`matricula`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_monitoria_4` FOREIGN KEY (`fk_disciplina`) REFERENCES `disciplina` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
