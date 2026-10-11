/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.update.internal.configurator;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.configurator.IPlatformConfiguration;
import org.eclipse.update.internal.configurator.BundleManifest;
import org.eclipse.update.internal.configurator.Configuration;
import org.eclipse.update.internal.configurator.ConfigurationActivator;
import org.eclipse.update.internal.configurator.FeatureEntry;
import org.eclipse.update.internal.configurator.FeatureParser;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.PlatformConfiguration;
import org.eclipse.update.internal.configurator.PluginEntry;
import org.eclipse.update.internal.configurator.PluginParser;
import org.eclipse.update.internal.configurator.SitePolicy;
import org.eclipse.update.internal.configurator.Utils;
import org.eclipse.update.internal.configurator.VersionedIdentifier;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

public class SiteEntry
implements IPlatformConfiguration.ISiteEntry,
IConfigurationConstants {
    private static final String MAC_OS_MARKER = ".DS_Store";
    private URL url;
    private URL resolvedURL;
    private IPlatformConfiguration.ISitePolicy policy;
    private boolean updateable = true;
    private Map featureEntries;
    private ArrayList pluginEntries;
    private long changeStamp;
    private long featuresChangeStamp;
    private long pluginsChangeStamp;
    private String linkFileName;
    private boolean enabled = true;
    private Configuration config;
    private static FeatureParser featureParser = new FeatureParser();
    private static PluginParser pluginParser = new PluginParser();
    private static boolean isMacOS = Utils.getOS().equals("macosx");

    public SiteEntry(URL url) {
        this(url, null);
    }

    public SiteEntry(URL url, IPlatformConfiguration.ISitePolicy policy) {
        if (url == null) {
            try {
                url = new URL("platform:/base/");
            }
            catch (MalformedURLException malformedURLException) {
                url = PlatformConfiguration.getInstallURL();
            }
        }
        if (policy == null) {
            policy = new SitePolicy(PlatformConfiguration.getDefaultPolicy(), DEFAULT_POLICY_LIST);
        }
        if (url.getProtocol().equals("file")) {
            try {
                this.url = new File(url.getFile()).toURL();
            }
            catch (MalformedURLException malformedURLException) {
                this.url = url;
            }
        } else {
            this.url = url;
        }
        this.policy = policy;
        this.resolvedURL = this.url;
    }

    public void setConfig(Configuration config) {
        this.config = config;
        if (this.url.getProtocol().equals("platform")) {
            try {
                if (this.url.getPath().startsWith("/config")) {
                    URL configURL = config.getURL();
                    URL config_loc = new URL(configURL, "..");
                    this.resolvedURL = PlatformConfiguration.resolvePlatformURL(this.url, config_loc);
                } else {
                    this.resolvedURL = PlatformConfiguration.resolvePlatformURL(this.url, config.getInstallURL());
                }
            }
            catch (IOException iOException) {}
        }
    }

    public Configuration getConfig() {
        return this.config;
    }

    public URL getURL() {
        return this.url;
    }

    public IPlatformConfiguration.ISitePolicy getSitePolicy() {
        return this.policy;
    }

    public synchronized void setSitePolicy(IPlatformConfiguration.ISitePolicy policy) {
        if (policy == null) {
            throw new IllegalArgumentException();
        }
        this.policy = policy;
    }

    public String[] getFeatures() {
        return this.getDetectedFeatures();
    }

    public String[] getPlugins() {
        IPlatformConfiguration.ISitePolicy policy = this.getSitePolicy();
        if (policy.getType() == 0) {
            return policy.getList();
        }
        if (policy.getType() == 1) {
            ArrayList<String> detectedPlugins = new ArrayList<String>(Arrays.asList(this.getDetectedPlugins()));
            String[] excludedPlugins = policy.getList();
            int i = 0;
            while (i < excludedPlugins.length) {
                if (detectedPlugins.contains(excludedPlugins[i])) {
                    detectedPlugins.remove(excludedPlugins[i]);
                }
                ++i;
            }
            return detectedPlugins.toArray(new String[0]);
        }
        if (policy.getType() == 2) {
            PluginEntry[] managedPlugins = this.getManagedPlugins();
            String[] managedPluginsURLs = new String[managedPlugins.length];
            int i = 0;
            while (i < managedPlugins.length) {
                managedPluginsURLs[i] = managedPlugins[i].getURL();
                ++i;
            }
            return managedPluginsURLs;
        }
        return new String[0];
    }

    private PluginEntry[] getManagedPlugins() {
        if (this.pluginEntries == null) {
            this.detectPlugins();
        }
        if (this.featureEntries == null) {
            this.detectFeatures();
        }
        HashMap<VersionedIdentifier, PluginEntry> cachedPlugins = new HashMap<VersionedIdentifier, PluginEntry>(this.pluginEntries.size());
        int i = 0;
        while (i < this.pluginEntries.size()) {
            PluginEntry p = (PluginEntry)this.pluginEntries.get(i);
            cachedPlugins.put(p.getVersionedIdentifier(), p);
            ++i;
        }
        ArrayList managedPlugins = new ArrayList();
        Iterator iterator = this.featureEntries.values().iterator();
        while (iterator.hasNext()) {
            Object feature = iterator.next();
            if (!(feature instanceof FeatureEntry)) continue;
            PluginEntry[] plugins = ((FeatureEntry)feature).getPluginEntries();
            int i2 = 0;
            while (i2 < plugins.length) {
                if (cachedPlugins.containsKey(plugins[i2].getVersionedIdentifier())) {
                    managedPlugins.add(cachedPlugins.get(plugins[i2].getVersionedIdentifier()));
                }
                ++i2;
            }
        }
        return managedPlugins.toArray(new PluginEntry[managedPlugins.size()]);
    }

    public PluginEntry[] getPluginEntries() {
        String[] pluginURLs = this.getPlugins();
        HashMap<String, String> map = new HashMap<String, String>(pluginURLs.length);
        int i = 0;
        while (i < pluginURLs.length) {
            map.put(pluginURLs[i], pluginURLs[i]);
            ++i;
        }
        if (this.pluginEntries == null) {
            this.detectPlugins();
        }
        ArrayList<PluginEntry> plugins = new ArrayList<PluginEntry>(pluginURLs.length);
        int i2 = 0;
        while (i2 < this.pluginEntries.size()) {
            PluginEntry p = (PluginEntry)this.pluginEntries.get(i2);
            if (map.containsKey(p.getURL())) {
                plugins.add(p);
            }
            ++i2;
        }
        return plugins.toArray(new PluginEntry[plugins.size()]);
    }

    public long getChangeStamp() {
        if (this.changeStamp == 0L) {
            this.computeChangeStamp();
        }
        return this.changeStamp;
    }

    public long getFeaturesChangeStamp() {
        if (this.featuresChangeStamp == 0L) {
            this.computeFeaturesChangeStamp();
        }
        return this.featuresChangeStamp;
    }

    public long getPluginsChangeStamp() {
        if (this.pluginsChangeStamp == 0L) {
            this.computePluginsChangeStamp();
        }
        return this.pluginsChangeStamp;
    }

    public boolean isUpdateable() {
        return this.updateable;
    }

    public void setUpdateable(boolean updateable) {
        this.updateable = updateable;
    }

    public boolean isNativelyLinked() {
        return this.isExternallyLinkedSite();
    }

    public URL getResolvedURL() {
        return this.resolvedURL;
    }

    private void detectFeatures() {
        if (this.featureEntries != null) {
            this.validateFeatureEntries();
        } else {
            this.featureEntries = new HashMap();
        }
        if (!PlatformConfiguration.supportsDetection(this.resolvedURL, this.config.getInstallURL())) {
            return;
        }
        File siteRoot = new File(this.resolvedURL.getFile().replace('/', File.separatorChar));
        File featuresDir = new File(siteRoot, "features");
        if (featuresDir.exists()) {
            File[] dirs = featuresDir.listFiles(new FileFilter(){

                public boolean accept(File f) {
                    boolean valid;
                    if (isMacOS && f.getName().equals(SiteEntry.MAC_OS_MARKER)) {
                        return false;
                    }
                    boolean bl = valid = f.isDirectory() && new File(f, "feature.xml").exists();
                    if (!valid) {
                        Utils.log(NLS.bind((String)Messages.SiteEntry_cannotFindFeatureInDir, (Object[])new String[]{f.getAbsolutePath()}));
                    }
                    return valid;
                }
            });
            int index = 0;
            while (index < dirs.length) {
                try {
                    URL featureURL;
                    FeatureEntry featureEntry;
                    File featureXML = new File(dirs[index], "feature.xml");
                    if ((featureXML.lastModified() > this.featuresChangeStamp || dirs[index].lastModified() > this.featuresChangeStamp) && (featureEntry = featureParser.parse(featureURL = featureXML.toURL())) != null) {
                        this.addFeatureEntry(featureEntry);
                    }
                }
                catch (MalformedURLException malformedURLException) {
                    Utils.log(NLS.bind((String)Messages.InstalledSiteParser_UnableToCreateURLForFile, (Object[])new String[]{featuresDir.getAbsolutePath()}));
                }
                ++index;
            }
        }
        Utils.debug(String.valueOf(this.resolvedURL.toString()) + " located  " + this.featureEntries.size() + " feature(s)");
    }

    private void detectPlugins() {
        boolean compareTimeStamps = false;
        if (this.pluginEntries != null) {
            this.validatePluginEntries();
            compareTimeStamps = true;
        } else {
            this.pluginEntries = new ArrayList();
        }
        if (!PlatformConfiguration.supportsDetection(this.resolvedURL, this.config.getInstallURL())) {
            return;
        }
        File pluginsDir = new File(this.resolvedURL.getFile(), "plugins");
        if (pluginsDir.exists() && pluginsDir.isDirectory()) {
            File[] files = pluginsDir.listFiles();
            int i = 0;
            while (i < files.length) {
                if (files[i].isDirectory()) {
                    this.detectUnpackedPlugin(files[i], compareTimeStamps);
                } else if (files[i].getName().endsWith(".jar")) {
                    this.detectPackedPlugin(files[i], compareTimeStamps);
                }
                ++i;
            }
        }
        Utils.debug(String.valueOf(this.resolvedURL.toString()) + " located  " + this.pluginEntries.size() + " plugin(s)");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void detectPackedPlugin(File file, boolean compareTimeStamps) {
        InputStream pluginManifestIn;
        ZipFile z;
        block50: {
            InputStream bundleManifestIn;
            block48: {
                String pluginURL;
                String entryName;
                block46: {
                    block47: {
                        BundleManifest manifest;
                        if (compareTimeStamps && file.lastModified() <= this.pluginsChangeStamp) {
                            return;
                        }
                        entryName = "META-INF/MANIFEST.MF";
                        z = null;
                        bundleManifestIn = null;
                        pluginManifestIn = null;
                        pluginURL = "plugins/" + file.getName();
                        z = new ZipFile(file);
                        if (z.getEntry(entryName) == null || !(manifest = new BundleManifest(bundleManifestIn = z.getInputStream(new ZipEntry(entryName)), pluginURL)).exists()) break block46;
                        this.addPluginEntry(manifest.getPluginEntry());
                        if (bundleManifestIn == null) break block47;
                        try {
                            bundleManifestIn.close();
                        }
                        catch (IOException iOException) {}
                    }
                    if (pluginManifestIn != null) {
                        try {
                            pluginManifestIn.close();
                        }
                        catch (IOException iOException) {}
                    }
                    if (z == null) return;
                    try {
                        z.close();
                        return;
                    }
                    catch (IOException iOException) {}
                    return;
                }
                try {
                    entryName = "plugin.xml";
                    if (z.getEntry(entryName) == null) {
                        entryName = "fragment.xml";
                    }
                    if (z.getEntry(entryName) == null) break block48;
                    pluginManifestIn = z.getInputStream(new ZipEntry(entryName));
                    PluginEntry entry1 = pluginParser.parse(pluginManifestIn, pluginURL);
                    this.addPluginEntry(entry1);
                }
                catch (IOException iOException) {
                    String pluginFileString2 = String.valueOf(pluginURL) + "!" + entryName;
                    Utils.log(NLS.bind((String)Messages.InstalledSiteParser_ErrorAccessing, (Object[])new String[]{pluginFileString2}));
                    if (bundleManifestIn != null) {
                        try {
                            bundleManifestIn.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    if (pluginManifestIn != null) {
                        try {
                            pluginManifestIn.close();
                        }
                        catch (IOException iOException3) {}
                    }
                    if (z == null) return;
                    try {
                        z.close();
                        return;
                    }
                    catch (IOException iOException4) {}
                    return;
                }
                catch (SAXException sAXException) {
                    block49: {
                        try {
                            String pluginFileString1 = String.valueOf(pluginURL) + "!" + entryName;
                            Utils.log(NLS.bind((String)Messages.InstalledSiteParser_ErrorParsingFile, (Object[])new String[]{pluginFileString1}));
                            if (bundleManifestIn == null) break block49;
                        }
                        catch (Throwable throwable) {
                            if (bundleManifestIn != null) {
                                try {
                                    bundleManifestIn.close();
                                }
                                catch (IOException iOException) {}
                            }
                            if (pluginManifestIn != null) {
                                try {
                                    pluginManifestIn.close();
                                }
                                catch (IOException iOException) {}
                            }
                            if (z == null) throw throwable;
                            try {
                                z.close();
                                throw throwable;
                            }
                            catch (IOException iOException) {}
                            throw throwable;
                        }
                        try {
                            bundleManifestIn.close();
                        }
                        catch (IOException iOException) {}
                    }
                    if (pluginManifestIn != null) {
                        try {
                            pluginManifestIn.close();
                        }
                        catch (IOException iOException) {}
                    }
                    if (z == null) return;
                    try {
                        z.close();
                        return;
                    }
                    catch (IOException iOException) {}
                    return;
                }
            }
            if (bundleManifestIn == null) break block50;
            try {
                bundleManifestIn.close();
            }
            catch (IOException iOException) {}
        }
        if (pluginManifestIn != null) {
            try {
                pluginManifestIn.close();
            }
            catch (IOException iOException) {}
        }
        if (z == null) return;
        try {
            z.close();
            return;
        }
        catch (IOException iOException) {}
    }

    private void detectUnpackedPlugin(File file, boolean compareTimeStamps) {
        long dirTimestamp = file.lastModified();
        File pluginFile = new File(file, "META-INF/MANIFEST.MF");
        try {
            BundleManifest bundleManifest = new BundleManifest(pluginFile);
            if (bundleManifest.exists()) {
                if (compareTimeStamps && dirTimestamp <= this.pluginsChangeStamp && pluginFile.lastModified() <= this.pluginsChangeStamp) {
                    return;
                }
                PluginEntry entry = bundleManifest.getPluginEntry();
                this.addPluginEntry(entry);
            } else {
                pluginFile = new File(file, "plugin.xml");
                if (!pluginFile.exists()) {
                    pluginFile = new File(file, "fragment.xml");
                }
                if (pluginFile.exists() && !pluginFile.isDirectory()) {
                    if (compareTimeStamps && dirTimestamp <= this.pluginsChangeStamp && pluginFile.lastModified() <= this.pluginsChangeStamp) {
                        return;
                    }
                    PluginEntry entry = pluginParser.parse(pluginFile);
                    this.addPluginEntry(entry);
                }
            }
        }
        catch (IOException e) {
            String pluginFileString = pluginFile.getAbsolutePath();
            if (ConfigurationActivator.DEBUG) {
                Utils.log(Utils.newStatus(NLS.bind((String)Messages.InstalledSiteParser_ErrorParsingFile, (Object[])new String[]{pluginFileString}), e));
            } else {
                Utils.log(NLS.bind((String)Messages.InstalledSiteParser_ErrorAccessing, (Object[])new String[]{pluginFileString}));
            }
        }
        catch (SAXException sAXException) {
            String pluginFileString = pluginFile.getAbsolutePath();
            Utils.log(NLS.bind((String)Messages.InstalledSiteParser_ErrorParsingFile, (Object[])new String[]{pluginFileString}));
        }
    }

    private synchronized String[] getDetectedFeatures() {
        if (this.featureEntries == null) {
            this.detectFeatures();
        }
        String[] features = new String[this.featureEntries.size()];
        Iterator iterator = this.featureEntries.values().iterator();
        int i = 0;
        while (i < features.length) {
            features[i] = ((FeatureEntry)iterator.next()).getURL();
            ++i;
        }
        return features;
    }

    private synchronized String[] getDetectedPlugins() {
        if (this.pluginEntries == null) {
            this.detectPlugins();
        }
        String[] plugins = new String[this.pluginEntries.size()];
        int i = 0;
        while (i < plugins.length) {
            plugins[i] = ((PluginEntry)this.pluginEntries.get(i)).getURL();
            ++i;
        }
        return plugins;
    }

    private void computeChangeStamp() {
        this.changeStamp = Math.max(this.computeFeaturesChangeStamp(), this.computePluginsChangeStamp());
    }

    private synchronized long computeFeaturesChangeStamp() {
        if (this.featuresChangeStamp > 0L) {
            return this.featuresChangeStamp;
        }
        long start = 0L;
        if (ConfigurationActivator.DEBUG) {
            start = new Date().getTime();
        }
        String[] features = this.getFeatures();
        long dirStamp = 0L;
        if (PlatformConfiguration.supportsDetection(this.resolvedURL, this.config.getInstallURL())) {
            File root = new File(this.resolvedURL.getFile().replace('/', File.separatorChar));
            File featuresDir = new File(root, "features");
            dirStamp = featuresDir.lastModified();
        }
        this.featuresChangeStamp = Math.max(dirStamp, this.computeStamp(features));
        if (ConfigurationActivator.DEBUG) {
            long end = new Date().getTime();
            Utils.debug(String.valueOf(this.resolvedURL.toString()) + " feature stamp: " + this.featuresChangeStamp + " in " + (end - start) + "ms");
        }
        return this.featuresChangeStamp;
    }

    private synchronized long computePluginsChangeStamp() {
        if (this.pluginsChangeStamp > 0L) {
            return this.pluginsChangeStamp;
        }
        if (!PlatformConfiguration.supportsDetection(this.resolvedURL, this.config.getInstallURL())) {
            Utils.log(NLS.bind((String)Messages.SiteEntry_computePluginStamp, (Object[])new String[]{this.resolvedURL.toExternalForm()}));
            return 0L;
        }
        File root = new File(this.resolvedURL.getFile().replace('/', File.separatorChar));
        File pluginsDir = new File(root, "plugins");
        if (!pluginsDir.exists() || !pluginsDir.isDirectory()) {
            Utils.debug(NLS.bind((String)Messages.SiteEntry_pluginsDir, (Object[])new String[]{pluginsDir.getAbsolutePath()}));
            return 0L;
        }
        this.pluginsChangeStamp = pluginsDir.lastModified();
        return this.pluginsChangeStamp;
    }

    private long computeStamp(String[] targets) {
        long result = 0L;
        if (!PlatformConfiguration.supportsDetection(this.resolvedURL, this.config.getInstallURL())) {
            int i = 0;
            while (i < targets.length) {
                result ^= (long)targets[i].hashCode();
                ++i;
            }
            Utils.debug("*WARNING* computing stamp using URL hashcodes only");
        } else {
            File rootFile = new File(this.resolvedURL.getFile().replace('/', File.separatorChar));
            if (rootFile.exists()) {
                File f = null;
                int i = 0;
                while (i < targets.length) {
                    f = new File(rootFile, targets[i]);
                    if (f.exists()) {
                        result = Math.max(result, f.lastModified());
                    }
                    ++i;
                }
            }
        }
        return result;
    }

    public void setLinkFileName(String linkFileName) {
        this.linkFileName = linkFileName;
    }

    public String getLinkFileName() {
        return this.linkFileName;
    }

    public boolean isExternallyLinkedSite() {
        return this.linkFileName != null && !this.linkFileName.trim().equals("");
    }

    public synchronized void refresh() {
        this.featuresChangeStamp = 0L;
        this.pluginsChangeStamp = 0L;
        this.changeStamp = 0L;
        this.featureEntries = null;
        this.pluginEntries = null;
    }

    public void refreshPlugins() {
        this.pluginsChangeStamp = 0L;
        this.changeStamp = 0L;
        this.pluginEntries = null;
    }

    public void addFeatureEntry(IPlatformConfiguration.IFeatureEntry feature) {
        FeatureEntry existing;
        if (this.featureEntries == null) {
            this.featureEntries = new HashMap();
        }
        if ((existing = (FeatureEntry)this.featureEntries.get(feature.getFeatureIdentifier())) != null) {
            VersionedIdentifier existingVersion = new VersionedIdentifier(existing.getFeatureIdentifier(), existing.getFeatureVersion());
            VersionedIdentifier newVersion = new VersionedIdentifier(feature.getFeatureIdentifier(), feature.getFeatureVersion());
            if (existingVersion.getVersion().compareTo(newVersion.getVersion()) < 0) {
                this.featureEntries.put(feature.getFeatureIdentifier(), feature);
                this.pluginsChangeStamp = 0L;
            } else if (existingVersion.equals(newVersion) && feature instanceof FeatureEntry && existing instanceof FeatureEntry && !((FeatureEntry)feature).getURL().equals(existing.getURL())) {
                Utils.log(NLS.bind((String)Messages.SiteEntry_duplicateFeature, (Object[])new String[]{this.getURL().toExternalForm(), existing.getFeatureIdentifier()}));
            }
        } else {
            this.featureEntries.put(feature.getFeatureIdentifier(), feature);
            this.pluginsChangeStamp = 0L;
        }
        if (feature instanceof FeatureEntry) {
            ((FeatureEntry)feature).setSite(this);
        }
    }

    public FeatureEntry[] getFeatureEntries() {
        if (this.featureEntries == null) {
            this.detectFeatures();
        }
        if (this.featureEntries == null) {
            return new FeatureEntry[0];
        }
        return this.featureEntries.values().toArray(new FeatureEntry[this.featureEntries.size()]);
    }

    public void addPluginEntry(PluginEntry plugin) {
        if (this.pluginEntries == null) {
            this.pluginEntries = new ArrayList();
        }
        this.pluginEntries.add(plugin);
    }

    public PluginEntry[] getAllPluginEntries() {
        if (this.pluginEntries == null) {
            this.detectPlugins();
        }
        return this.pluginEntries.toArray(new PluginEntry[this.pluginEntries.size()]);
    }

    public void loadFromDisk(long lastChange) throws CoreException {
        this.featuresChangeStamp = lastChange;
        this.pluginsChangeStamp = lastChange;
        this.detectFeatures();
        this.detectPlugins();
    }

    public Element toXML(Document doc) {
        int i;
        Element siteElement = doc.createElement("site");
        if (this.getURL() != null) {
            URL toPersist = this.config == null || this.config.isTransient() ? this.getURL() : Utils.makeRelative(Utils.getInstallURL(), this.getURL());
            siteElement.setAttribute("url", toPersist.toString());
        }
        siteElement.setAttribute("enabled", this.isEnabled() ? "true" : "false");
        siteElement.setAttribute("updateable", this.isUpdateable() ? "true" : "false");
        if (this.isExternallyLinkedSite()) {
            siteElement.setAttribute("linkfile", this.getLinkFileName().trim().replace(File.separatorChar, '/'));
        }
        int type = this.getSitePolicy().getType();
        String typeString = "UNKNOWN";
        try {
            typeString = CFG_POLICY_TYPE[type];
        }
        catch (IndexOutOfBoundsException indexOutOfBoundsException) {}
        siteElement.setAttribute("policy", typeString);
        String[] list = this.getSitePolicy().getList();
        if (list.length > 0) {
            StringBuffer sb = new StringBuffer(256);
            i = 0;
            while (i < list.length - 1) {
                sb.append(list[i]);
                sb.append(',');
                ++i;
            }
            sb.append(list[list.length - 1]);
            siteElement.setAttribute("list", sb.toString());
        }
        FeatureEntry[] feats = this.getFeatureEntries();
        i = 0;
        while (i < feats.length) {
            Element featureElement = feats[i].toXML(doc);
            siteElement.appendChild(featureElement);
            ++i;
        }
        return siteElement;
    }

    private void validateFeatureEntries() {
        File root = new File(this.resolvedURL.getFile().replace('/', File.separatorChar));
        Iterator iterator = this.featureEntries.values().iterator();
        ArrayList<String> deletedFeatures = new ArrayList<String>();
        while (iterator.hasNext()) {
            FeatureEntry feature = (FeatureEntry)iterator.next();
            File featureXML = new File(root, feature.getURL());
            if (featureXML.exists()) continue;
            deletedFeatures.add(feature.getFeatureIdentifier());
        }
        Iterator it = deletedFeatures.iterator();
        while (it.hasNext()) {
            this.featureEntries.remove(it.next());
        }
    }

    private void validatePluginEntries() {
        File root = new File(this.resolvedURL.getFile().replace('/', File.separatorChar));
        ArrayList<PluginEntry> deletedPlugins = new ArrayList<PluginEntry>();
        int i = 0;
        while (i < this.pluginEntries.size()) {
            PluginEntry plugin = (PluginEntry)this.pluginEntries.get(i);
            File pluginLocation = new File(root, plugin.getURL());
            if (!pluginLocation.exists()) {
                deletedPlugins.add(plugin);
            }
            ++i;
        }
        Iterator it = deletedPlugins.iterator();
        while (it.hasNext()) {
            this.pluginEntries.remove(it.next());
        }
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void setEnabled(boolean enable) {
        this.enabled = enable;
    }

    public FeatureEntry getFeatureEntry(String id) {
        FeatureEntry[] features = this.getFeatureEntries();
        int i = 0;
        while (i < features.length) {
            if (features[i].getFeatureIdentifier().equals(id)) {
                return features[i];
            }
            ++i;
        }
        return null;
    }

    public boolean unconfigureFeatureEntry(IPlatformConfiguration.IFeatureEntry feature) {
        FeatureEntry existingFeature = this.getFeatureEntry(feature.getFeatureIdentifier());
        if (existingFeature != null) {
            this.featureEntries.remove(existingFeature.getFeatureIdentifier());
        }
        return existingFeature != null;
    }

    public void initialized() {
        if (this.featureEntries == null) {
            this.featureEntries = new HashMap();
        }
    }
}

