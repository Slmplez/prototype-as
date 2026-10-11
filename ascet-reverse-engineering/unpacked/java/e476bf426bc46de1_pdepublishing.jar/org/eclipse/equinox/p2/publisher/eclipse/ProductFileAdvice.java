/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AbstractAdvice
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.actions.ILicenseAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.publisher.eclipse.DataLoader;
import org.eclipse.equinox.internal.p2.publisher.eclipse.IProductDescriptor;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.actions.ILicenseAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.IBrandingAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.IConfigAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.IExecutableAdvice;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProductFileAdvice
extends AbstractAdvice
implements ILicenseAdvice,
IExecutableAdvice,
IConfigAdvice,
IBrandingAdvice {
    private static final String OSGI_SPLASH_PATH = "osgi.splashPath";
    private static final String SPLASH_PREFIX = "platform:/base/plugins/";
    private IProductDescriptor product;
    private String configSpec;
    private String ws;
    private String os;
    private String arch;
    private ConfigData configData = null;

    protected String getId() {
        return this.product.getId();
    }

    protected Version getVersion() {
        return Version.parseVersion((String)this.product.getVersion());
    }

    public ProductFileAdvice(IProductDescriptor product, String configSpec) {
        this.product = product;
        this.configSpec = configSpec;
        String[] config = AbstractPublisherAction.parseConfigSpec((String)configSpec);
        this.ws = config[0];
        if (this.ws == null) {
            this.ws = "ANY";
        }
        this.os = config[1];
        if (this.os == null) {
            this.os = "ANY";
        }
        this.arch = config[2];
        if (this.arch == null) {
            this.arch = "ANY";
        }
        this.configData = this.getConfigData();
    }

    @Override
    public String[] getProgramArguments() {
        String line = this.product.getProgramArguments(this.os);
        return AbstractPublisherAction.getArrayFromString((String)line, (String)" ");
    }

    @Override
    public String[] getVMArguments() {
        String line = this.product.getVMArguments(this.os);
        return AbstractPublisherAction.getArrayFromString((String)line, (String)" ");
    }

    @Override
    public BundleInfo[] getBundles() {
        return this.configData.getBundles();
    }

    @Override
    public Map<String, String> getProperties() {
        HashMap<String, String> result = new HashMap<String, String>();
        CollectionUtils.putAll((Properties)this.configData.getProperties(), result);
        result.putAll(this.product.getConfigurationProperties());
        return result;
    }

    @Override
    public String getExecutableName() {
        return this.product.getLauncherName();
    }

    public IProductDescriptor getProductFile() {
        return this.product;
    }

    @Override
    public String[] getIcons() {
        return this.product.getIcons(this.os);
    }

    @Override
    public String getOS() {
        return this.os;
    }

    public String getLicenseURL() {
        return this.product.getLicenseURL();
    }

    public String getLicenseText() {
        return this.product.getLicenseText();
    }

    private ConfigData getConfigData() {
        String location;
        DataLoader loader = this.createDataLoader();
        ConfigData result = loader != null ? loader.getConfigData() : this.generateConfigData();
        this.addProductFileBundles(result);
        this.addProductFileConfigBundles(result);
        if (this.product.getProductId() != null) {
            result.setProperty("eclipse.product", this.product.getProductId());
        }
        if (this.product.getApplication() != null) {
            result.setProperty("eclipse.application", this.product.getApplication());
        }
        if ((location = this.getSplashLocation()) != null) {
            result.setProperty(OSGI_SPLASH_PATH, new StringBuffer(SPLASH_PREFIX).append(location).toString());
        }
        return result;
    }

    private void addProductFileConfigBundles(ConfigData data) {
        HashSet<BundleInfo> versionBoundBundles = new HashSet<BundleInfo>();
        HashMap<String, List<BundleInfo>> unboundedBundles = new HashMap<String, List<BundleInfo>>();
        BundleInfo[] bundles = data.getBundles();
        int i = 0;
        while (i < bundles.length) {
            BundleInfo bundleInfo = bundles[i];
            if (bundleInfo.getVersion().equals("0.0.0")) {
                this.addUnboundedBundle(unboundedBundles, bundleInfo);
            } else {
                versionBoundBundles.add(bundleInfo);
                this.addUnboundedBundle(unboundedBundles, bundleInfo);
            }
            ++i;
        }
        List<BundleInfo> bundleInfos = this.product.getBundleInfos();
        for (BundleInfo bundleInfo : bundleInfos) {
            if (versionBoundBundles.contains(bundleInfo)) {
                data.removeBundle(bundleInfo);
                data.addBundle(bundleInfo);
                continue;
            }
            if (bundleInfo.getVersion().equals("0.0.0")) {
                List list = (List)unboundedBundles.get(bundleInfo.getSymbolicName());
                if (list == null) {
                    data.addBundle(bundleInfo);
                    continue;
                }
                for (BundleInfo target : list) {
                    target.setStartLevel(bundleInfo.getStartLevel());
                    target.setMarkedAsStarted(bundleInfo.isMarkedAsStarted());
                }
                continue;
            }
            data.addBundle(bundleInfo);
        }
    }

    private void addUnboundedBundle(Map<String, List<BundleInfo>> data, BundleInfo bundleInfo) {
        if (!data.containsKey(bundleInfo.getSymbolicName())) {
            data.put(bundleInfo.getSymbolicName(), new LinkedList());
        }
        data.get(bundleInfo.getSymbolicName()).add(bundleInfo);
    }

    private void addProductFileBundles(ConfigData data) {
        List<IVersionedId> bundles = this.product.getBundles(true);
        HashSet<BundleInfo> set = new HashSet<BundleInfo>();
        set.addAll(Arrays.asList(data.getBundles()));
        for (IVersionedId vid : bundles) {
            BundleInfo bundleInfo = new BundleInfo();
            bundleInfo.setSymbolicName(vid.getId());
            bundleInfo.setVersion(vid.getVersion().toString());
            if (set.contains(bundleInfo)) continue;
            data.addBundle(bundleInfo);
        }
    }

    private ConfigData generateConfigData() {
        ConfigData result = new ConfigData(null, null, null, null);
        if (this.product.useFeatures()) {
            return result;
        }
        List<IVersionedId> bundles = this.product.getBundles(true);
        for (IVersionedId vid : bundles) {
            BundleInfo bundleInfo = new BundleInfo();
            bundleInfo.setSymbolicName(vid.getId());
            bundleInfo.setVersion(vid.getVersion().toString());
            result.addBundle(bundleInfo);
        }
        return result;
    }

    private String getSplashLocation() {
        return this.product.getSplashLocation();
    }

    protected String getConfigSpec() {
        return this.configSpec;
    }

    protected boolean matchConfig(String spec, boolean includeDefault) {
        if (spec != null) {
            String targetWS = AbstractPublisherAction.parseConfigSpec((String)spec)[0];
            if (targetWS == null) {
                targetWS = "ANY";
            }
            if (!(this.ws.equals(targetWS) || this.ws.equals("ANY") || targetWS.equals("ANY"))) {
                return false;
            }
            String targetOS = AbstractPublisherAction.parseConfigSpec((String)spec)[1];
            if (targetOS == null) {
                targetOS = "ANY";
            }
            if (!(this.os.equals(targetOS) || this.os.equals("ANY") || targetOS.equals("ANY"))) {
                return false;
            }
            String targetArch = AbstractPublisherAction.parseConfigSpec((String)spec)[2];
            if (targetArch == null) {
                targetArch = "ANY";
            }
            if (!(this.arch.equals(targetArch) || this.arch.equals("ANY") || targetArch.equals("ANY"))) {
                return false;
            }
        }
        return true;
    }

    private DataLoader createDataLoader() {
        File parent;
        String location = this.product.getConfigIniPath(this.os);
        if (location == null) {
            location = this.product.getConfigIniPath(null);
        }
        if (location == null) {
            return null;
        }
        File configFile = new File(location);
        if (!configFile.isAbsolute() || !configFile.exists()) {
            configFile = new File(this.product.getLocation().getParentFile(), location);
        }
        if ((parent = configFile.getParentFile()).getName().equals("configuration") && parent.getParentFile() != null) {
            parent = parent.getParentFile();
        }
        return new DataLoader(configFile, parent);
    }
}

