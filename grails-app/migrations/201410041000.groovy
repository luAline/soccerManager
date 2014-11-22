databaseChangeLog = {

	changeSet(author: "Luciana (generated)", id: "1412428058242-1") {
		createTable(tableName: "audit_log") {
			column(name: "id", type: "int8") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "audit_logPK")
			}

			column(name: "actor", type: "varchar(255)")

			column(name: "class_name", type: "varchar(255)")

			column(name: "date_created", type: "timestamp") {
				constraints(nullable: "false")
			}

			column(name: "event_name", type: "varchar(255)")

			column(name: "last_updated", type: "timestamp") {
				constraints(nullable: "false")
			}

			column(name: "new_value", type: "varchar(255)")

			column(name: "old_value", type: "varchar(255)")

			column(name: "persisted_object_id", type: "varchar(255)")

			column(name: "persisted_object_version", type: "int8")

			column(name: "property_name", type: "varchar(255)")

			column(name: "uri", type: "varchar(255)")
		}
	}

	changeSet(author: "Luciana (generated)", id: "1412428058242-2") {
		createTable(tableName: "pais") {
			column(name: "id", type: "int8") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "paisPK")
			}

			column(name: "version", type: "int8") {
				constraints(nullable: "false")
			}

			column(name: "nome", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "Luciana (generated)", id: "1412428058242-3") {
		createSequence(sequenceName: "hibernate_sequence")
	}
}
