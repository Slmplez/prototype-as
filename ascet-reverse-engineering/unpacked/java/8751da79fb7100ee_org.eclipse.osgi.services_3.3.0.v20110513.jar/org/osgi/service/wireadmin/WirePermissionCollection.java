/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.wireadmin;

import java.security.Permission;
import java.security.PermissionCollection;
import java.util.Enumeration;
import java.util.Hashtable;
import org.osgi.service.wireadmin.WirePermission;

final class WirePermissionCollection
extends PermissionCollection {
    static final long serialVersionUID = 2617521094909826016L;
    private final Hashtable permissions = new Hashtable();
    private boolean all_allowed = false;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void add(Permission permission) {
        if (!(permission instanceof WirePermission)) {
            throw new IllegalArgumentException("invalid permission: " + permission);
        }
        if (this.isReadOnly()) {
            throw new SecurityException("attempt to add a Permission to a readonly PermissionCollection");
        }
        WirePermission wp = (WirePermission)permission;
        String name = wp.getName();
        WirePermissionCollection wirePermissionCollection = this;
        synchronized (wirePermissionCollection) {
            WirePermission existing = (WirePermission)this.permissions.get(name);
            if (existing != null) {
                int newMask;
                int oldMask = existing.getActionsMask();
                if (oldMask != (newMask = wp.getActionsMask())) {
                    this.permissions.put(name, new WirePermission(name, oldMask | newMask));
                }
            } else {
                this.permissions.put(name, wp);
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
        WirePermission x;
        if (!(permission instanceof WirePermission)) {
            return false;
        }
        WirePermission requested = (WirePermission)permission;
        int desired = requested.getActionsMask();
        int effective = 0;
        String name = requested.getName();
        WirePermissionCollection wirePermissionCollection = this;
        synchronized (wirePermissionCollection) {
            if (this.all_allowed && (x = (WirePermission)this.permissions.get("*")) != null && ((effective |= x.getActionsMask()) & desired) == desired) {
                return true;
            }
            x = (WirePermission)this.permissions.get(name);
        }
        if (x != null && ((effective |= x.getActionsMask()) & desired) == desired) {
            return true;
        }
        int offset = name.length() - 1;
        while ((last = name.lastIndexOf(".", offset)) != -1) {
            name = name.substring(0, last + 1) + "*";
            WirePermissionCollection wirePermissionCollection2 = this;
            synchronized (wirePermissionCollection2) {
                x = (WirePermission)this.permissions.get(name);
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

