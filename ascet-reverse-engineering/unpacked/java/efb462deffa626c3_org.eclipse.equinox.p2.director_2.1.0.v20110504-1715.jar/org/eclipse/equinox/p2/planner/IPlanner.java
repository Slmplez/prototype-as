/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProvisioningPlan
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.IQueryResult
 */
package org.eclipse.equinox.p2.planner;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPlanner {
    public static final String SERVICE_NAME;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.planner.IPlanner");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public IProvisioningPlan getProvisioningPlan(IProfileChangeRequest var1, ProvisioningContext var2, IProgressMonitor var3);

    public IProvisioningPlan getDiffPlan(IProfile var1, IProfile var2, IProgressMonitor var3);

    public IProfileChangeRequest createChangeRequest(IProfile var1);

    public IQueryResult<IInstallableUnit> updatesFor(IInstallableUnit var1, ProvisioningContext var2, IProgressMonitor var3);
}

