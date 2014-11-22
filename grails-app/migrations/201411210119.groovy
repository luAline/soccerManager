databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416540112899-1") {
        dropForeignKeyConstraint(baseTableName: "competicao", baseTableSchemaName: "public", constraintName: "fkd49a3fc6177dabc3")
    }

    changeSet(author: "Luciana (generated)", id: "1416540112899-2") {
        dropForeignKeyConstraint(baseTableName: "competicao", baseTableSchemaName: "public", constraintName: "fkd49a3fc6a0835dd1")
    }

    changeSet(author: "Luciana (generated)", id: "1416540112899-3") {
        dropForeignKeyConstraint(baseTableName: "endereco", baseTableSchemaName: "public", constraintName: "fk672d67c9ef01c623")
    }

    changeSet(author: "Luciana (generated)", id: "1416540112899-4") {
        dropTable(tableName: "competicao")
    }

    changeSet(author: "Luciana (generated)", id: "1416540112899-5") {
        dropTable(tableName: "endereco")
    }
}
