/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 */
package org.eclipse.equinox.internal.provisional.p2.director;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;

public interface IDirector {
    public static final String SERVICE_NAME;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.internal.provisional.p2.director.IDirector");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public IStatus provision(IProfileChangeRequest var1, ProvisioningContext var2, IProgressMonitor var3);

    public IStatus revert(IProfile var1, IProfile var2, ProvisioningContext var3, IProgressMonitor var4);
}

