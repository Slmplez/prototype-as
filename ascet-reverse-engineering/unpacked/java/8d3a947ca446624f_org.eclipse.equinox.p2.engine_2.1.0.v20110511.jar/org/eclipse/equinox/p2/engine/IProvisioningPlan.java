/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.p2.engine;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProvisioningPlan {
    public IQueryable<IInstallableUnit> getAdditions();

    public ProvisioningContext getContext();

    public IProvisioningPlan getInstallerPlan();

    public IProfile getProfile();

    public IQueryable<IInstallableUnit> getRemovals();

    public IStatus getStatus();

    public void addInstallableUnit(IInstallableUnit var1);

    public void removeInstallableUnit(IInstallableUnit var1);

    public void setInstallableUnitProfileProperty(IInstallableUnit var1, String var2, String var3);

    public void setInstallerPlan(IProvisioningPlan var1);

    public void setProfileProperty(String var1, String var2);

    public void setStatus(IStatus var1);

    public void updateInstallableUnit(IInstallableUnit var1, IInstallableUnit var2);
}

