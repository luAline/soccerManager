databaseChangeLog = {

    changeSet(author: "fernando (generated)", id: "1417281074252-1") {
        createTable(tableName: "time_aluno") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "time_alunoPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "aluno_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "numero_camisa", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "time_id", type: "int8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "fernando (generated)", id: "1417281074252-2") {
        dropForeignKeyConstraint(baseTableName: "time", baseTableSchemaName: "public", constraintName: "fk3652cda9f76dd1")
    }

    changeSet(author: "fernando (generated)", id: "1417281074252-5") {
        dropColumn(columnName: "aluno_id", tableName: "time")
    }

    changeSet(author: "fernando (generated)", id: "1417281074252-6") {
        dropColumn(columnName: "numero_camisa", tableName: "time")
    }

    changeSet(author: "fernando (generated)", id: "1417281074252-3") {
        addForeignKeyConstraint(baseColumnNames: "aluno_id", baseTableName: "time_aluno", constraintName: "FK42B46CF9A9F76DD1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "aluno", referencesUniqueColumn: "false")
    }

    changeSet(author: "fernando (generated)", id: "1417281074252-4") {
        addForeignKeyConstraint(baseColumnNames: "time_id", baseTableName: "time_aluno", constraintName: "FK42B46CF91E935FC3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "time", referencesUniqueColumn: "false")
    }
}
