/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.cm;

import java.security.Permission;
import java.security.PermissionCollection;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.osgi.service.cm.ConfigurationPermission;

final class ConfigurationPermissionCollection
extends PermissionCollection {
    static final long serialVersionUID = -6917638867081695839L;
    private volatile boolean hasElement = false;

    public void add(Permission permission) {
        if (!(permission instanceof ConfigurationPermission)) {
            throw new IllegalArgumentException("invalid permission: " + permission);
        }
        if (this.isReadOnly()) {
            throw new SecurityException("attempt to add a Permission to a readonly PermissionCollection");
        }
        this.hasElement = true;
    }

    public boolean implies(Permission p) {
        return this.hasElement && p instanceof ConfigurationPermission;
    }

    public Enumeration elements() {
        final boolean nonEmpty = this.hasElement;
        return new Enumeration(){
            private boolean more;
            {
                this.more = nonEmpty;
            }

            public boolean hasMoreElements() {
                return this.more;
            }

            public Object nextElement() {
                if (this.more) {
                    this.more = false;
                    return new ConfigurationPermission("*", "configure");
                }
                throw new NoSuchElementException();
            }
        };
    }
}

