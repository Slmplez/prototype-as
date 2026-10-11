/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log;

import java.security.Permission;
import java.security.PermissionCollection;
import org.eclipse.equinox.log.LogPermissionCollection;

public class LogPermission
extends Permission {
    private static final long serialVersionUID = -441193976837153362L;
    private static final String ALL = "*";
    public static final String LOG = "log";
    static /* synthetic */ Class class$0;

    public LogPermission(String name, String actions) {
        super(name);
        if (!name.equals(ALL)) {
            throw new IllegalArgumentException("name must be *");
        }
        if (!(actions = actions.trim()).equalsIgnoreCase(LOG) && !actions.equals(ALL)) {
            throw new IllegalArgumentException("actions must be * or log");
        }
    }

    public boolean equals(Object obj) {
        return obj instanceof LogPermission;
    }

    public String getActions() {
        return LOG;
    }

    public int hashCode() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.log.LogPermission");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz.hashCode();
    }

    public boolean implies(Permission permission) {
        return permission instanceof LogPermission;
    }

    public PermissionCollection newPermissionCollection() {
        return new LogPermissionCollection();
    }
}

