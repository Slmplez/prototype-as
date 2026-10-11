/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.cm;

import java.security.BasicPermission;
import java.security.Permission;
import java.security.PermissionCollection;
import org.osgi.service.cm.ConfigurationPermissionCollection;

public final class ConfigurationPermission
extends BasicPermission {
    static final long serialVersionUID = 5716868734811965383L;
    public static final String CONFIGURE = "configure";

    public ConfigurationPermission(String name, String actions) {
        super(name);
        if (!name.equals("*")) {
            throw new IllegalArgumentException("name must be *");
        }
        if ((actions = actions.trim()).equalsIgnoreCase(CONFIGURE) || actions.equals("*")) {
            return;
        }
        throw new IllegalArgumentException("actions must be configure");
    }

    public boolean implies(Permission p) {
        return p instanceof ConfigurationPermission;
    }

    public boolean equals(Object obj) {
        return obj instanceof ConfigurationPermission;
    }

    public int hashCode() {
        int h = 527 + this.getName().hashCode();
        h = 31 * h + this.getActions().hashCode();
        return h;
    }

    public String getActions() {
        return CONFIGURE;
    }

    public PermissionCollection newPermissionCollection() {
        return new ConfigurationPermissionCollection();
    }
}

