databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416401451996-1") {
        createTable(tableName: "time") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "timePK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "aluno_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "categoria_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "numero_camisa", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "observacao", type: "text")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416401451996-4") {
        dropTable(tableName: "dias_semana")
    }

    changeSet(author: "Luciana (generated)", id: "1416401451996-2") {
        addForeignKeyConstraint(baseColumnNames: "aluno_id", baseTableName: "time", constraintName: "FK3652CDA9F76DD1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "aluno", referencesUniqueColumn: "false")
    }

    changeSet(author: "Luciana (generated)", id: "1416401451996-3") {
        addForeignKeyConstraint(baseColumnNames: "categoria_id", baseTableName: "time", constraintName: "FK3652CDED5FD551", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "categoria", referencesUniqueColumn: "false")
    }
}
