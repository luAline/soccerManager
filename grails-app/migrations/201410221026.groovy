databaseChangeLog = {

    changeSet(author: "Luciana (generated)", id: "1413980822044-1") {
        createTable(tableName: "empresa") {
            column(name: "id", type: "int8") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "empresaPK")
            }

            column(name: "version", type: "int8") {
                constraints(nullable: "false")
            }

            column(name: "cnpj", type: "int4") {
                constraints(nullable: "false")
            }

            column(name: "email", type: "varchar(255)")

            column(name: "endereco_id", type: "int8")

            column(name: "inscricao_estadual", type: "varchar(255)")

            column(name: "inscricao_municipal", type: "varchar(255)")

            column(name: "nome_fantasia", type: "varchar(255)")

            column(name: "razao_social", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "responsavel", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "site", type: "varchar(255)")

            column(name: "telefone", type: "int4") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Luciana (generated)", id: "1413980822044-2") {
        addForeignKeyConstraint(baseColumnNames: "endereco_id", baseTableName: "empresa", constraintName: "FK9F35408981B8B1C3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "endereco", referencesUniqueColumn: "false")
    }
}
