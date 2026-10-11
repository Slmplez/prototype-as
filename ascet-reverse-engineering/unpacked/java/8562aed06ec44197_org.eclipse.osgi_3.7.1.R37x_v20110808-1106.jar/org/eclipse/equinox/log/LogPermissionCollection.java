/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log;

import java.security.Permission;
import java.security.PermissionCollection;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.eclipse.equinox.log.LogPermission;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class LogPermissionCollection
extends PermissionCollection {
    private static final long serialVersionUID = -1955409691185916778L;
    LogPermission logPermission;

    @Override
    public void add(Permission permission) {
        if (!(permission instanceof LogPermission)) {
            throw new IllegalArgumentException(new StringBuffer("invalid permission: ").append(permission).toString());
        }
        if (this.isReadOnly()) {
            throw new SecurityException("attempt to add a LogPermission to a readonly LogPermissionCollection");
        }
        if (permission != null) {
            this.logPermission = (LogPermission)permission;
        }
    }

    @Override
    public Enumeration<Permission> elements() {
        return new Enumeration<Permission>(){
            private boolean hasMore;
            {
                this.hasMore = LogPermissionCollection.this.logPermission != null;
            }

            @Override
            public boolean hasMoreElements() {
                return this.hasMore;
            }

            @Override
            public Permission nextElement() {
                if (this.hasMore) {
                    this.hasMore = false;
                    return LogPermissionCollection.this.logPermission;
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override
    public boolean implies(Permission permission) {
        return this.logPermission != null && this.logPermission.implies(permission);
    }
}

