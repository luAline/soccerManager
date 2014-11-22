databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1413977842844-1") {
        createTable(tableName: "endereco") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "enderecoPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "bairro", type: "varchar(255)")

            column(name: "cidade_id", type: "int8")

            column(name: "complemento", type: "varchar(255)")

            column(name: "logradouro", type: "varchar(255)")

            column(name: "numero", type: "int4") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1413977842844-2") {
        addForeignKeyConstraint(baseColumnNames: "cidade_id", baseTableName: "endereco", constraintName: "FK672D67C9EF01C623", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cidade", referencesUniqueColumn: "false")
    }
}
