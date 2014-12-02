databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1417500474282-1") {
        createTable(tableName: "aluno_historico") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "aluno_historiPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "aluno_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "anotacao", type: "text") {
                constraints(nullable: "false")
            }

            column(name: "data_anotacao", type: "timestamp") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1417500474282-2") {
        addForeignKeyConstraint(baseColumnNames: "aluno_id", baseTableName: "aluno_historico", constraintName: "FK432EB59CA9F76DD1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "aluno", referencesUniqueColumn: "false")
    }
}
