databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1416884589502-1") {
        addColumn(tableName: "aluno") {
            column(name: "vencimento_mensalidade", type: "int4") {
                constraints(nullable: "false")
            }
        }
    }
}
