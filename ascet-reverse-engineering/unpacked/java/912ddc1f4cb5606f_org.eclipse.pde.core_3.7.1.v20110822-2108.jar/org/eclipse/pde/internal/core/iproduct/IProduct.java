/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IAboutInfo;
import org.eclipse.pde.internal.core.iproduct.IArgumentsInfo;
import org.eclipse.pde.internal.core.iproduct.IConfigurationFileInfo;
import org.eclipse.pde.internal.core.iproduct.IConfigurationProperty;
import org.eclipse.pde.internal.core.iproduct.IIntroInfo;
import org.eclipse.pde.internal.core.iproduct.IJREInfo;
import org.eclipse.pde.internal.core.iproduct.ILauncherInfo;
import org.eclipse.pde.internal.core.iproduct.ILicenseInfo;
import org.eclipse.pde.internal.core.iproduct.IPluginConfiguration;
import org.eclipse.pde.internal.core.iproduct.IProductFeature;
import org.eclipse.pde.internal.core.iproduct.IProductObject;
import org.eclipse.pde.internal.core.iproduct.IProductPlugin;
import org.eclipse.pde.internal.core.iproduct.ISplashInfo;
import org.eclipse.pde.internal.core.iproduct.IWindowImages;

public interface IProduct
extends IProductObject {
    public static final String P_ID = "id";
    public static final String P_UID = "uid";
    public static final String P_NAME = "name";
    public static final String P_APPLICATION = "application";
    public static final String P_USEFEATURES = "useFeatures";
    public static final String P_INCLUDE_FRAGMENTS = "includeFragments";
    public static final String P_INTRO_ID = "introId";
    public static final String P_VERSION = "version";
    public static final String P_INCLUDE_LAUNCHERS = "includeLaunchers";

    public String getId();

    public String getProductId();

    public String getName();

    public String getApplication();

    public String getVersion();

    public String getDefiningPluginId();

    public boolean useFeatures();

    public boolean includeLaunchers();

    public IAboutInfo getAboutInfo();

    public IConfigurationFileInfo getConfigurationFileInfo();

    public IArgumentsInfo getLauncherArguments();

    public IJREInfo getJREInfo();

    public IWindowImages getWindowImages();

    public ISplashInfo getSplashInfo();

    public IIntroInfo getIntroInfo();

    public ILauncherInfo getLauncherInfo();

    public ILicenseInfo getLicenseInfo();

    public void addPlugins(IProductPlugin[] var1);

    public void addFeatures(IProductFeature[] var1);

    public void addPluginConfigurations(IPluginConfiguration[] var1);

    public void addConfigurationProperties(IConfigurationProperty[] var1);

    public void removePlugins(IProductPlugin[] var1);

    public void removeFeatures(IProductFeature[] var1);

    public void removePluginConfigurations(IPluginConfiguration[] var1);

    public void removeConfigurationProperties(IConfigurationProperty[] var1);

    public IPluginConfiguration findPluginConfiguration(String var1);

    public IProductPlugin[] getPlugins();

    public IProductFeature[] getFeatures();

    public IPluginConfiguration[] getPluginConfigurations();

    public IConfigurationProperty[] getConfigurationProperties();

    public void setId(String var1);

    public void setProductId(String var1);

    public void setVersion(String var1);

    public void setName(String var1);

    public void setAboutInfo(IAboutInfo var1);

    public void setApplication(String var1);

    public void setConfigurationFileInfo(IConfigurationFileInfo var1);

    public void setLauncherArguments(IArgumentsInfo var1);

    public void setJREInfo(IJREInfo var1);

    public void setWindowImages(IWindowImages var1);

    public void setSplashInfo(ISplashInfo var1);

    public void setIntroInfo(IIntroInfo var1);

    public void setLauncherInfo(ILauncherInfo var1);

    public void setLicenseInfo(ILicenseInfo var1);

    public void setUseFeatures(boolean var1);

    public void setIncludeLaunchers(boolean var1);

    public void reset();

    public void swap(IProductFeature var1, IProductFeature var2);

    public boolean containsPlugin(String var1);

    public boolean containsFeature(String var1);
}

