/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.pde.internal.core.target.provisional;

import java.net.URI;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;

public interface ITargetPlatformService {
    public static final int STATUS_MISSING_FROM_TARGET_PLATFORM = 1;
    public static final int STATUS_MISSING_FROM_TARGET_DEFINITION = 2;

    public ITargetHandle[] getTargets(IProgressMonitor var1);

    public ITargetHandle getTarget(IFile var1);

    public ITargetHandle getTarget(URI var1);

    public ITargetDefinition newTarget();

    public void saveTargetDefinition(ITargetDefinition var1) throws CoreException;

    public void deleteTarget(ITargetHandle var1) throws CoreException;

    public ITargetHandle getTarget(String var1) throws CoreException;

    public IBundleContainer newDirectoryContainer(String var1);

    public IBundleContainer newProfileContainer(String var1, String var2);

    public IBundleContainer newIUContainer(IInstallableUnit[] var1, URI[] var2, int var3);

    public IBundleContainer newIUContainer(String[] var1, String[] var2, URI[] var3, int var4);

    public IBundleContainer newFeatureContainer(String var1, String var2, String var3);

    public ITargetHandle getWorkspaceTargetHandle() throws CoreException;

    public IStatus compareWithTargetPlatform(ITargetDefinition var1) throws CoreException;

    public void copyTargetDefinition(ITargetDefinition var1, ITargetDefinition var2) throws CoreException;

    public void loadTargetDefinition(ITargetDefinition var1, String var2) throws CoreException;
}

