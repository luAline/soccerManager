databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1415617092265-1") {
        createTable(tableName: "funcionario") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "funcionarioPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "cpf", type: "varchar(255)")

            column(name: "rg", type: "varchar(255)")

            column(name: "agencia", type: "varchar(255)")

            column(name: "ativo", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "banco", type: "varchar(255)")

            column(name: "conta", type: "varchar(255)")

            column(name: "data_cadastro", type: "timestamp") {
                constraints(nullable: "false")
            }

            column(name: "data_nascimento", type: "timestamp") {
                constraints(nullable: "false")
            }

            column(name: "endereco_id", type: "int8")

            column(name: "funcao_id", type: "int8")

            column(name: "idade", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "nome", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "observacao", type: "text")

            column(name: "sexo", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "telefone", type: "varchar(255)")

            column(name: "valor_salario", type: "float8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1415617092265-2") {
        addForeignKeyConstraint(baseColumnNames: "endereco_id", baseTableName: "funcionario", constraintName: "FK50401DDB81B8B1C3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "endereco", referencesUniqueColumn: "false")
    }

    changeSet(author: "Luciana (generated)", id: "1415617092265-3") {
        addForeignKeyConstraint(baseColumnNames: "funcao_id", baseTableName: "funcionario", constraintName: "FK50401DDBA46BAB63", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "funcao", referencesUniqueColumn: "false")
    }
}
