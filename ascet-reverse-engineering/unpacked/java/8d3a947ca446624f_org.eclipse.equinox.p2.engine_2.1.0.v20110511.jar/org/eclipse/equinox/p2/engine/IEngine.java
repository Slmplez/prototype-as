/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.equinox.p2.engine;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.engine.IPhaseSet;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.ProvisioningContext;

public interface IEngine {
    public static final String SERVICE_NAME;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.engine.IEngine");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public IProvisioningPlan createPlan(IProfile var1, ProvisioningContext var2);

    public IStatus perform(IProvisioningPlan var1, IPhaseSet var2, IProgressMonitor var3);

    public IStatus perform(IProvisioningPlan var1, IProgressMonitor var2);
}

