/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 *  org.eclipse.equinox.p2.planner.IPlanner
 *  org.eclipse.equinox.p2.planner.IProfileChangeRequest
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.net.URI;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.planner.IPlanner;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;

public class DirectorUtil {
    public static IStatus validateProfile(IProfile profile) {
        IPlanner planner = (IPlanner)profile.getProvisioningAgent().getService(IPlanner.SERVICE_NAME);
        IProfileChangeRequest pcr = planner.createChangeRequest(profile);
        ProvisioningContext ctx = new ProvisioningContext(profile.getProvisioningAgent());
        ctx.setMetadataRepositories(new URI[0]);
        return planner.getProvisioningPlan(pcr, ctx, null).getStatus();
    }
}

