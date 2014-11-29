dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "org.postgresql.Driver"
    dialect = TableNameSequencePostgresDialect
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "none" // one of 'create', 'create-drop','update'
            url = "jdbc:postgresql://127.0.0.1:5432/soccerManager"
            username = "postgres"
            password = "@novi#"
        }
    }
    test {
        dataSource {
            dbCreate = "none" // one of 'create', 'create-drop','update'
            url = "jdbc:postgresql://127.0.0.1:5432/soccerManager"
            username = "postgres"
            password = "luciana"
        }
    }
    production {
        dataSource {
            pooled = false
            jndiName = "java:/SoccerManager"
        }
    }
}