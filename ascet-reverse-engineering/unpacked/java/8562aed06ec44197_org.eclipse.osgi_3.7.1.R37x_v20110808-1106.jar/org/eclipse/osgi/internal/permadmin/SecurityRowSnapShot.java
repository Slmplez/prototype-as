/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import org.eclipse.osgi.internal.permadmin.SecurityRow;
import org.osgi.service.condpermadmin.ConditionInfo;
import org.osgi.service.condpermadmin.ConditionalPermissionInfo;
import org.osgi.service.permissionadmin.PermissionInfo;

public class SecurityRowSnapShot
implements ConditionalPermissionInfo {
    private final String name;
    private final ConditionInfo[] conditionInfos;
    private final PermissionInfo[] permissionInfos;
    private final String decision;

    public SecurityRowSnapShot(String name, ConditionInfo[] conditionInfos, PermissionInfo[] permissionInfos, String decision) {
        boolean a;
        if (permissionInfos == null || permissionInfos.length == 0) {
            throw new IllegalArgumentException("It is invalid to have empty permissionInfos");
        }
        boolean d = "deny".equals(decision = decision.toLowerCase());
        if (!(d | (a = "allow".equals(decision)))) {
            throw new IllegalArgumentException("Invalid decision: " + decision);
        }
        conditionInfos = conditionInfos == null ? new ConditionInfo[]{} : conditionInfos;
        this.name = name;
        this.conditionInfos = (ConditionInfo[])SecurityRow.cloneArray(conditionInfos);
        this.permissionInfos = (PermissionInfo[])SecurityRow.cloneArray(permissionInfos);
        this.decision = decision;
    }

    public ConditionInfo[] getConditionInfos() {
        return (ConditionInfo[])SecurityRow.cloneArray(this.conditionInfos);
    }

    public String getAccessDecision() {
        return this.decision;
    }

    public String getName() {
        return this.name;
    }

    public PermissionInfo[] getPermissionInfos() {
        return (PermissionInfo[])SecurityRow.cloneArray(this.permissionInfos);
    }

    public void delete() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.getEncoded();
    }

    public String getEncoded() {
        return SecurityRow.getEncoded(this.name, this.conditionInfos, this.permissionInfos, "deny".equalsIgnoreCase(this.decision));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConditionalPermissionInfo)) {
            return false;
        }
        return this.getEncoded().equals(((ConditionalPermissionInfo)obj).getEncoded());
    }

    public int hashCode() {
        return SecurityRow.getHashCode(this.name, this.conditionInfos, this.permissionInfos, this.getAccessDecision());
    }
}

