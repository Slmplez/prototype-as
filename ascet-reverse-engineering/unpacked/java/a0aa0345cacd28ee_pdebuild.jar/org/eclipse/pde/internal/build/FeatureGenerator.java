/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.ResolverError
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Filter
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.ProductFile;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.XMLWriter;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeSite;
import org.eclipse.pde.internal.build.site.PDEState;
import org.osgi.framework.Filter;
import org.osgi.framework.Version;

public class FeatureGenerator
extends AbstractScriptGenerator {
    private String featureId = null;
    private String version = null;
    private String nestedInclusions = null;
    private String productFile = null;
    private String[] pluginList = null;
    private String[] fragmentList = null;
    private String[] featureList = null;
    private boolean includeLaunchers = true;
    private ProductFile product = null;
    private boolean verify = false;
    private Properties antProperties;
    private Properties buildProperties;

    private static Set createSet(String[] contents) {
        if (contents == null) {
            return new LinkedHashSet(0);
        }
        LinkedHashSet<Entry> result = new LinkedHashSet<Entry>(contents.length);
        int i = 0;
        while (i < contents.length) {
            if (contents[i] != null) {
                StringTokenizer tokenizer = new StringTokenizer(contents[i], ";");
                Entry entry = new Entry(tokenizer.nextToken());
                while (tokenizer.hasMoreTokens()) {
                    String token = tokenizer.nextToken();
                    int idx = token.indexOf(61);
                    if (idx == -1) continue;
                    String value = token.substring(idx + 1, token.length()).trim();
                    if (value.startsWith("\"") && value.endsWith("\"")) {
                        value = value.substring(1, value.length() - 1);
                    }
                    entry.addAttribute(token.substring(0, idx), value);
                }
                result.add(entry);
            }
            ++i;
        }
        return result;
    }

    public void generate() throws CoreException {
        AbstractScriptGenerator.setStaticAntProperties(this.antProperties);
        try {
            this.initialize();
            LinkedHashSet<Entry> plugins = null;
            Set features = null;
            LinkedHashSet<Entry> fragments = null;
            if (this.shouldNestInclusions()) {
                features = FeatureGenerator.createSet(new String[]{this.generateNestedRequirements()});
                fragments = new LinkedHashSet<Entry>();
                plugins = new LinkedHashSet<Entry>();
            } else {
                plugins = FeatureGenerator.createSet(this.pluginList);
                features = FeatureGenerator.createSet(this.featureList);
                fragments = FeatureGenerator.createSet(this.fragmentList);
            }
            if (this.product != null) {
                List entries = this.product.getProductEntries();
                Iterator iterator = entries.iterator();
                while (iterator.hasNext()) {
                    FeatureEntry featureEntry = (FeatureEntry)iterator.next();
                    Entry newEntry = new Entry(featureEntry.getId(), featureEntry.getVersion());
                    if (featureEntry.unpackSet()) {
                        newEntry.addAttribute("unpack", String.valueOf(featureEntry.isUnpack()));
                    }
                    if (featureEntry.isFragment()) {
                        fragments.add(newEntry);
                        continue;
                    }
                    if (featureEntry.isPlugin()) {
                        plugins.add(newEntry);
                        continue;
                    }
                    features.add(newEntry);
                }
            }
            try {
                this.createFeature(this.featureId, plugins, fragments, features);
            }
            catch (FileNotFoundException e) {
                Status status = new Status(4, "org.eclipse.pde.build", 23, NLS.bind((String)Messages.error_creatingFeature, (Object)e.getLocalizedMessage()), (Throwable)e);
                throw new CoreException((IStatus)status);
            }
        }
        finally {
            AbstractScriptGenerator.setStaticAntProperties(null);
        }
    }

    private boolean shouldNestInclusions() {
        if (this.nestedInclusions == null || this.nestedInclusions.equalsIgnoreCase("false")) {
            return false;
        }
        if (this.product != null) {
            if (this.buildProperties == null) {
                this.buildProperties = new Properties();
            }
            this.buildProperties.put("generateEclipseProduct", "true");
        }
        if (!(this.pluginList != null && this.pluginList.length != 0 || this.fragmentList != null && this.fragmentList.length != 0 || this.featureList != null && this.featureList.length != 0 || this.buildProperties != null && this.buildProperties.size() != 0)) {
            return false;
        }
        if (this.nestedInclusions.equalsIgnoreCase("true")) {
            return this.product != null;
        }
        return true;
    }

    private String generateNestedRequirements() throws CoreException {
        String nestedId = null;
        String nestedVersion = null;
        String productKey = null;
        if (this.product != null) {
            nestedId = String.valueOf(this.product.getId()) + ".root.feature";
            nestedVersion = this.product.getVersion();
            productKey = "product@" + this.product.getId();
            if (!this.buildProperties.containsKey("generatedFeatureLabel") && this.product.getProductName() != null) {
                this.buildProperties.put("generatedFeatureLabel", String.valueOf(this.product.getProductName()) + " Root Files");
            }
        } else {
            nestedId = this.nestedInclusions;
            nestedVersion = this.version != null ? this.version : "1.0.0.qualifier";
        }
        String extraRequires = null;
        if (this.buildProperties != null && productKey != null) {
            extraRequires = (String)this.buildProperties.remove(productKey);
        }
        FeatureGenerator generator = new FeatureGenerator();
        generator.setVerify(this.verify);
        generator.setPluginList(this.pluginList);
        generator.setFeatureList(this.featureList);
        generator.setBuildProperties(this.buildProperties);
        generator.setIncludeLaunchers(false);
        generator.setBuildSiteFactory(this.siteFactory);
        generator.setFeatureId(nestedId);
        generator.setVersion(nestedVersion);
        generator.setPluginPath(this.pluginPath);
        generator.generate();
        if (this.siteFactory == null) {
            this.siteFactory = generator.siteFactory;
        }
        if (productKey != null) {
            this.buildProperties = new Properties();
            extraRequires = extraRequires == null ? "" : String.valueOf(extraRequires) + ",";
            extraRequires = String.valueOf(extraRequires) + "feature@" + nestedId + ";version=" + nestedVersion;
            this.buildProperties.put(productKey, extraRequires);
        } else {
            this.buildProperties = null;
        }
        return String.valueOf(nestedId) + ";version=" + nestedVersion;
    }

    public void setProductFile(String productFile) {
        this.productFile = productFile;
    }

    public void setPluginList(String[] pluginList) {
        this.pluginList = pluginList;
    }

    public void setFeatureList(String[] featureList) {
        this.featureList = featureList;
    }

    public void setFragmentList(String[] fragmentList) {
        this.fragmentList = fragmentList;
    }

    public void setFeatureId(String featureId) {
        this.featureId = featureId;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public void setIncludeLaunchers(boolean includeLaunchers) {
        this.includeLaunchers = includeLaunchers;
    }

    private void initialize() throws CoreException {
        File dir = new File(FeatureGenerator.getWorkingDirectory(), "features/" + this.featureId);
        File xml = new File(dir, "feature.xml");
        if (xml.exists()) {
            xml.delete();
        }
        this.product = this.loadProduct(this.productFile);
    }

    private void addLauncher(PDEState state, Set plugins, Set fragments, Set features) {
        BundleDescription bundle = state.getResolvedBundle("org.eclipse.osgi");
        if (bundle == null) {
            return;
        }
        Version osgiVersion = bundle.getVersion();
        if (osgiVersion.compareTo(new Version("3.3")) < 0) {
            if (!features.contains("org.eclipse.platform.launchers")) {
                features.add(new Entry("org.eclipse.platform.launchers"));
            }
        } else {
            BuildTimeFeature executableFeature = null;
            try {
                executableFeature = this.getSite(false).findFeature("org.eclipse.equinox.executable", (String)null, false);
            }
            catch (CoreException e) {
                BundleHelper.getDefault().getLog().log(e.getStatus());
            }
            if (executableFeature != null) {
                if (!features.contains("org.eclipse.equinox.executable")) {
                    features.add(new Entry("org.eclipse.equinox.executable"));
                }
            } else {
                plugins.add(new Entry("org.eclipse.equinox.launcher"));
                List configs = FeatureGenerator.getConfigInfos();
                Iterator iterator = configs.iterator();
                while (iterator.hasNext()) {
                    Config config = (Config)iterator.next();
                    String fragment = "org.eclipse.equinox.launcher." + config.getWs() + '.' + config.getOs();
                    if (config.getOs().compareToIgnoreCase("macosx") != 0 || config.getArch().equals("x86_64")) {
                        fragment = String.valueOf(fragment) + '.' + config.getArch();
                    }
                    if (fragments.contains(fragment)) continue;
                    Entry entry = new Entry(fragment);
                    entry.addAttribute("unpack", "true");
                    fragments.add(entry);
                }
            }
        }
    }

    protected void createFeature(String feature, Set plugins, Set fragments, Set features) throws CoreException, FileNotFoundException {
        String location = "features/" + feature;
        File directory = new File(FeatureGenerator.getWorkingDirectory(), location);
        if (!directory.exists()) {
            directory.mkdirs();
        }
        PDEState state = this.verify ? this.getSite(false).getRegistry() : null;
        BundleHelper helper = BundleHelper.getDefault();
        if (this.verify && this.includeLaunchers) {
            this.addLauncher(state, plugins, fragments, features);
        }
        String featureName = this.buildProperties != null ? (String)this.buildProperties.get("generatedFeatureLabel") : null;
        File file = new File(directory, "feature.xml");
        BufferedOutputStream output = new BufferedOutputStream(new FileOutputStream(file));
        XMLWriter writer = null;
        try {
            writer = new XMLWriter(output);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return;
        }
        try {
            String name;
            Entry entry;
            LinkedHashMap<String, String> parameters = new LinkedHashMap<String, String>();
            Hashtable<String, String> environment = new Hashtable<String, String>(3);
            parameters.put("id", feature);
            parameters.put("version", this.version != null ? this.version : "1.0.0");
            if (featureName != null) {
                parameters.put("label", featureName);
            }
            writer.startTag("feature", parameters, true);
            boolean fragment = false;
            List configs = FeatureGenerator.getConfigInfos();
            configs.remove(Config.genericConfig());
            Iterator configIterator = configs.iterator();
            Iterator listIter = plugins.iterator();
            if (!listIter.hasNext()) {
                fragment = true;
                listIter = fragments.iterator();
            }
            Config currentConfig = Config.genericConfig();
            while (currentConfig != null) {
                ((Dictionary)environment).put("osgi.os", currentConfig.getOs());
                ((Dictionary)environment).put("osgi.ws", currentConfig.getWs());
                ((Dictionary)environment).put("osgi.arch", currentConfig.getArch());
                while (listIter.hasNext()) {
                    boolean writeBundle;
                    entry = (Entry)listIter.next();
                    name = entry.getId();
                    String bundleVersion = entry.getVersion();
                    boolean guessedUnpack = true;
                    boolean bl = writeBundle = !this.verify;
                    if (this.verify) {
                        BundleDescription bundle = state.getResolvedBundle(name, bundleVersion);
                        if (bundle != null) {
                            Filter filter = helper.getFilter(bundle);
                            if (filter == null || filter.match(environment)) {
                                writeBundle = true;
                                guessedUnpack = Utils.guessUnpack(bundle, (String[])state.getExtraData().get(new Long(bundle.getBundleId())));
                                if (currentConfig.equals(Config.genericConfig())) {
                                    listIter.remove();
                                }
                            }
                        } else {
                            if (bundleVersion != null) {
                                bundle = state.getBundle(name, bundleVersion, false);
                            } else {
                                BundleDescription[] bundles = state.getState().getBundles(name);
                                BundleDescription bundleDescription = bundle = bundles != null && bundles.length > 0 ? bundles[0] : null;
                            }
                            if (bundle != null) {
                                ResolverError[] errors = state.getState().getResolverErrors(bundle);
                                if (!BuildTimeSite.isConfigError(bundle, errors, configs)) {
                                    BuildTimeSite.missingPlugin(bundle, errors, null, true);
                                }
                            } else {
                                String message = NLS.bind((String)Messages.exception_missingPlugin, (Object)(bundleVersion != null ? String.valueOf(name) + "_" + bundleVersion : name));
                                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 5, message, null));
                            }
                        }
                    }
                    if (writeBundle) {
                        parameters.clear();
                        parameters.put("id", name);
                        parameters.put("version", bundleVersion);
                        parameters.put("unpack", guessedUnpack ? "true" : "false");
                        if (!currentConfig.equals(Config.genericConfig())) {
                            parameters.put("os", currentConfig.getOs());
                            parameters.put("ws", currentConfig.getWs());
                            parameters.put("arch", currentConfig.getArch());
                        }
                        if (fragment) {
                            parameters.put("fragment", "true");
                        }
                        parameters.putAll(entry.getAttributes());
                        writer.printTag("plugin", parameters, true, true, true);
                    }
                    if (fragment || listIter.hasNext() || fragments.size() <= 0) continue;
                    fragment = true;
                    listIter = fragments.iterator();
                }
                if (!this.verify || !configIterator.hasNext()) break;
                if (plugins.size() > 0) {
                    fragment = false;
                    listIter = plugins.iterator();
                } else {
                    listIter = fragments.iterator();
                }
                currentConfig = (Config)configIterator.next();
            }
            Iterator iter = features.iterator();
            while (iter.hasNext()) {
                entry = (Entry)iter.next();
                name = entry.getId();
                String featureVersion = entry.getVersion();
                if (this.verify) {
                    boolean exception = true;
                    if (this.buildProperties != null && this.buildProperties.containsKey("generate.feature@" + name)) {
                        exception = false;
                    }
                    this.getSite(false).findFeature(name, featureVersion, exception);
                }
                parameters.clear();
                parameters.put("id", name);
                parameters.put("version", featureVersion);
                parameters.putAll(entry.getAttributes());
                writer.printTag("includes", parameters, true, true, true);
            }
            writer.endTag("feature");
        }
        finally {
            writer.close();
        }
        this.createBuildProperties(directory);
        this.getSite(false).addFeatureReferenceModel(directory);
    }

    protected void createBuildProperties(File directory) {
        block15: {
            File file = new File(directory, "build.properties");
            if (this.buildProperties == null) {
                this.buildProperties = new Properties();
                this.buildProperties.put("pde", "marker");
            }
            OutputStream stream = null;
            try {
                try {
                    stream = new BufferedOutputStream(new FileOutputStream(file));
                    this.buildProperties.store(stream, "");
                    stream.flush();
                }
                catch (IOException iOException) {
                    if (stream != null) {
                        try {
                            stream.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    break block15;
                }
            }
            catch (Throwable throwable) {
                if (stream != null) {
                    try {
                        stream.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (stream != null) {
                try {
                    stream.close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    public void setBuildProperties(String file) {
        this.buildProperties = new Properties();
        File propertiesFile = new File(file);
        if (propertiesFile.exists()) {
            try {
                BufferedInputStream input = new BufferedInputStream(new FileInputStream(file));
                try {
                    this.buildProperties.load(input);
                }
                finally {
                    ((InputStream)input).close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    public void setBuildProperties(Properties properties) {
        this.buildProperties = properties;
    }

    public void setVerify(boolean verify) {
        this.verify = verify;
        this.reportResolutionErrors = verify;
    }

    public void setImmutableAntProperties(Properties properties) {
        this.antProperties = properties;
    }

    public void setNestedInclusions(String nested) {
        this.nestedInclusions = nested;
    }

    private static class Entry {
        private final String id;
        private String version = "0.0.0";
        private Map attributes;

        public Entry(String id) {
            this.id = id;
        }

        public Entry(String id, String version) {
            this.id = id;
            this.version = version;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Entry) {
                Entry objEntry = (Entry)obj;
                if (!this.id.equals(((Entry)obj).id) || !this.version.equals(objEntry.version)) {
                    return false;
                }
                return this.getAttributes().equals(objEntry.getAttributes());
            }
            return this.id.equals(obj);
        }

        public int hashCode() {
            return this.id.hashCode() + this.version.hashCode() + this.getAttributes().hashCode();
        }

        public Map getAttributes() {
            if (this.attributes != null) {
                return this.attributes;
            }
            return Collections.EMPTY_MAP;
        }

        public void addAttribute(String key, String value) {
            if ("version".equals(key)) {
                if (value != null && value.length() > 0) {
                    this.version = value;
                }
                return;
            }
            if (this.attributes == null) {
                this.attributes = new LinkedHashMap();
            }
            this.attributes.put(key, value);
        }

        public String getId() {
            return this.id;
        }

        public String getVersion() {
            return this.version;
        }

        public String toString() {
            return String.valueOf(this.id) + '_' + this.version;
        }
    }
}

