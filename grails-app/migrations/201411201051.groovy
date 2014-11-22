databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416488026893-1") {
        addColumn(tableName: "local") {
            column(name: "bairro", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416488026893-2") {
        addColumn(tableName: "local") {
            column(name: "cidade_id", type: "int8")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416488026893-3") {
        addColumn(tableName: "local") {
            column(name: "complemento", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416488026893-4") {
        addColumn(tableName: "local") {
            column(name: "logradouro", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416488026893-5") {
        addColumn(tableName: "local") {
            column(name: "numero", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416488026893-6") {
        dropForeignKeyConstraint(baseTableName: "local", baseTableSchemaName: "public", constraintName: "fk625df6b81b8b1c3")
    }

    changeSet(author: "Luciana (generated)", id: "1416488026893-8") {
        dropColumn(columnName: "endereco_id", tableName: "local")
    }

    changeSet(author: "Luciana (generated)", id: "1416488026893-7") {
        addForeignKeyConstraint(baseColumnNames: "cidade_id", baseTableName: "local", constraintName: "FK625DF6BEF01C623", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cidade", referencesUniqueColumn: "false")
    }
}
