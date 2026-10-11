/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.ifeature.IEnvironment;
import org.eclipse.pde.internal.core.ifeature.IFeatureChild;
import org.eclipse.pde.internal.core.ifeature.IFeatureData;
import org.eclipse.pde.internal.core.ifeature.IFeatureImport;
import org.eclipse.pde.internal.core.ifeature.IFeatureInfo;
import org.eclipse.pde.internal.core.ifeature.IFeatureInstallHandler;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.eclipse.pde.internal.core.ifeature.IFeatureURL;
import org.eclipse.pde.internal.core.ifeature.IVersionable;

public interface IFeature
extends IFeatureObject,
IVersionable,
IEnvironment {
    public static final String P_DESCRIPTION = "description";
    public static final String P_COPYRIGHT = "copyright";
    public static final String P_LICENSE = "license";
    public static final String P_PROVIDER = "provider";
    public static final String P_IMAGE = "image";
    public static final String P_URL = "url";
    public static final String P_INSTALL_HANDLER = "installHandler";
    public static final String P_PRIMARY = "primary";
    public static final String P_EXCLUSIVE = "exclusive";
    public static final String P_PLUGIN = "plugin";
    public static final String P_COLLOCATION_AFFINITY = "colocation-affinity";
    public static final String P_APPLICATION = "application";
    public static final int INFO_DESCRIPTION = 0;
    public static final int INFO_COPYRIGHT = 1;
    public static final int INFO_LICENSE = 2;
    public static final String[] INFO_TAGS = new String[]{"description", "copyright", "license"};

    public void addPlugins(IFeaturePlugin[] var1) throws CoreException;

    public void addData(IFeatureData[] var1) throws CoreException;

    public void addIncludedFeatures(IFeatureChild[] var1) throws CoreException;

    public void removeIncludedFeatures(IFeatureChild[] var1) throws CoreException;

    public void addImports(IFeatureImport[] var1) throws CoreException;

    public IFeaturePlugin[] getPlugins();

    public IFeatureData[] getData();

    public IFeatureImport[] getImports();

    public IFeatureChild[] getIncludedFeatures();

    public String getProviderName();

    public String getImageName();

    public IPluginModelBase getReferencedModel(IFeaturePlugin var1);

    public IFeatureURL getURL();

    public IFeatureInstallHandler getInstallHandler();

    public void setInstallHandler(IFeatureInstallHandler var1) throws CoreException;

    public IFeatureInfo getFeatureInfo(int var1);

    public void setFeatureInfo(IFeatureInfo var1, int var2) throws CoreException;

    public void removePlugins(IFeaturePlugin[] var1) throws CoreException;

    public void removeData(IFeatureData[] var1) throws CoreException;

    public void removeImports(IFeatureImport[] var1) throws CoreException;

    public void setProviderName(String var1) throws CoreException;

    public void setImageName(String var1) throws CoreException;

    public void setURL(IFeatureURL var1) throws CoreException;

    public void computeImports() throws CoreException;

    public boolean isPrimary();

    public String getLicenseFeatureID();

    public void setLicenseFeatureID(String var1);

    public String getLicenseFeatureVersion();

    public void setLicenseFeatureVersion(String var1);

    public void setPrimary(boolean var1) throws CoreException;

    public boolean isExclusive();

    public void setExclusive(boolean var1) throws CoreException;

    public String getPlugin();

    public void setPlugin(String var1) throws CoreException;

    public String getColocationAffinity();

    public void setColocationAffinity(String var1) throws CoreException;

    public String getApplication();

    public void setApplication(String var1) throws CoreException;

    public boolean isValid();

    public void swap(IFeatureChild var1, IFeatureChild var2);
}

