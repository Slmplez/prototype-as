/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.provisional.configurator.Configurator
 *  org.eclipse.equinox.p2.engine.IEngine
 *  org.eclipse.equinox.p2.engine.IPhaseSet
 *  org.eclipse.equinox.p2.engine.IProvisioningPlan
 *  org.eclipse.equinox.p2.engine.PhaseSetFactory
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.provisional.p2.director;

import java.io.IOException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.director.DirectorActivator;
import org.eclipse.equinox.internal.p2.director.Messages;
import org.eclipse.equinox.internal.provisional.configurator.Configurator;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IPhaseSet;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.osgi.framework.BundleContext;

public class PlanExecutionHelper {
    static /* synthetic */ Class class$0;

    public static IStatus executePlan(IProvisioningPlan result, IEngine engine, ProvisioningContext context, IProgressMonitor progress) {
        return PlanExecutionHelper.executePlan(result, engine, PhaseSetFactory.createDefaultPhaseSet(), context, progress);
    }

    public static IStatus executePlan(IProvisioningPlan result, IEngine engine, IPhaseSet phaseSet, ProvisioningContext context, IProgressMonitor progress) {
        if (!result.getStatus().isOK()) {
            return result.getStatus();
        }
        if (result.getInstallerPlan() != null) {
            IStatus installerPlanStatus = ((IEngine)result.getInstallerPlan().getProfile().getProvisioningAgent().getService(IEngine.SERVICE_NAME)).perform(result.getInstallerPlan(), phaseSet, progress);
            if (!installerPlanStatus.isOK()) {
                return installerPlanStatus;
            }
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.equinox.internal.provisional.configurator.Configurator");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Configurator configChanger = (Configurator)ServiceHelper.getService((BundleContext)DirectorActivator.context, (String)clazz.getName());
            try {
                configChanger.applyConfiguration();
            }
            catch (IOException e) {
                return new Status(4, "org.eclipse.equinox.p2.director", Messages.Director_error_applying_configuration, (Throwable)e);
            }
        }
        return engine.perform(result, phaseSet, progress);
    }
}

