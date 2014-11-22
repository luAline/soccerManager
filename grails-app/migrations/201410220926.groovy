databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1413977210009-1") {
        createTable(tableName: "cidade") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "cidadePK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "estado_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "nome", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1413977210009-2") {
        addForeignKeyConstraint(baseColumnNames: "estado_id", baseTableName: "cidade", constraintName: "FKAEE6572478BC86E3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "estado", referencesUniqueColumn: "false")
    }
}
