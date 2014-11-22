databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1413979454996-1") {
        createTable(tableName: "local") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "localPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "endereco_id", type: "int8")

            column(name: "nome", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "observacao", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1413979454996-2") {
        addForeignKeyConstraint(baseColumnNames: "endereco_id", baseTableName: "local", constraintName: "FK625DF6B81B8B1C3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "endereco", referencesUniqueColumn: "false")
    }
}
