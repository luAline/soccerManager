databaseChangeLog = {

	changeSet(author: "Luciana (generated)", id: "1413927612126-1") {
		createTable(tableName: "usuario") {
			column(name: "id", type: "int8") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "usuarioPK")
			}

			column(name: "version", type: "int8") {
				constraints(nullable: "false")
			}

			column(name: "nome", type: "varchar(255)")

			column(name: "senha", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "usuario", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}
}
