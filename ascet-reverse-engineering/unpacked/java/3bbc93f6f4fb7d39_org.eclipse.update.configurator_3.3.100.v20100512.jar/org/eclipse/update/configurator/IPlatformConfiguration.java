/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.configurator;

import java.io.IOException;
import java.net.URL;

public interface IPlatformConfiguration {
    public ISiteEntry createSiteEntry(URL var1, ISitePolicy var2);

    public ISitePolicy createSitePolicy(int var1, String[] var2);

    public IFeatureEntry createFeatureEntry(String var1, String var2, String var3, boolean var4, String var5, URL[] var6);

    public IFeatureEntry createFeatureEntry(String var1, String var2, String var3, String var4, boolean var5, String var6, URL[] var7);

    public void configureSite(ISiteEntry var1);

    public void configureSite(ISiteEntry var1, boolean var2);

    public void unconfigureSite(ISiteEntry var1);

    public ISiteEntry[] getConfiguredSites();

    public ISiteEntry findConfiguredSite(URL var1);

    public void configureFeatureEntry(IFeatureEntry var1);

    public void unconfigureFeatureEntry(IFeatureEntry var1);

    public IFeatureEntry[] getConfiguredFeatureEntries();

    public IFeatureEntry findConfiguredFeatureEntry(String var1);

    public URL getConfigurationLocation();

    public long getChangeStamp();

    public long getFeaturesChangeStamp();

    public long getPluginsChangeStamp();

    public String getPrimaryFeatureIdentifier();

    public URL[] getPluginPath();

    public String[] getBootstrapPluginIdentifiers();

    public void setBootstrapPluginLocation(String var1, URL var2);

    public boolean isUpdateable();

    public boolean isTransient();

    public void isTransient(boolean var1);

    public void refresh();

    public void save() throws IOException;

    public void save(URL var1) throws IOException;

    public static interface IFeatureEntry {
        public String getFeatureIdentifier();

        public String getFeatureVersion();

        public String getFeaturePluginIdentifier();

        public String getFeaturePluginVersion();

        public String getFeatureApplication();

        public URL[] getFeatureRootURLs();

        public boolean canBePrimary();
    }

    public static interface ISiteEntry {
        public URL getURL();

        public ISitePolicy getSitePolicy();

        public void setSitePolicy(ISitePolicy var1);

        public String[] getFeatures();

        public String[] getPlugins();

        public long getChangeStamp();

        public long getFeaturesChangeStamp();

        public long getPluginsChangeStamp();

        public boolean isUpdateable();

        public boolean isNativelyLinked();
    }

    public static interface ISitePolicy {
        public static final int USER_INCLUDE = 0;
        public static final int USER_EXCLUDE = 1;
        public static final int MANAGED_ONLY = 2;

        public int getType();

        public String[] getList();

        public void setList(String[] var1);
    }
}

