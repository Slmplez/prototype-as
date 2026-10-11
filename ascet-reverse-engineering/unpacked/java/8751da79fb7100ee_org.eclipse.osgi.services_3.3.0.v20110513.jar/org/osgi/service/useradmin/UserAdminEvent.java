/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.useradmin;

import org.osgi.framework.ServiceReference;
import org.osgi.service.useradmin.Role;

public class UserAdminEvent {
    private ServiceReference ref;
    private int type;
    private Role role;
    public static final int ROLE_CREATED = 1;
    public static final int ROLE_CHANGED = 2;
    public static final int ROLE_REMOVED = 4;

    public UserAdminEvent(ServiceReference ref, int type, Role role) {
        this.ref = ref;
        this.type = type;
        this.role = role;
    }

    public ServiceReference getServiceReference() {
        return this.ref;
    }

    public int getType() {
        return this.type;
    }

    public Role getRole() {
        return this.role;
    }
}

