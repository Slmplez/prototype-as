/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.pde.internal.core.target.provisional;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;

public interface ITargetDefinition {
    public String getName();

    public void setName(String var1);

    public void setJREContainer(IPath var1);

    public IPath getJREContainer();

    public String getOS();

    public void setOS(String var1);

    public String getWS();

    public void setWS(String var1);

    public String getArch();

    public void setArch(String var1);

    public String getNL();

    public void setNL(String var1);

    public IBundleContainer[] getBundleContainers();

    public void setBundleContainers(IBundleContainer[] var1);

    public void setIncluded(NameVersionDescriptor[] var1);

    public NameVersionDescriptor[] getIncluded();

    public void setOptional(NameVersionDescriptor[] var1);

    public NameVersionDescriptor[] getOptional();

    public IResolvedBundle[] getBundles();

    public IResolvedBundle[] getAllBundles();

    public IFeatureModel[] getAllFeatures();

    public IStatus resolve(IProgressMonitor var1);

    public boolean isResolved();

    public IStatus getBundleStatus();

    public String getProgramArguments();

    public void setProgramArguments(String var1);

    public String getVMArguments();

    public void setVMArguments(String var1);

    public ITargetHandle getHandle();

    public void setImplicitDependencies(NameVersionDescriptor[] var1);

    public NameVersionDescriptor[] getImplicitDependencies();
}

