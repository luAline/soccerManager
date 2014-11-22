databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416402659691-1") {
        createTable(tableName: "jogo") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "jogoPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "adversario", type: "varchar(255)")

            column(name: "cartao", type: "varchar(255)")

            column(name: "data_jogo", type: "timestamp") {
                constraints(nullable: "false")
            }

            column(name: "descricao", type: "varchar(255)")

            column(name: "falta", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "gol", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "time_id", type: "int8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416402659691-2") {
        addForeignKeyConstraint(baseColumnNames: "time_id", baseTableName: "jogo", constraintName: "FK31DCED1E935FC3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "time", referencesUniqueColumn: "false")
    }
}
