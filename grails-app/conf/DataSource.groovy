/*
dataSource {
    pooled = true
    driverClassName = "org.hsqldb.jdbcDriver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update' , 'validate' 
            url = "jdbc:hsqldb:file:devDb;shutdown=true"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:file:prodDb;shutdown=true"
        }
    }
}
*/

dataSource {
	configClass = GrailsAnnotationConfiguration.class
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password =  "matias"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
	
   
}

hibernate {
 cache.use_second_level_cache = true
 cache.use_query_cache = true
 cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
			//url = "jdbc:hsqldb:file:devDb;shutdown=true"
			url = "jdbc:mysql://localhost/monotributo"		}
	}
		 test {
			 dataSource {
				 dbCreate = "update"
					url = "jdbc:mysql://localhost/monotributoTest1"
			}
		}
		 production {
			 dataSource {
				 dbCreate = "update"
					 url = "jdbc:hsqldb:file:prodDb;shutdown=true"
			 }
		 }
 }
