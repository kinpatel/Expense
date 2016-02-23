package org.codehaus.groovy.grails.plugins.orm.auditable

import grails.util.Holders

/**
 * AuditLogEvents are reported to the AuditLog table.
 * This requires you to set up a table or allow
 * Grails to create a table for you.
 */
class AuditLogEvent implements Serializable {
    private static final long serialVersionUID = 1L

    static auditable = false

    Date dateCreated
    Date lastUpdated

    String actor
    String uri
    String className
    String persistedObjectId
    Long persistedObjectVersion = 0

    String eventName
    String propertyName
    String oldValue
    String newValue

    static constraints = {
        actor(nullable: true)
        uri(nullable: true)
        className(nullable: true)
        persistedObjectId(nullable: true)
        persistedObjectVersion(nullable: true)
        eventName(nullable: true)
        propertyName(nullable: true)

        if(Holders.config.auditLog.largeValueColumnTypes) {
            oldValue(nullable: true, maxSize: 65534)
            newValue(nullable: true, maxSize: 65534)
        }
        else {
            oldValue(nullable: true)
            newValue(nullable: true)
        }
    }

    static mapping = {
        // GPAUDITLOGGING-30
        table Holders.config.auditLog.tablename ?: 'audit_log'

        // Disable caching by setting auditLog.cacheDisabled = true in your app's Config.groovy
        if (!Holders.config.auditLog.cacheDisabled) {
            cache usage: 'read-only', include: 'non-lazy'
        }

        version false
    }

    /**
     * A very Groovy de-serializer that maps a stored map onto the object
     * assuming that the keys match attribute properties.
     */
    private void readObject(ObjectInputStream input) throws IOException, ClassNotFoundException {
        def map = input.readObject()
        map.each { k, v -> this."$k" = v }
    }

    /**
     * Because Closures do not serialize we can't send the constraints closure
     * to the Serialize API so we have to have a custom serializer to allow for
     * this object to show up inside a webFlow context.
     */
    private void writeObject(ObjectOutputStream out) throws IOException {
        def map = [
                id: id,
                dateCreated: dateCreated,
                lastUpdated: lastUpdated,

                actor: actor,
                uri: uri,
                className: className,
                persistedObjectId: persistedObjectId,
                persistedObjectVersion: persistedObjectVersion,

                eventName: eventName,
                propertyName: propertyName,
                oldValue: oldValue,
                newValue: newValue,
        ]
        out.writeObject(map)
    }

    String toString() {
        String actorStr = actor ? "user ${actor}" : "user ?"
        "audit log ${dateCreated} ${actorStr} " +
                "${eventName} ${className} " +
                "id:${persistedObjectId} version:${persistedObjectVersion}"
    }
}
