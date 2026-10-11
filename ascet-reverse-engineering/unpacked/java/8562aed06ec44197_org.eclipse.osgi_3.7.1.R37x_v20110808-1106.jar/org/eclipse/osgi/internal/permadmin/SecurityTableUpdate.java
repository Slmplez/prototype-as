/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.osgi.internal.permadmin.SecurityAdmin;
import org.eclipse.osgi.internal.permadmin.SecurityRow;
import org.eclipse.osgi.internal.permadmin.SecurityRowSnapShot;
import org.osgi.service.condpermadmin.ConditionalPermissionInfo;
import org.osgi.service.condpermadmin.ConditionalPermissionUpdate;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SecurityTableUpdate
implements ConditionalPermissionUpdate {
    private final SecurityAdmin securityAdmin;
    private final List<ConditionalPermissionInfo> rows;
    private final long timeStamp;

    public SecurityTableUpdate(SecurityAdmin securityAdmin, SecurityRow[] rows, long timeStamp) {
        this.securityAdmin = securityAdmin;
        this.timeStamp = timeStamp;
        this.rows = new ArrayList<ConditionalPermissionInfo>(rows.length);
        int i = 0;
        while (i < rows.length) {
            this.rows.add(new SecurityRowSnapShot(rows[i].getName(), rows[i].internalGetConditionInfos(), rows[i].internalGetPermissionInfos(), rows[i].getAccessDecision()));
            ++i;
        }
    }

    @Override
    public boolean commit() {
        return this.securityAdmin.commit(this.rows, this.timeStamp);
    }

    @Override
    public List<ConditionalPermissionInfo> getConditionalPermissionInfos() {
        return this.rows;
    }
}

