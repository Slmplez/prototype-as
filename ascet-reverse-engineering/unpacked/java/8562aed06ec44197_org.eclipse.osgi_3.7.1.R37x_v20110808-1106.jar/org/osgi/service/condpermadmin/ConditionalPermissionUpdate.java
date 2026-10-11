/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.condpermadmin;

import java.util.List;
import org.osgi.service.condpermadmin.ConditionalPermissionInfo;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ConditionalPermissionUpdate {
    public List<ConditionalPermissionInfo> getConditionalPermissionInfos();

    public boolean commit();
}

