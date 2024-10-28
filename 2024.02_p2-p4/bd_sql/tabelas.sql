use politicaantirracista;

CREATE TABLE PoliticaAntirracista(
    nome VARCHAR(255) PRIMARY KEY,
    descricao TEXT NOT NULL,
    anoImplementacao INT NOT NULL,
    efetitivade INT NOT NULL
);

CREATE TABLE empresas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) UNIQUE,
    endereco TEXT,
    ano_fundacao INT,
    tipo VARCHAR(50)
);
CREATE TABLE politicas_empresa (
    nome_empresa VARCHAR(255),
    nome_politica VARCHAR(255),
    PRIMARY KEY (nome_empresa, nome_politica),
    FOREIGN KEY (nome_empresa) REFERENCES empresas(nome),
    FOREIGN KEY (nome_politica) REFERENCES PoliticaAntirracista(nome)
);

INSERT INTO empresas (nome, endereco, ano_fundacao, tipo) VALUES
('Empresa1', 'Rua 1, 123', 1990, 'Tecnologia'),
('Empresa2', 'Rua 2, 456', 2000, 'Varejo'),
('Empresa3', 'Rua 3, 789', 2010, 'Serviços'),
('Empresa4', 'Rua 4, 1011', 2020, 'Tecnologia'),
('Empresa5', 'Rua 5, 1213', 1995, 'Varejo');

INSERT INTO PoliticaAntirracista (nome, descricao, anoImplementacao, efetitivade) VALUES
('Contratação Inclusiva', 'Esta política visa garantir que 30% das vagas disponíveis em todos os níveis da empresa sejam direcionadas a grupos sub-representados, especialmente pessoas negras. O processo de recrutamento será revisado para eliminar vieses e aumentar a diversidade na seleção de candidatos.', 2021, 2015),
('Programa de Formação em Diversidade e Inclusão', 'Treinamentos obrigatórios para todos os colaboradores sobre questões de racismo estrutural, preconceito implícito e práticas de inclusão. O objetivo é educar os funcionários e promover um ambiente de respeito e empatia.', 2022, 2012),
('Política de Transparência Salarial', 'Auditorias anuais de salários e benefícios para garantir que não existam disparidades salariais entre colaboradores de diferentes raças e etnias que desempenham funções equivalentes. A política busca promover igualdade salarial e responsabilizar a empresa por práticas justas.', 2020, 2013);

INSERT INTO politicas_empresa (nome_empresa, nome_politica) VALUES
('Empresa1', 'Contratação Inclusiva'),
('Empresa1', 'Programa de Formação em Diversidade e Inclusão'),
('Empresa2' , 'Política de Transparência Salarial'),
('Empresa3', 'Contratação Inclusiva'),
('Empresa3', 'Programa de Formação em Diversidade e Inclusão'),
('Empresa4', 'Política de Transparência Salarial'),
('Empresa5', 'Contratação Inclusiva')