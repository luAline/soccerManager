databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416535332988-1") {
        addColumn(tableName: "funcionario") {
            column(name: "bairro", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416535332988-2") {
        addColumn(tableName: "funcionario") {
            column(name: "cep", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416535332988-3") {
        addColumn(tableName: "funcionario") {
            column(name: "cidade_id", type: "int8")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416535332988-4") {
        addColumn(tableName: "funcionario") {
            column(name: "complemento", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416535332988-5") {
        addColumn(tableName: "funcionario") {
            column(name: "logradouro", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416535332988-6") {
        addColumn(tableName: "funcionario") {
            column(name: "numero", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416535332988-7") {
        dropForeignKeyConstraint(baseTableName: "funcionario", baseTableSchemaName: "public", constraintName: "fk50401ddb81b8b1c3")
    }

    changeSet(author: "Luciana (generated)", id: "1416535332988-9") {
        dropColumn(columnName: "endereco_id", tableName: "funcionario")
    }

    changeSet(author: "Luciana (generated)", id: "1416535332988-8") {
        addForeignKeyConstraint(baseColumnNames: "cidade_id", baseTableName: "funcionario", constraintName: "FK50401DDBEF01C623", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cidade", referencesUniqueColumn: "false")
    }
}
