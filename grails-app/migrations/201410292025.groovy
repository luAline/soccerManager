databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1414621697116-1") {
        createTable(tableName: "foto") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "fotoPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "caminho", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "nome", type: "varchar(255)")
        }
    }
}
