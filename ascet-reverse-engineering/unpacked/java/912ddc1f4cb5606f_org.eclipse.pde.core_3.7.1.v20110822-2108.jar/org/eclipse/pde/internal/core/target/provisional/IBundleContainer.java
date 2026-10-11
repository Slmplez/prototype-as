/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.pde.internal.core.target.provisional;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;

public interface IBundleContainer {
    public IStatus resolve(ITargetDefinition var1, IProgressMonitor var2);

    public IStatus getStatus();

    public boolean isResolved();

    public IResolvedBundle[] getBundles();

    public IFeatureModel[] getFeatures();

    public String[] getVMArguments();
}

