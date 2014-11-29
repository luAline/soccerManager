databaseChangeLog = {

    changeSet(author: "fernando (generated)", id: "1417288131061-1") {
        createTable(tableName: "aluno_mensalidade") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "aluno_mensaliPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "aluno_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "data_pagamento", type: "timestamp") {
                constraints(nullable: "false")
            }

            column(name: "observacao", type: "text")

            column(name: "valor", type: "float8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "fernando (generated)", id: "1417288131061-2") {
        addForeignKeyConstraint(baseColumnNames: "aluno_id", baseTableName: "aluno_mensalidade", constraintName: "FKD9E1B0BA9F76DD1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "aluno", referencesUniqueColumn: "false")
    }
}
