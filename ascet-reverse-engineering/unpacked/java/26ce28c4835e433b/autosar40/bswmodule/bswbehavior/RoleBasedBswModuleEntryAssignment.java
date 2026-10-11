/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswServiceDependency;
import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface RoleBasedBswModuleEntryAssignment
extends ARObject {
    public BswServiceDependency getBswServiceDependency();

    public void setBswServiceDependency(BswServiceDependency var1);

    public BswModuleEntry getAssignedEntry();

    public void setAssignedEntry(BswModuleEntry var1);

    public String getRole();

    public void setRole(String var1);

    public void unsetRole();

    public boolean isSetRole();
}

