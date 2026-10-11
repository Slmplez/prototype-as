/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.p2.engine.IEngine
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProvisioningPlan
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.director;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.director.Messages;
import org.eclipse.equinox.internal.p2.director.ProfileChangeRequest;
import org.eclipse.equinox.internal.provisional.p2.director.IDirector;
import org.eclipse.equinox.internal.provisional.p2.director.PlanExecutionHelper;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.planner.IPlanner;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;
import org.eclipse.osgi.util.NLS;

public class SimpleDirector
implements IDirector {
    static final int PlanWork = 10;
    static final int EngineWork = 100;
    private IEngine engine;
    private IPlanner planner;

    public SimpleDirector(IEngine engine, IPlanner planner) {
        if (engine == null) {
            throw new IllegalStateException("Provisioning engine is not registered");
        }
        this.engine = engine;
        if (planner == null) {
            throw new IllegalStateException("Unable to find provisioning planner");
        }
        this.planner = planner;
    }

    public IStatus revert(IProfile currentProfile, IProfile revertProfile, ProvisioningContext context, IProgressMonitor monitor) {
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.Director_Task_Updating, (int)110);
        try {
            IProvisioningPlan plan = this.planner.getDiffPlan(currentProfile, revertProfile, (IProgressMonitor)sub.newChild(10));
            IStatus iStatus = PlanExecutionHelper.executePlan(plan, this.engine, context, (IProgressMonitor)sub.newChild(100));
            return iStatus;
        }
        finally {
            sub.done();
        }
    }

    public IStatus provision(IProfileChangeRequest request, ProvisioningContext context, IProgressMonitor monitor) {
        String taskName = NLS.bind((String)Messages.Director_Task_Installing, (Object)((ProfileChangeRequest)request).getProfile().getProperty("org.eclipse.equinox.p2.installFolder"));
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (String)taskName, (int)110);
        try {
            Collection<IInstallableUnit> installRoots = request.getAdditions();
            Iterator<IInstallableUnit> iterator = installRoots.iterator();
            while (iterator.hasNext()) {
                IInstallableUnit root = iterator.next();
                request.setInstallableUnitProfileProperty(root, "org.eclipse.equinox.p2.type.root", Boolean.toString(true));
            }
            IProvisioningPlan plan = this.planner.getProvisioningPlan(request, context, (IProgressMonitor)sub.newChild(10));
            IStatus iStatus = PlanExecutionHelper.executePlan(plan, this.engine, context, (IProgressMonitor)sub.newChild(100));
            return iStatus;
        }
        finally {
            sub.done();
        }
    }
}

