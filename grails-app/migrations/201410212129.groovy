databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1413934278050-1") {
        createTable(tableName: "estado") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "estadoPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "nome", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "pais_id", type: "int8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1413934278050-2") {
        addForeignKeyConstraint(baseColumnNames: "pais_id", baseTableName: "estado", constraintName: "FKB2E439663D1FBD03", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "pais", referencesUniqueColumn: "false")
    }
}
