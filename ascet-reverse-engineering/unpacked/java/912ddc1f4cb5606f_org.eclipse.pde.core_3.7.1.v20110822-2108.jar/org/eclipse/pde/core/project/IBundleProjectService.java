/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.core.project;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.project.IBundleClasspathEntry;
import org.eclipse.pde.core.project.IBundleProjectDescription;
import org.eclipse.pde.core.project.IHostDescription;
import org.eclipse.pde.core.project.IPackageExportDescription;
import org.eclipse.pde.core.project.IPackageImportDescription;
import org.eclipse.pde.core.project.IRequiredBundleDescription;
import org.osgi.framework.Version;

public interface IBundleProjectService {
    public IBundleProjectDescription getDescription(IProject var1) throws CoreException;

    public IHostDescription newHost(String var1, VersionRange var2);

    public IPackageImportDescription newPackageImport(String var1, VersionRange var2, boolean var3);

    public IPackageExportDescription newPackageExport(String var1, Version var2, boolean var3, String[] var4);

    public IRequiredBundleDescription newRequiredBundle(String var1, VersionRange var2, boolean var3, boolean var4);

    public IBundleClasspathEntry newBundleClasspathEntry(IPath var1, IPath var2, IPath var3);

    public void setBundleRoot(IProject var1, IPath var2) throws CoreException;
}

