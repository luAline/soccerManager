databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1414619982292-1") {
        createTable(tableName: "categoria") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "categoriaPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "idade_maxima", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "idade_minima", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "nome", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }


}
