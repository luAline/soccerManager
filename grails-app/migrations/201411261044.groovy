databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1417006020769-1") {
        createTable(tableName: "semana") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "semanaPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "domingo", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "quarta", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "quinta", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "sabado", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "segunda", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "sexta", type: "bool") {
                constraints(nullable: "false")
            }

            column(name: "terca", type: "bool") {
                constraints(nullable: "false")
            }
        }
    }
}
