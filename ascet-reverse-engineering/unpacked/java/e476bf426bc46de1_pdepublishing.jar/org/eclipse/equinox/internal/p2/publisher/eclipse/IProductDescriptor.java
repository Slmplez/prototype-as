/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 */
package org.eclipse.equinox.internal.p2.publisher.eclipse;

import java.io.File;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.p2.metadata.IVersionedId;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProductDescriptor {
    public String getLauncherName();

    public List<IVersionedId> getBundles(boolean var1);

    public List<IVersionedId> getFragments();

    public List<IVersionedId> getFeatures();

    public String getConfigIniPath(String var1);

    public String getId();

    public String getProductId();

    public String getApplication();

    public String getSplashLocation();

    public String getProductName();

    public boolean useFeatures();

    public String getVersion();

    public String getVMArguments(String var1);

    public String getProgramArguments(String var1);

    public Map<String, String> getConfigurationProperties();

    public String[] getIcons(String var1);

    public List<BundleInfo> getBundleInfos();

    public File getLocation();

    public boolean includeLaunchers();

    public String getLicenseURL();

    public String getLicenseText();
}

