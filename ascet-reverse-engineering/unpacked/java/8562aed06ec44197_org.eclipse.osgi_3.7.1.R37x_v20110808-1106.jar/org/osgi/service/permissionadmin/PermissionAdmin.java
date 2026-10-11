/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.permissionadmin;

import org.osgi.service.permissionadmin.PermissionInfo;

public interface PermissionAdmin {
    public PermissionInfo[] getPermissions(String var1);

    public void setPermissions(String var1, PermissionInfo[] var2);

    public String[] getLocations();

    public PermissionInfo[] getDefaultPermissions();

    public void setDefaultPermissions(PermissionInfo[] var1);
}

