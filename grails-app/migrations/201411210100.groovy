databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416538987922-1") {
        addColumn(tableName: "jogo") {
            column(name: "categoria_id", type: "int8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416538987922-2") {
        addColumn(tableName: "jogo") {
            column(name: "local_id", type: "int8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416538987922-3") {
        addForeignKeyConstraint(baseColumnNames: "categoria_id", baseTableName: "jogo", constraintName: "FK31DCEDED5FD551", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "categoria", referencesUniqueColumn: "false")
    }

    changeSet(author: "Luciana (generated)", id: "1416538987922-4") {
        addForeignKeyConstraint(baseColumnNames: "local_id", baseTableName: "jogo", constraintName: "FK31DCEDA0835DD1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "local", referencesUniqueColumn: "false")
    }
}
