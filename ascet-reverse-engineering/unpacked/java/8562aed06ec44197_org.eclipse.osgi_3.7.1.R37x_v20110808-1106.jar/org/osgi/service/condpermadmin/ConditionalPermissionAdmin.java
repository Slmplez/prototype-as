/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.condpermadmin;

import java.security.AccessControlContext;
import java.util.Enumeration;
import org.osgi.service.condpermadmin.ConditionInfo;
import org.osgi.service.condpermadmin.ConditionalPermissionInfo;
import org.osgi.service.condpermadmin.ConditionalPermissionUpdate;
import org.osgi.service.permissionadmin.PermissionInfo;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ConditionalPermissionAdmin {
    public ConditionalPermissionInfo addConditionalPermissionInfo(ConditionInfo[] var1, PermissionInfo[] var2);

    public ConditionalPermissionInfo setConditionalPermissionInfo(String var1, ConditionInfo[] var2, PermissionInfo[] var3);

    public Enumeration<ConditionalPermissionInfo> getConditionalPermissionInfos();

    public ConditionalPermissionInfo getConditionalPermissionInfo(String var1);

    public AccessControlContext getAccessControlContext(String[] var1);

    public ConditionalPermissionUpdate newConditionalPermissionUpdate();

    public ConditionalPermissionInfo newConditionalPermissionInfo(String var1, ConditionInfo[] var2, PermissionInfo[] var3, String var4);

    public ConditionalPermissionInfo newConditionalPermissionInfo(String var1);
}

