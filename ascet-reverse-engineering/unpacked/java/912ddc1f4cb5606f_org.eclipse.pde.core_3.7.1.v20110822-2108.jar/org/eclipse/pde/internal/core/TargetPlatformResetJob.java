/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.EclipseHomeInitializer;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.PluginModelManager;

public class TargetPlatformResetJob
extends Job {
    private PDEState fState;

    public TargetPlatformResetJob(PDEState newState) {
        super(PDECoreMessages.TargetPlatformResetJob_resetTarget);
        this.fState = newState;
        this.setRule((ISchedulingRule)ResourcesPlugin.getWorkspace().getRoot());
    }

    protected IStatus run(IProgressMonitor monitor) {
        EclipseHomeInitializer.resetEclipseHomeVariable();
        PDECore.getDefault().getSourceLocationManager().reset();
        PDECore.getDefault().getJavadocLocationManager().reset();
        IPluginModelBase[] models = this.fState.getTargetModels();
        this.removeDisabledBundles(models);
        PluginModelManager manager = PDECore.getDefault().getModelManager();
        manager.getExternalModelManager().setModels(models);
        PDECore.getDefault().getExtensionsRegistry().targetReloaded();
        manager.resetState(this.fState);
        PDECore.getDefault().getFeatureModelManager().targetReloaded();
        monitor.done();
        return Status.OK_STATUS;
    }

    private void removeDisabledBundles(IPluginModelBase[] models) {
        int number = models.length;
        int i = 0;
        while (i < models.length) {
            if (!models[i].isEnabled()) {
                this.fState.removeBundleDescription(models[i].getBundleDescription());
                --number;
            }
            ++i;
        }
        if (number < models.length) {
            this.fState.resolveState(true);
        }
    }
}

