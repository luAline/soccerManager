databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1417061876407-1") {
        dropNotNullConstraint(columnDataType: "int8", columnName: "aluno_id", tableName: "time")
    }

    changeSet(author: "Luciana (generated)", id: "1417061876407-2") {
        dropNotNullConstraint(columnDataType: "int8", columnName: "categoria_id", tableName: "time")
    }
}
