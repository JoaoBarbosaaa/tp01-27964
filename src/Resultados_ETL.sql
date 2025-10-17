CREATE TABLE Paciente (
    id_paciente VARCHAR(50) NULL,
    nome VARCHAR(150) NULL,
    nif VARCHAR(50) NULL,
    telefone VARCHAR(50) NULL,
    email VARCHAR(150) NULL,
    data_consulta DATE NULL,
    especialidade VARCHAR(100) NULL,
    tipo_exame VARCHAR(100) NULL,
    resultado VARCHAR(100) NULL,
    data_exame DATE NULL,
    nome_hash VARCHAR(64) NULL,
    email_hash VARCHAR(64) NULL,
    nif_hash VARCHAR(64) NULL
);
