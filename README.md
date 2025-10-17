# TP01 - Kettle (Pentaho Data Integration)

## 📘 Identificação do Autor
**Nome:** João Barbosa  
**Número de Aluno:** 27964
**Unidade Curricular:** Integração de sistemas de informação

**Ferramenta Utilizada:** Pentaho Data Integration (Kettle)

---

## 📂 Estrutura do Projeto
tp01-27964/
│
├── README.md → Ficheiro de descrição do projeto
│
├── doc/
│ └── 27964_27983_doc.pdf → Documento explicativo do trabalho (análise e resultados)
│
├── dataint/
│ ├── logs/ → Ficheiros de logs gerados durante a execução das transformações/jobs
│ ├── *.csv → Ficheiros intermédios ou auxiliares utilizados no processo ETL
│ ├── *.ktr → Transformações desenvolvidas no Kettle
│ └── *.kjb → Jobs utilizados para orquestrar as transformações
│
├── data/
│ ├── input/ → Ficheiros de entrada (dados originais)
│ │ ├── *.csv / *.xml
│ │
│ └── output/ → Ficheiros de saída gerados pelo processo ETL
│ └── *.json


---

## ⚙️ Descrição da Solução

O objetivo deste trabalho foi desenvolver um **processo ETL (Extract, Transform, Load)** utilizando o **Pentaho Data Integration (Kettle)**.

### **Etapas Principais:**
1. **Extração:**  
   Leitura dos ficheiros de entrada localizados em `data/input/`.
2. **Transformação:**  
   Limpeza, normalização e junção de dados conforme os requisitos definidos.  
   As transformações (`.ktr`) encontram-se na pasta `dataint/`.
3. **Carregamento:**  
   Os resultados processados são exportados para `data/output/`, nos formatos `.csv` ou `.xlsx`.

---

## 🚀 Como Executar a Solução

### **Pré-requisitos:**
- Ter instalado o **Pentaho Data Integration (PDI / Kettle)**  
- Ter o SQL server instalado, e a base de dados devidamente criada e configurada 

### **Passos:**
1. Abrir o **Spoon** (interface gráfica do Kettle).
2. Ir a **File → Open** e abrir o job principal localizado em:
3. Verificar os caminhos relativos das entradas e saídas:
- Entrada: `data/input/`
- Saída: `data/output/`
4. Executar o job clicando no botão **Run**.
5. Após a execução, verificar os ficheiros gerados em `data/output/`.

---

## 🧩 Ficheiros Principais
| Tipo | Nome / Localização | Descrição |
|------|--------------------|------------|
| Job Principal | `dataint/ETL_Master.kjb` | Coordena todas as transformações |
| Transformação 1 | `dataint/Exames.ktr` | Limpeza e normalização dos dados dos exames |
| Transformação 2 | `dataint/Consultas.ktr` | Limpeza e normalização dos dados das consultas |
| Transformação 3 | `dataint/join.ktr` | Junção, envio de email e inserção dos dados na base de dados  |
| Transformação 4 | `dataint/ExportarResultados.ktr` | Exportação dos dados  |
| Documentação | `doc/27964_27983_doc.pdf` | Explicação detalhada do processo ETL e resultados obtidos |

---

## 🧾 Geração dos Logs
Para gerar os logs da execução do processo ETL, foram utilizados os seguintes comandos no Prompt de comando:

-cd C:\Users\João\Downloads\pdi-ce-10.2.0.0-222\data-integration

-Kitchen.bat /file:"C:\TP01_27964\dataint\ETL_Master.kjb" /level:Basic /logfile:"C:\TP01_27964\data\output\logs\novalog"

---

## 🧪 Exemplos de Execução
Após a execução do job principal, serão gerados ficheiros de saída no diretório:
Exemplo:5,Rita Santos,999888777,915678901,jpjbcmjg@gmail.com,2025-09-20,dermatologia,RaioX        ,Alterado,2025-09-21


---

## 🧑‍💻 Observações Finais
- Todos os caminhos de ficheiros foram configurados de forma **relativa**, facilitando a portabilidade do projeto.  
- Caso surjam erros de leitura ou escrita, verificar permissões de pasta e encoding dos ficheiros de entrada.  
- O ficheiro PDF na pasta `doc/` contém explicações detalhadas do processo, fluxos e prints das transformações realizadas.

---

✍️ **Autor:** João Barbosa  
📅 **Data:** Outubro de 2025

