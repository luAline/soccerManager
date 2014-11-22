databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416519755102-1") {
        addColumn(tableName: "aluno") {
            column(name: "bairro", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-2") {
        addColumn(tableName: "aluno") {
            column(name: "cep", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-3") {
        addColumn(tableName: "aluno") {
            column(name: "cidade_id", type: "int8")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-4") {
        addColumn(tableName: "aluno") {
            column(name: "complemento", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-5") {
        addColumn(tableName: "aluno") {
            column(name: "logradouro", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-6") {
        addColumn(tableName: "aluno") {
            column(name: "numero", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-7") {
        addColumn(tableName: "local") {
            column(name: "cep", type: "varchar(255)")
        }
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-8") {
        dropForeignKeyConstraint(baseTableName: "aluno", baseTableSchemaName: "public", constraintName: "fk589c4eb81b8b1c3")
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-10") {
        dropColumn(columnName: "endereco_id", tableName: "aluno")
    }

    changeSet(author: "Luciana (generated)", id: "1416519755102-9") {
        addForeignKeyConstraint(baseColumnNames: "cidade_id", baseTableName: "aluno", constraintName: "FK589C4EBEF01C623", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cidade", referencesUniqueColumn: "false")
    }
}
