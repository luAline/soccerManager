databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1417365447007-1") {
        createTable(tableName: "calendario") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "calendarioPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "data_final", type: "timestamp")

            column(name: "data_inicial", type: "timestamp")

            column(name: "descricao", type: "varchar(255)")

            column(name: "local_id", type: "int8")

            column(name: "titulo", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1417365447007-2") {
        addForeignKeyConstraint(baseColumnNames: "local_id", baseTableName: "calendario", constraintName: "FK198D30E4A0835DD1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "local", referencesUniqueColumn: "false")
    }
}
