databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416443778415-1") {
        createTable(tableName: "competicao") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "competicaoPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "jogo_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "local_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "observacao", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "quantidade_jogo", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "transporte", type: "varchar(255)")

            column(name: "valor_transporte", type: "float8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416443778415-2") {
        addForeignKeyConstraint(baseColumnNames: "jogo_id", baseTableName: "competicao", constraintName: "FKD49A3FC6177DABC3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "jogo", referencesUniqueColumn: "false")
    }

    changeSet(author: "Luciana (generated)", id: "1416443778415-3") {
        addForeignKeyConstraint(baseColumnNames: "local_id", baseTableName: "competicao", constraintName: "FKD49A3FC6A0835DD1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "local", referencesUniqueColumn: "false")
    }
}
