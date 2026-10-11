/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.condpermadmin;

import org.osgi.service.condpermadmin.ConditionInfo;
import org.osgi.service.permissionadmin.PermissionInfo;

public interface ConditionalPermissionInfo {
    public static final String ALLOW = "allow";
    public static final String DENY = "deny";

    public ConditionInfo[] getConditionInfos();

    public PermissionInfo[] getPermissionInfos();

    public void delete();

    public String getName();

    public String getAccessDecision();

    public String getEncoded();

    public String toString();

    public boolean equals(Object var1);

    public int hashCode();
}

