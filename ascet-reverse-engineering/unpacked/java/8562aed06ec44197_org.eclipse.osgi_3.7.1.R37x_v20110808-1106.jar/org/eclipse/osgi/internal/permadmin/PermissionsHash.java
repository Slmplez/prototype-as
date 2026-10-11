/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.security.Permission;
import java.security.PermissionCollection;
import java.util.Enumeration;
import java.util.Hashtable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class PermissionsHash
extends PermissionCollection {
    private static final long serialVersionUID = 3258408426341284153L;
    Hashtable<Permission, Permission> perms = new Hashtable(8);

    @Override
    public void add(Permission perm) {
        if (this.isReadOnly()) {
            throw new SecurityException();
        }
        this.perms.put(perm, perm);
    }

    @Override
    public Enumeration<Permission> elements() {
        return this.perms.keys();
    }

    @Override
    public boolean implies(Permission perm) {
        Permission p = this.perms.get(perm);
        if (p != null && p.implies(perm)) {
            return true;
        }
        Enumeration<Permission> permsEnum = this.elements();
        while (permsEnum.hasMoreElements()) {
            if (!permsEnum.nextElement().implies(perm)) continue;
            return true;
        }
        return false;
    }
}

