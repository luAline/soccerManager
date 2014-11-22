databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1414619411693-1") {
        createTable(tableName: "funcao") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "funcaoPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "ativo", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "nome", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }
}
