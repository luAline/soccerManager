databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1417308996454-1") {
        createTable(tableName: "jogo_sumula") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "jogo_sumulaPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "aluno_id", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "cartao", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "faltas", type: "int4")

            column(name: "gol", type: "int4")

            column(name: "time_id", type: "int8") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1417308996454-4") {
        dropColumn(columnName: "cartao", tableName: "jogo")
    }

    changeSet(author: "Luciana (generated)", id: "1417308996454-5") {
        dropColumn(columnName: "falta", tableName: "jogo")
    }

    changeSet(author: "Luciana (generated)", id: "1417308996454-6") {
        dropColumn(columnName: "gol", tableName: "jogo")
    }

    changeSet(author: "Luciana (generated)", id: "1417308996454-2") {
        addForeignKeyConstraint(baseColumnNames: "aluno_id", baseTableName: "jogo_sumula", constraintName: "FKB1068A11A9F76DD1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "aluno", referencesUniqueColumn: "false")
    }

    changeSet(author: "Luciana (generated)", id: "1417308996454-3") {
        addForeignKeyConstraint(baseColumnNames: "time_id", baseTableName: "jogo_sumula", constraintName: "FKB1068A111E935FC3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "time", referencesUniqueColumn: "false")
    }
}
