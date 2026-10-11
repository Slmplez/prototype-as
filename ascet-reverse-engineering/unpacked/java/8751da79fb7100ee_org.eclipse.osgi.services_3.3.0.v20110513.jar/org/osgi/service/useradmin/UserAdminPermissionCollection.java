/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.useradmin;

import java.security.Permission;
import java.security.PermissionCollection;
import java.util.Enumeration;
import java.util.Hashtable;
import org.osgi.service.useradmin.UserAdminPermission;

final class UserAdminPermissionCollection
extends PermissionCollection {
    static final long serialVersionUID = -7222111885230120581L;
    private final Hashtable permissions = new Hashtable();
    private boolean all_allowed = false;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void add(Permission permission) {
        if (!(permission instanceof UserAdminPermission)) {
            throw new IllegalArgumentException("Invalid permission: " + permission);
        }
        if (this.isReadOnly()) {
            throw new SecurityException("Attempt to add a Permission to a readonly PermissionCollection");
        }
        UserAdminPermission uap = (UserAdminPermission)permission;
        String name = uap.getName();
        UserAdminPermissionCollection userAdminPermissionCollection = this;
        synchronized (userAdminPermissionCollection) {
            UserAdminPermission existing = (UserAdminPermission)this.permissions.get(name);
            if (existing != null) {
                int newMask;
                int oldMask = existing.getActionsMask();
                if (oldMask != (newMask = uap.getActionsMask())) {
                    this.permissions.put(name, new UserAdminPermission(name, oldMask | newMask));
                }
            } else {
                this.permissions.put(name, uap);
            }
            if (!this.all_allowed && name.equals("*")) {
                this.all_allowed = true;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean implies(Permission permission) {
        int last;
        UserAdminPermission x;
        if (!(permission instanceof UserAdminPermission)) {
            return false;
        }
        UserAdminPermission requested = (UserAdminPermission)permission;
        String name = requested.getName();
        int desired = requested.getActionsMask();
        int effective = 0;
        UserAdminPermissionCollection userAdminPermissionCollection = this;
        synchronized (userAdminPermissionCollection) {
            if (this.all_allowed && desired != 0 && (x = (UserAdminPermission)this.permissions.get("*")) != null && ((effective |= x.getActionsMask()) & desired) == desired) {
                return true;
            }
            x = (UserAdminPermission)this.permissions.get(name);
        }
        if (x != null && ((effective |= x.getActionsMask()) & desired) == desired) {
            return true;
        }
        int offset = name.length() - 1;
        while ((last = name.lastIndexOf(".", offset)) != -1) {
            name = name.substring(0, last + 1) + "*";
            UserAdminPermissionCollection userAdminPermissionCollection2 = this;
            synchronized (userAdminPermissionCollection2) {
                x = (UserAdminPermission)this.permissions.get(name);
            }
            if (x != null && ((effective |= x.getActionsMask()) & desired) == desired) {
                return true;
            }
            offset = last - 1;
        }
        return false;
    }

    public Enumeration elements() {
        return this.permissions.elements();
    }
}

