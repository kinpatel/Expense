dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "com.mysql.jdbc.Driver"

}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
    development {
        dataSource {
			username = "root"
			password = "admin"
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost:3306/hero?useUnicode=yes&characterEncoding=UTF-8"
        }
    }
    test {
        dataSource {
			username = "root"
			password = "admin"
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/hero?useUnicode=yes&characterEncoding=UTF-8"
        }
    }
    production {
        dataSource {
			username = "hero"
			password = "password"
            dbCreate = "update"
            url = "jdbc:mysql://aa1efo5dun9n89h.ceaqlaub0jml.us-east-1.rds.amazonaws.com:3306/ebdb?user=hero&password=hero"
			dialect = org.hibernate.dialect.MySQL5InnoDBDialect
            properties {
               // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
			   validationQuery = "SELECT 1"
               jmxEnabled = true
               initialSize = 5
               maxActive = 50
               minIdle = 5
               maxIdle = 25
               maxWait = 10000
               maxAge = 10 * 60000
               timeBetweenEvictionRunsMillis = 5000
               minEvictableIdleTimeMillis = 60000
               validationQuery = "SELECT 1"
               validationQueryTimeout = 3
               validationInterval = 15000
               testOnBorrow = true
               testWhileIdle = true
               testOnReturn = false
               jdbcInterceptors = "ConnectionState"
               defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }
        }
    }
}