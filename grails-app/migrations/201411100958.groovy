databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1415621120868-1") {
        createTable(tableName: "aluno") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "alunoPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "cpf", type: "varchar(255)")

            column(name: "rg", type: "varchar(255)")

            column(name: "alergia", type: "varchar(255)")

            column(name: "altura", type: "float8") {
                constraints(nullable: "false")
            }

            column(name: "ativo", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "categoria_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "data_cadastro", type: "timestamp") {
                constraints(nullable: "false")
            }

            column(name: "data_nascimento", type: "timestamp") {
                constraints(nullable: "false")
            }

            column(name: "deficiencia", type: "varchar(255)")

            column(name: "dia_semana", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "endereco_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "idade", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "imc", type: "float8") {
                constraints(nullable: "false")
            }

            column(name: "matricula", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "nome", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "observacao", type: "varchar(255)")

            column(name: "parentesco", type: "varchar(255)")

            column(name: "peso", type: "float8") {
                constraints(nullable: "false")
            }

            column(name: "pressao_arterial", type: "varchar(255)")

            column(name: "responsavel", type: "varchar(255)")

            column(name: "responsavelcpf", type: "varchar(255)")

            column(name: "responsavelrg", type: "varchar(255)")

            column(name: "sexo", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "telefone", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "valor_mensalidade", type: "float8") {
                constraints(nullable: "false")
            }

            column(name: "vencimento_mensalidade", type: "timestamp")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1415621120868-2") {
        addForeignKeyConstraint(baseColumnNames: "categoria_id", baseTableName: "aluno", constraintName: "FK589C4EBED5FD551", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "categoria", referencesUniqueColumn: "false")
    }

    changeSet(author: "Luciana (generated)", id: "1415621120868-3") {
        addForeignKeyConstraint(baseColumnNames: "endereco_id", baseTableName: "aluno", constraintName: "FK589C4EB81B8B1C3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "endereco", referencesUniqueColumn: "false")
    }
}
