databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416534758853-1") {
        addColumn(tableName: "empresa") {
            column(name: "bairro", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-2") {
        addColumn(tableName: "empresa") {
            column(name: "cep", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-3") {
        addColumn(tableName: "empresa") {
            column(name: "cidade_id", type: "int8")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-4") {
        addColumn(tableName: "empresa") {
            column(name: "complemento", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-5") {
        addColumn(tableName: "empresa") {
            column(name: "logradouro", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-6") {
        addColumn(tableName: "empresa") {
            column(name: "numero", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-7") {
        modifyDataType(columnName: "cnpj", newDataType: "varchar(14)", tableName: "empresa")
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-8") {
        modifyDataType(columnName: "telefone", newDataType: "varchar(11)", tableName: "empresa")
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-9") {
        dropNotNullConstraint(columnDataType: "varchar(11)", columnName: "telefone", tableName: "empresa")
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-10") {
        dropForeignKeyConstraint(baseTableName: "empresa", baseTableSchemaName: "public", constraintName: "fk9f35408981b8b1c3")
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-12") {
        dropColumn(columnName: "endereco_id", tableName: "empresa")
    }

    changeSet(author: "Luciana (generated)", id: "1416534758853-11") {
        addForeignKeyConstraint(baseColumnNames: "cidade_id", baseTableName: "empresa", constraintName: "FK9F354089EF01C623", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cidade", referencesUniqueColumn: "false")
    }
}
