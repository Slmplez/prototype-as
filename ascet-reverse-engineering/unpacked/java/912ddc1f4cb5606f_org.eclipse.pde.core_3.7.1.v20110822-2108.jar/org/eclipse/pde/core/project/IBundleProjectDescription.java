/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.core.project;

import java.net.URI;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.pde.core.project.IBundleClasspathEntry;
import org.eclipse.pde.core.project.IHostDescription;
import org.eclipse.pde.core.project.IPackageExportDescription;
import org.eclipse.pde.core.project.IPackageImportDescription;
import org.eclipse.pde.core.project.IRequiredBundleDescription;
import org.osgi.framework.Version;

public interface IBundleProjectDescription {
    public static final String VERSION_3_0 = "3.0";
    public static final String VERSION_3_1 = "3.1";
    public static final String VERSION_3_2 = "3.2";
    public static final String VERSION_3_3 = "3.3";
    public static final String VERSION_3_4 = "3.4";
    public static final String VERSION_3_5 = "3.5";
    public static final String VERSION_3_6 = "3.6";
    public static final String VERSION_3_7 = "3.7";
    public static final String PLUGIN_NATURE = "org.eclipse.pde.PluginNature";

    public void apply(IProgressMonitor var1) throws CoreException;

    public void setSymbolicName(String var1);

    public String getSymbolicName();

    public void setLocationURI(URI var1);

    public URI getLocationURI();

    public void setBundleName(String var1);

    public String getBundleName();

    public void setBundleVendor(String var1);

    public String getBundleVendor();

    public void setBundleVersion(Version var1);

    public Version getBundleVersion();

    public void setSingleton(boolean var1);

    public boolean isSingleton();

    public void setLocalization(IPath var1);

    public IPath getLocalization();

    public String[] getNatureIds();

    public void setNatureIds(String[] var1);

    public boolean hasNature(String var1);

    public void setHost(IHostDescription var1);

    public IHostDescription getHost();

    public void setDefaultOutputFolder(IPath var1);

    public IPath getDefaultOutputFolder();

    public void setExecutionEnvironments(String[] var1);

    public String[] getExecutionEnvironments();

    public void setBundleClassath(IBundleClasspathEntry[] var1);

    public void setBundleClasspath(IBundleClasspathEntry[] var1);

    public IBundleClasspathEntry[] getBundleClasspath();

    public void setActivator(String var1);

    public String getActivator();

    public void setTargetVersion(String var1);

    public String getTargetVersion();

    public void setEquinox(boolean var1);

    public boolean isEquinox();

    public void setActivationPolicy(String var1);

    public String getActivationPolicy();

    public void setExtensionRegistry(boolean var1);

    public boolean isExtensionRegistry();

    public void setRequiredBundles(IRequiredBundleDescription[] var1);

    public IRequiredBundleDescription[] getRequiredBundles();

    public void setPackageImports(IPackageImportDescription[] var1);

    public IPackageImportDescription[] getPackageImports();

    public void setPackageExports(IPackageExportDescription[] var1);

    public IPackageExportDescription[] getPackageExports();

    public IProject getProject();

    public void setBinIncludes(IPath[] var1);

    public IPath[] getBinIncludes();

    public void setBundleRoot(IPath var1);

    public IPath getBundleRoot();

    public String[] getLaunchShortcuts();

    public void setLaunchShortcuts(String[] var1);

    public String getExportWizardId();

    public void setExportWizardId(String var1);

    public void setHeader(String var1, String var2);

    public String getHeader(String var1);
}

