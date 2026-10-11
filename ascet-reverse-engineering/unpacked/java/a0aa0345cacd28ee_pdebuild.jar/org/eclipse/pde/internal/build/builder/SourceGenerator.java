/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.Feature
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry
 *  org.eclipse.equinox.p2.publisher.eclipse.URLEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.builder;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry;
import org.eclipse.equinox.p2.publisher.eclipse.URLEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.SourceFeatureWriter;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeSite;
import org.eclipse.pde.internal.build.site.PDEState;
import org.osgi.framework.Version;

public class SourceGenerator
implements IPDEBuildConstants,
IBuildPropertiesConstants {
    private static final String COMMENT_START_TAG = "<!--";
    private static final String COMMENT_END_TAG = "-->";
    private static final String PLUGIN_START_TAG = "<plugin";
    private static final String FEATURE_START_TAG = "<feature";
    private static final String FRAGMENT_START_TAG = "<fragment";
    private static final String VERSION = "version";
    private static final String PLUGIN_VERSION = "plugin-version";
    private static final String TEMPLATE = "data";
    private String featureRootLocation;
    private String sourceFeatureId;
    private String brandingPlugin;
    private Properties buildProperties;
    private boolean individualSourceBundles = false;
    private BuildDirector director;
    private String[] extraEntries;
    private Map excludedEntries;

    public void setSourceFeatureId(String id) {
        this.sourceFeatureId = id;
    }

    public void setExtraEntries(String[] extraEntries) {
        this.extraEntries = extraEntries;
    }

    public void setDirector(BuildDirector director) {
        this.director = director;
    }

    public void setIndividual(boolean individual) {
        this.individualSourceBundles = individual;
    }

    private void initialize(BuildTimeFeature feature, String sourceFeatureName) throws CoreException {
        this.featureRootLocation = feature.getRootLocation();
        this.setSourceFeatureId(sourceFeatureName);
        this.collectSourceEntries(feature);
    }

    private BuildTimeSite getSite() throws CoreException {
        return this.director.getSite(false);
    }

    private String getWorkingDirectory() {
        return AbstractScriptGenerator.getWorkingDirectory();
    }

    private Properties getBuildProperties() throws CoreException {
        if (this.buildProperties == null) {
            this.buildProperties = AbstractScriptGenerator.readProperties(this.featureRootLocation, "build.properties", 0);
        }
        return this.buildProperties;
    }

    protected Properties getBuildProperties(BundleDescription model) throws CoreException {
        return AbstractScriptGenerator.readProperties(model.getLocation(), "build.properties", 0);
    }

    private String getSourcePluginName(FeatureEntry plugin, boolean versionSuffix) {
        return String.valueOf(plugin.getId()) + (versionSuffix ? "_" + plugin.getVersion() : "");
    }

    private void collectSourceEntries(BuildTimeFeature feature) throws CoreException {
        FeatureEntry[] pluginList = feature.getPluginEntries();
        int i = 0;
        while (i < pluginList.length) {
            FeatureEntry entry = pluginList[i];
            if (this.director.selectConfigs((IPlatformEntry)entry).size() != 0) {
                String versionRequested = entry.getVersion();
                BundleDescription model = this.getSite().getRegistry().getResolvedBundle(entry.getId(), versionRequested);
                if (model != null) {
                    this.collectSourcePlugins(feature, pluginList[i], model);
                }
            }
            ++i;
        }
    }

    private void collectSourcePlugins(BuildTimeFeature feature, FeatureEntry pluginEntry, BundleDescription model) throws CoreException {
        if (this.individualSourceBundles) {
            return;
        }
        String sourceId = this.computeSourceFeatureName(feature, false);
        if (pluginEntry.getOS() == null && pluginEntry.getWS() == null && pluginEntry.getArch() == null) {
            this.director.sourceToGather.addElementEntry(sourceId, model);
            return;
        }
        List correctConfigs = this.director.selectConfigs((IPlatformEntry)pluginEntry);
        Iterator iter = correctConfigs.iterator();
        while (iter.hasNext()) {
            Config configInfo = (Config)iter.next();
            this.director.sourceToGather.addElementEntry(String.valueOf(sourceId) + "." + configInfo.toString("."), model);
        }
    }

    public BuildTimeFeature generateSourceFeature(BuildTimeFeature feature, String sourceFeatureName) throws CoreException {
        this.initialize(feature, sourceFeatureName);
        BuildTimeFeature sourceFeature = this.createSourceFeature(feature);
        this.associateExtraEntries(sourceFeature);
        if (this.individualSourceBundles) {
            this.brandingPlugin = feature.getBrandingPlugin();
            if (this.brandingPlugin != null) {
                this.brandingPlugin = String.valueOf(this.brandingPlugin) + ".source";
                sourceFeature.setBrandingPlugin(this.brandingPlugin);
            } else {
                this.brandingPlugin = sourceFeature.getId();
            }
            FeatureEntry[] plugins = feature.getPluginEntries();
            int i = 0;
            while (i < plugins.length) {
                if (this.director.selectConfigs((IPlatformEntry)plugins[i]).size() != 0) {
                    this.createSourceBundle(sourceFeature, plugins[i]);
                }
                ++i;
            }
        } else {
            FeatureEntry sourcePlugin = AbstractScriptGenerator.isBuildingOSGi() ? this.create30SourcePlugin(sourceFeature) : this.createSourcePlugin(sourceFeature);
            this.generateSourceFragments(sourceFeature, sourcePlugin);
        }
        this.writeSourceFeature(sourceFeature);
        return sourceFeature;
    }

    private void associateExtraEntries(BuildTimeFeature sourceFeature) throws CoreException {
        int i = 1;
        while (i < this.extraEntries.length) {
            FeatureEntry entry;
            Map items = Utils.parseExtraBundlesString(this.extraEntries[i], true);
            String id = (String)items.get("id");
            Version version = (Version)items.get(VERSION);
            if (this.extraEntries[i].startsWith("feature@")) {
                entry = new FeatureEntry(id, version.toString(), false);
                if (items.containsKey("optional")) {
                    entry.setOptional(((Boolean)items.get("optional")).booleanValue());
                }
                entry.setEnvironment((String)items.get("os"), (String)items.get("ws"), (String)items.get("arch"), null);
                sourceFeature.addEntry(entry);
            } else if (this.extraEntries[i].startsWith("plugin@")) {
                BundleDescription model = this.getSite().getRegistry().getResolvedBundle((String)items.get("id"), ((Version)items.get(VERSION)).toString());
                if (model == null) {
                    IStatus status = this.getSite().missingPlugin(id, version.toString(), null, false);
                    BundleHelper.getDefault().getLog().log(status);
                } else {
                    entry = new FeatureEntry(model.getSymbolicName(), model.getVersion().toString(), true);
                    entry.setUnpack(((Boolean)items.get("unpack")).booleanValue());
                    entry.setEnvironment((String)items.get("os"), (String)items.get("ws"), (String)items.get("arch"), null);
                    sourceFeature.addEntry(entry);
                }
            } else if (this.extraEntries[i].startsWith("exclude@")) {
                if (this.excludedEntries == null) {
                    this.excludedEntries = new HashMap();
                }
                if (this.excludedEntries.containsKey(id)) {
                    ((List)this.excludedEntries.get(id)).add(version);
                } else {
                    ArrayList<Version> versionList = new ArrayList<Version>();
                    versionList.add(version);
                    this.excludedEntries.put(id, versionList);
                }
            }
            ++i;
        }
    }

    private void generateSourceFragments(BuildTimeFeature sourceFeature, FeatureEntry sourcePlugin) throws CoreException {
        Map fragments = this.director.sourceToGather.getElementEntries();
        Iterator iter = AbstractScriptGenerator.getConfigInfos().iterator();
        while (iter.hasNext()) {
            String sourceFragmentId;
            Set fragmentEntries;
            Config configInfo = (Config)iter.next();
            if (configInfo.equals(Config.genericConfig()) || (fragmentEntries = (Set)fragments.get(sourceFragmentId = String.valueOf(sourceFeature.getId()) + "." + configInfo.toString("."))) == null || fragmentEntries.size() == 0) continue;
            FeatureEntry sourceFragment = new FeatureEntry(sourceFragmentId, sourceFeature.getVersion(), true);
            sourceFragment.setEnvironment(configInfo.getOs(), configInfo.getWs(), configInfo.getArch(), null);
            sourceFragment.setFragment(true);
            if (AbstractScriptGenerator.isBuildingOSGi()) {
                this.create30SourceFragment(sourceFragment, sourcePlugin);
            } else {
                this.createSourceFragment(sourceFragment, sourcePlugin);
            }
            sourceFeature.addEntry(sourceFragment);
        }
    }

    private String computeSourceFeatureName(Feature featureForName, boolean withNumber) throws CoreException {
        String sourceFeatureName = this.getBuildProperties().getProperty("sourceFeature.name");
        if (sourceFeatureName == null) {
            sourceFeatureName = this.sourceFeatureId;
        }
        if (sourceFeatureName == null) {
            sourceFeatureName = String.valueOf(featureForName.getId()) + ".source";
        }
        return String.valueOf(sourceFeatureName) + (withNumber ? "_" + featureForName.getVersion() : "");
    }

    private BuildTimeFeature createSourceFeature(Feature featureExample) throws CoreException {
        String id = this.computeSourceFeatureName(featureExample, false);
        String version = featureExample.getVersion();
        BuildTimeFeature result = new BuildTimeFeature(id, version);
        result.setLabel(featureExample.getLabel());
        result.setProviderName(featureExample.getProviderName());
        result.setImage(featureExample.getImage());
        result.setInstallHandler(featureExample.getInstallHandler());
        result.setInstallHandlerLibrary(featureExample.getInstallHandlerLibrary());
        result.setInstallHandlerURL(featureExample.getInstallHandlerURL());
        result.setDescription(featureExample.getDescription());
        result.setDescriptionURL(featureExample.getDescriptionURL());
        result.setCopyright(featureExample.getCopyright());
        result.setCopyrightURL(featureExample.getCopyrightURL());
        result.setLicense(featureExample.getLicense());
        result.setLicenseURL(featureExample.getLicenseURL());
        result.setLicenseFeature(featureExample.getLicenseFeature());
        result.setLicenseFeatureVersion(featureExample.getLicenseFeatureVersion());
        result.setUpdateSiteLabel(featureExample.getUpdateSiteLabel());
        result.setUpdateSiteURL(featureExample.getUpdateSiteURL());
        URLEntry[] siteEntries = featureExample.getDiscoverySites();
        int i = 0;
        while (i < siteEntries.length) {
            result.addDiscoverySite(siteEntries[i].getAnnotation(), siteEntries[i].getURL());
            ++i;
        }
        result.setEnvironment(featureExample.getOS(), featureExample.getWS(), featureExample.getArch(), null);
        int contextLength = featureExample instanceof BuildTimeFeature ? ((BuildTimeFeature)featureExample).getContextQualifierLength() : -1;
        result.setContextQualifierLength(contextLength);
        return result;
    }

    private FeatureEntry createSourcePlugin(BuildTimeFeature sourceFeature) throws CoreException {
        PDEState state;
        BundleDescription oldBundle;
        File buildProperty;
        StringBuffer buffer;
        FeatureEntry result = new FeatureEntry(sourceFeature.getId(), sourceFeature.getVersion(), true);
        sourceFeature.addEntry(result);
        Path sourcePluginDirURL = new Path(String.valueOf(this.getWorkingDirectory()) + '/' + "plugins" + '/' + this.getSourcePluginName(result, true));
        File sourcePluginDir = sourcePluginDirURL.toFile();
        sourcePluginDir.mkdirs();
        Path templatePluginXML = new Path("data/21/plugin/plugin.xml");
        URL templatePluginURL = BundleHelper.getDefault().find((IPath)templatePluginXML);
        if (templatePluginURL == null) {
            Status status = new Status(2, "org.eclipse.pde.build", 10, NLS.bind((String)Messages.error_readingDirectory, (Object)templatePluginXML), null);
            BundleHelper.getDefault().getLog().log((IStatus)status);
            return null;
        }
        try {
            buffer = Utils.readFile(templatePluginURL.openStream());
        }
        catch (IOException e1) {
            String message = NLS.bind((String)Messages.exception_readingFile, (Object)templatePluginURL.toExternalForm());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e1));
        }
        int beginId = Utils.scan(buffer, 0, "PLUGIN_ID");
        buffer.replace(beginId, beginId + "PLUGIN_ID".length(), result.getId());
        beginId = Utils.scan(buffer, beginId, "PLUGIN_VERSION");
        buffer.replace(beginId, beginId + "PLUGIN_VERSION".length(), result.getVersion());
        try {
            Utils.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(sourcePluginDirURL.append("plugin.xml").toOSString()));
        }
        catch (IOException e1) {
            String message = NLS.bind((String)Messages.exception_writingFile, (Object)templatePluginURL.toExternalForm());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e1));
        }
        Collection copiedFiles = Utils.copyFiles(String.valueOf(this.featureRootLocation) + '/' + "sourceTemplatePlugin", sourcePluginDir.getAbsolutePath());
        if (copiedFiles.contains("plugin.xml")) {
            this.replaceXMLAttribute(sourcePluginDirURL.append("plugin.xml").toOSString(), PLUGIN_START_TAG, VERSION, result.getVersion());
        }
        if (!(buildProperty = sourcePluginDirURL.append("build.properties").toFile()).exists()) {
            copiedFiles.add("plugin.xml");
            copiedFiles.add("src/**/*.zip");
            Properties sourceBuildProperties = new Properties();
            sourceBuildProperties.put("bin.includes", Utils.getStringFromCollection(copiedFiles, ","));
            sourceBuildProperties.put("sourcePlugin", "true");
            try {
                Utils.writeProperties(sourceBuildProperties, buildProperty, null);
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.exception_writingFile, (Object)buildProperty.getAbsolutePath());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
            }
        }
        if ((oldBundle = (state = this.getSite().getRegistry()).getResolvedBundle(result.getId())) != null) {
            state.getState().removeBundle(oldBundle);
        }
        state.addBundle(sourcePluginDir);
        return result;
    }

    private void create30SourceFragment(FeatureEntry fragment, FeatureEntry plugin) throws CoreException {
        File sourceFragmentDir;
        block9: {
            Path sourceFragmentDirURL = new Path(String.valueOf(this.getWorkingDirectory()) + '/' + "plugins" + '/' + this.getSourcePluginName(fragment, true));
            sourceFragmentDir = new File(sourceFragmentDirURL.toOSString());
            new File(sourceFragmentDir, "META-INF").mkdirs();
            try {
                File buildProperty;
                Path fragmentPath = new Path("data/30/fragment/META-INF/MANIFEST.MF");
                URL templateLocation = BundleHelper.getDefault().find((IPath)fragmentPath);
                if (templateLocation == null) {
                    Status status = new Status(2, "org.eclipse.pde.build", 10, NLS.bind((String)Messages.error_readingDirectory, (Object)fragmentPath), null);
                    BundleHelper.getDefault().getLog().log((IStatus)status);
                    return;
                }
                try {
                    InputStream fragmentXML = BundleHelper.getDefault().getBundle().getEntry("data/30/fragment/fragment.xml").openStream();
                    Utils.transferStreams(fragmentXML, new FileOutputStream(sourceFragmentDirURL.append("fragment.xml").toOSString()));
                }
                catch (IOException e1) {
                    String message = NLS.bind((String)Messages.exception_readingFile, (Object)"data/30/fragment/fragment.xml");
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e1));
                }
                StringBuffer buffer = Utils.readFile(templateLocation.openStream());
                int beginId = Utils.scan(buffer, 0, "FRAGMENT_ID");
                buffer.replace(beginId, beginId + "FRAGMENT_ID".length(), fragment.getId());
                beginId = Utils.scan(buffer, beginId, "FRAGMENT_VERSION");
                buffer.replace(beginId, beginId + "FRAGMENT_VERSION".length(), fragment.getVersion());
                beginId = Utils.scan(buffer, beginId, "PLUGIN_ID");
                buffer.replace(beginId, beginId + "PLUGIN_ID".length(), plugin.getId());
                BundleDescription effectivePlugin = this.getSite().getRegistry().getResolvedBundle(plugin.getId(), plugin.getVersion());
                beginId = Utils.scan(buffer, beginId, "PLUGIN_VERSION");
                buffer.replace(beginId, beginId + "PLUGIN_VERSION".length(), effectivePlugin.getVersion().toString());
                beginId = Utils.scan(buffer, beginId, "PLATFORM_FILTER");
                buffer.replace(beginId, beginId + "PLATFORM_FILTER".length(), "(& (osgi.ws=" + fragment.getWS() + ") (osgi.os=" + fragment.getOS() + ") (osgi.arch=" + fragment.getArch() + "))");
                Utils.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(sourceFragmentDirURL.append("META-INF/MANIFEST.MF").toOSString()));
                Collection copiedFiles = Utils.copyFiles(String.valueOf(this.featureRootLocation) + '/' + "sourceTemplateFragment", sourceFragmentDir.getAbsolutePath());
                if (copiedFiles.contains("META-INF/MANIFEST.MF")) {
                    this.replaceManifestValue(sourceFragmentDirURL.append("META-INF/MANIFEST.MF").toOSString(), "Bundle-Version", fragment.getVersion());
                    String host = String.valueOf(plugin.getId()) + ';' + "Bundle-Version" + '=' + effectivePlugin.getVersion().toString();
                    this.replaceManifestValue(sourceFragmentDirURL.append("META-INF/MANIFEST.MF").toOSString(), "Fragment-Host", host);
                }
                if ((buildProperty = sourceFragmentDirURL.append("build.properties").toFile()).exists()) break block9;
                copiedFiles.add("fragment.xml");
                copiedFiles.add("src/**");
                copiedFiles.add("META-INF/MANIFEST.MF");
                Properties sourceBuildProperties = new Properties();
                sourceBuildProperties.put("bin.includes", Utils.getStringFromCollection(copiedFiles, ","));
                sourceBuildProperties.put("sourcePlugin", "true");
                try {
                    Utils.writeProperties(sourceBuildProperties, buildProperty, null);
                }
                catch (IOException e) {
                    String message = NLS.bind((String)Messages.exception_writingFile, (Object)buildProperty.getAbsolutePath());
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
                }
            }
            catch (IOException iOException) {
                String message = NLS.bind((String)Messages.exception_writingFile, (Object)sourceFragmentDir.getName());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, null));
            }
        }
        PDEState state = this.getSite().getRegistry();
        BundleDescription oldBundle = state.getResolvedBundle(fragment.getId());
        if (oldBundle != null) {
            state.getState().removeBundle(oldBundle);
        }
        state.addBundle(sourceFragmentDir);
    }

    private void createSourceFragment(FeatureEntry fragment, FeatureEntry plugin) throws CoreException {
        File sourceFragmentDir;
        block7: {
            Path sourceFragmentDirURL = new Path(String.valueOf(this.getWorkingDirectory()) + '/' + "plugins" + '/' + this.getSourcePluginName(fragment, false));
            sourceFragmentDir = new File(sourceFragmentDirURL.toOSString());
            sourceFragmentDir.mkdirs();
            try {
                File buildProperty;
                Path fragmentPath = new Path("data/21/fragment/fragment.xml");
                URL templateLocation = BundleHelper.getDefault().find((IPath)fragmentPath);
                if (templateLocation == null) {
                    Status status = new Status(2, "org.eclipse.pde.build", 10, NLS.bind((String)Messages.error_readingDirectory, (Object)fragmentPath), null);
                    BundleHelper.getDefault().getLog().log((IStatus)status);
                    return;
                }
                StringBuffer buffer = Utils.readFile(templateLocation.openStream());
                int beginId = Utils.scan(buffer, 0, "FRAGMENT_ID");
                buffer.replace(beginId, beginId + "FRAGMENT_ID".length(), fragment.getId());
                beginId = Utils.scan(buffer, beginId, "FRAGMENT_VERSION");
                buffer.replace(beginId, beginId + "FRAGMENT_VERSION".length(), fragment.getVersion());
                beginId = Utils.scan(buffer, beginId, "PLUGIN_ID");
                buffer.replace(beginId, beginId + "PLUGIN_ID".length(), plugin.getId());
                beginId = Utils.scan(buffer, beginId, "PLUGIN_VERSION");
                buffer.replace(beginId, beginId + "PLUGIN_VERSION".length(), plugin.getVersion());
                Utils.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(sourceFragmentDirURL.append("fragment.xml").toOSString()));
                Collection copiedFiles = Utils.copyFiles(String.valueOf(this.featureRootLocation) + '/' + "sourceTemplateFragment", sourceFragmentDir.getAbsolutePath());
                if (copiedFiles.contains("fragment.xml")) {
                    this.replaceXMLAttribute(sourceFragmentDirURL.append("fragment.xml").toOSString(), FRAGMENT_START_TAG, VERSION, fragment.getVersion());
                    this.replaceXMLAttribute(sourceFragmentDirURL.append("fragment.xml").toOSString(), FRAGMENT_START_TAG, PLUGIN_VERSION, plugin.getVersion());
                }
                if ((buildProperty = sourceFragmentDirURL.append("build.properties").toFile()).exists()) break block7;
                copiedFiles.add("fragment.xml");
                copiedFiles.add("src/**");
                Properties sourceBuildProperties = new Properties();
                sourceBuildProperties.put("bin.includes", Utils.getStringFromCollection(copiedFiles, ","));
                sourceBuildProperties.put("sourcePlugin", "true");
                try {
                    Utils.writeProperties(sourceBuildProperties, buildProperty, null);
                }
                catch (IOException e) {
                    String message = NLS.bind((String)Messages.exception_writingFile, (Object)buildProperty.getAbsolutePath());
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
                }
            }
            catch (IOException iOException) {
                String message = NLS.bind((String)Messages.exception_writingFile, (Object)sourceFragmentDir.getName());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, null));
            }
        }
        PDEState state = this.getSite().getRegistry();
        BundleDescription oldBundle = state.getResolvedBundle(fragment.getId());
        if (oldBundle != null) {
            state.getState().removeBundle(oldBundle);
        }
        state.addBundle(sourceFragmentDir);
    }

    private void writeSourceFeature(BuildTimeFeature sourceFeature) throws CoreException {
        File buildProperty;
        String sourceFeatureDir = String.valueOf(this.getWorkingDirectory()) + '/' + "features" + '/' + this.sourceFeatureId;
        File sourceDir = new File(sourceFeatureDir);
        sourceDir.mkdirs();
        File file = new File(String.valueOf(sourceFeatureDir) + '/' + "feature.xml");
        try {
            SourceFeatureWriter writer = new SourceFeatureWriter(new BufferedOutputStream(new FileOutputStream(file)), sourceFeature, this.getSite());
            try {
                writer.printFeature();
            }
            finally {
                writer.close();
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.error_creatingFeature, (Object)sourceFeature.getId());
            throw new CoreException((IStatus)new Status(0, "org.eclipse.pde.build", 12, message, (Throwable)e));
        }
        Collection copiedFiles = Utils.copyFiles(String.valueOf(this.featureRootLocation) + '/' + "sourceTemplateFeature", sourceFeatureDir);
        if (copiedFiles.contains("feature.xml")) {
            this.replaceXMLAttribute(String.valueOf(sourceFeatureDir) + '/' + "feature.xml", FEATURE_START_TAG, VERSION, sourceFeature.getVersion());
        }
        if ((buildProperty = new File(String.valueOf(sourceFeatureDir) + '/' + "build.properties")).exists()) {
            this.getSite().addFeatureReferenceModel(sourceDir);
            return;
        }
        copiedFiles.add("feature.xml");
        Properties sourceBuildProperties = new Properties();
        sourceBuildProperties.put("bin.includes", Utils.getStringFromCollection(copiedFiles, ","));
        try {
            Utils.writeProperties(sourceBuildProperties, buildProperty, null);
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.exception_writingFile, (Object)buildProperty.getAbsolutePath());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
        }
        this.getSite().addFeatureReferenceModel(sourceDir);
    }

    private void replaceXMLAttribute(String location, String tag, String attr, String newValue) {
        File featureFile = new File(location);
        if (!featureFile.exists()) {
            return;
        }
        StringBuffer buffer = null;
        try {
            buffer = Utils.readFile(featureFile);
        }
        catch (IOException iOException) {
            return;
        }
        int startComment = Utils.scan(buffer, 0, COMMENT_START_TAG);
        int endComment = startComment > -1 ? Utils.scan(buffer, startComment, COMMENT_END_TAG) : -1;
        int startTag = Utils.scan(buffer, 0, tag);
        while (startComment != -1 && startTag > startComment && startTag < endComment) {
            startTag = Utils.scan(buffer, endComment, tag);
            startComment = Utils.scan(buffer, endComment, COMMENT_START_TAG);
            int n = endComment = startComment > -1 ? Utils.scan(buffer, startComment, COMMENT_END_TAG) : -1;
        }
        if (startTag == -1) {
            return;
        }
        int endTag = Utils.scan(buffer, startTag, ">");
        boolean attrFound = false;
        while (!attrFound) {
            int startAttributeWord = Utils.scan(buffer, startTag, attr);
            if (startAttributeWord == -1 || startAttributeWord > endTag) {
                return;
            }
            if (!Character.isWhitespace(buffer.charAt(startAttributeWord - 1))) {
                startTag = startAttributeWord + attr.length();
                continue;
            }
            int endAttributeWord = startAttributeWord + attr.length();
            while (Character.isWhitespace(buffer.charAt(endAttributeWord)) && endAttributeWord < endTag) {
                ++endAttributeWord;
            }
            if (endAttributeWord > endTag) {
                return;
            }
            if (buffer.charAt(endAttributeWord) != '=') {
                startTag = endAttributeWord;
                continue;
            }
            int startVersionId = Utils.scan(buffer, startAttributeWord + 1, "\"");
            int endVersionId = Utils.scan(buffer, startVersionId + 1, "\"");
            buffer.replace(startVersionId + 1, endVersionId, newValue);
            attrFound = true;
        }
        if (attrFound) {
            try {
                Utils.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(featureFile));
            }
            catch (IOException iOException) {}
        }
    }

    private FeatureEntry createSourceBundle(BuildTimeFeature sourceFeature, FeatureEntry pluginEntry) throws CoreException {
        Properties bundleProperties;
        BundleDescription bundle = this.getSite().getRegistry().getBundle(pluginEntry.getId(), pluginEntry.getVersion(), true);
        if (bundle == null) {
            this.getSite().missingPlugin(pluginEntry.getId(), pluginEntry.getVersion(), null, true);
        }
        if (this.excludedEntries != null && this.excludedEntries.containsKey(bundle.getSymbolicName())) {
            List excludedVersions = (List)this.excludedEntries.get(bundle.getSymbolicName());
            Iterator iterator = excludedVersions.iterator();
            while (iterator.hasNext()) {
                Version version = (Version)iterator.next();
                if (!Utils.matchVersions(bundle.getVersion().toString(), version.toString())) continue;
                return null;
            }
        }
        if (!Boolean.valueOf((bundleProperties = this.getBuildProperties(bundle)).getProperty("generateSourceBundle", "true")).booleanValue()) {
            return null;
        }
        FeatureEntry sourceEntry = new FeatureEntry(String.valueOf(pluginEntry.getId()) + ".source", bundle.getVersion().toString(), true);
        sourceEntry.setEnvironment(pluginEntry.getOS(), pluginEntry.getWS(), pluginEntry.getArch(), pluginEntry.getNL());
        sourceEntry.setUnpack(false);
        if (Utils.isBinary(bundle)) {
            Map headerMap;
            Map entryMap;
            BundleDescription sourceBundle = this.getSite().getRegistry().getResolvedBundle(sourceEntry.getId(), sourceEntry.getVersion());
            if (sourceBundle != null && Utils.isSourceBundle(sourceBundle) && (entryMap = (Map)(headerMap = Utils.parseSourceBundleEntry(sourceBundle)).get(bundle.getSymbolicName())) != null && bundle.getVersion().toString().equals(entryMap.get(VERSION))) {
                sourceEntry.setUnpack(new File(sourceBundle.getLocation()).isDirectory());
                FeatureEntry existingEntry = sourceFeature.findPluginEntry(sourceEntry.getId(), sourceEntry.getVersion());
                if (existingEntry == null || existingEntry.getVersion() == "0.0.0") {
                    if (existingEntry != null) {
                        sourceFeature.removeEntry(existingEntry);
                    }
                    sourceFeature.addEntry(sourceEntry);
                    return sourceEntry;
                }
                return existingEntry;
            }
            return null;
        }
        sourceFeature.addEntry(sourceEntry);
        this.generateSourcePlugin(sourceEntry, bundle);
        return sourceEntry;
    }

    private String getSourceRoot(ModelBuildScriptGenerator.CompiledEntry entry) {
        String jarName = entry.getName(false);
        if (jarName.equals(".")) {
            return jarName;
        }
        String srcName = ModelBuildScriptGenerator.getSRCName(entry.getName(false));
        return srcName.substring(0, srcName.length() - 4);
    }

    public void generateSourcePlugin(FeatureEntry sourceEntry, BundleDescription originalBundle) throws CoreException {
        File localizationFile;
        Properties localizationProperties;
        String nameKey;
        Path sourcePluginDirURL = new Path(String.valueOf(this.getWorkingDirectory()) + '/' + "plugins" + '/' + sourceEntry.getId() + '_' + originalBundle.getVersion());
        Manifest manifest = new Manifest();
        Attributes attributes = manifest.getMainAttributes();
        attributes.put(Attributes.Name.MANIFEST_VERSION, "1.0");
        attributes.put(new Attributes.Name("Bundle-ManifestVersion"), "2");
        attributes.put(new Attributes.Name("Bundle-SymbolicName"), sourceEntry.getId());
        attributes.put(new Attributes.Name("Bundle-Version"), originalBundle.getVersion().toString());
        if (originalBundle.getPlatformFilter() != null) {
            attributes.put(new Attributes.Name("Eclipse-PlatformFilter"), originalBundle.getPlatformFilter());
        }
        Properties origBuildProperties = this.getBuildProperties(originalBundle);
        String extraRoots = (String)origBuildProperties.get("src.additionalRoots");
        String sourceHeader = String.valueOf(originalBundle.getSymbolicName()) + ";version=\"" + originalBundle.getVersion().toString() + "\"";
        ModelBuildScriptGenerator.CompiledEntry[] entries = ModelBuildScriptGenerator.extractEntriesToCompile(origBuildProperties, originalBundle);
        if (entries.length > 0 || extraRoots != null) {
            sourceHeader = String.valueOf(sourceHeader) + ";roots:=\"";
            int i = 0;
            while (i < entries.length) {
                if (i > 0) {
                    sourceHeader = String.valueOf(sourceHeader) + ',';
                }
                sourceHeader = String.valueOf(sourceHeader) + this.getSourceRoot(entries[i]);
                ++i;
            }
            if (extraRoots != null) {
                if (entries.length > 0) {
                    sourceHeader = String.valueOf(sourceHeader) + ',';
                }
                sourceHeader = String.valueOf(sourceHeader) + extraRoots;
            }
            sourceHeader = String.valueOf(sourceHeader) + '\"';
        }
        attributes.put(new Attributes.Name("Eclipse-SourceBundle"), sourceHeader);
        String localizationEntry = null;
        String localization = null;
        String vendor = null;
        String name = null;
        Properties bundleProperties = (Properties)originalBundle.getUserObject();
        if (bundleProperties != null) {
            localization = (String)bundleProperties.get("Bundle-Localization");
            vendor = (String)bundleProperties.get("Bundle-Vendor");
            name = (String)bundleProperties.get("Bundle-Name");
        }
        String vendorKey = vendor != null && vendor.startsWith("%") ? vendor.substring(1) : null;
        String string = nameKey = name != null && name.startsWith("%") ? name.substring(1) : null;
        if (localization == null) {
            localization = "plugin";
        } else {
            localizationProperties = null;
            localizationFile = new File(originalBundle.getLocation(), String.valueOf(localization) + ".properties");
            if (!localizationFile.exists() && originalBundle.getHost() != null) {
                BundleDescription host = (BundleDescription)originalBundle.getHost().getSupplier();
                localizationProperties = AbstractScriptGenerator.readProperties(host.getLocation(), String.valueOf(localization) + ".properties", 0);
            } else if (localizationFile.exists()) {
                localizationProperties = AbstractScriptGenerator.readProperties(originalBundle.getLocation(), String.valueOf(localization) + ".properties", 0);
            }
            if (localizationProperties != null) {
                if (vendorKey != null) {
                    vendor = localizationProperties.getProperty(vendorKey);
                }
                if (nameKey != null) {
                    name = localizationProperties.getProperty(nameKey);
                }
            }
        }
        name = name == null ? sourceEntry.getId() : String.valueOf(name) + " Source";
        if (nameKey == null) {
            nameKey = "pluginName";
        }
        if (vendor != null && vendorKey == null) {
            vendorKey = "providerName";
        }
        attributes.put(new Attributes.Name("Bundle-Localization"), localization);
        attributes.put(new Attributes.Name("Bundle-Name"), "%" + nameKey);
        localizationProperties = new Properties();
        localizationProperties.put(nameKey, name);
        if (vendorKey != null && vendor != null) {
            attributes.put(new Attributes.Name("Bundle-Vendor"), "%" + vendorKey);
            localizationProperties.put(vendorKey, vendor);
        }
        localizationEntry = String.valueOf(localization) + ".properties";
        localizationFile = new File(sourcePluginDirURL.toFile(), localizationEntry);
        try {
            Utils.writeProperties(localizationProperties, localizationFile, "#Source Bundle Localization");
        }
        catch (IOException iOException) {}
        File manifestFile = new File(sourcePluginDirURL.toFile(), "META-INF/MANIFEST.MF");
        manifestFile.getParentFile().mkdirs();
        try {
            BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(manifestFile));
            try {
                manifest.write(out);
            }
            finally {
                ((OutputStream)out).close();
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.exception_writingFile, (Object)manifestFile.getAbsolutePath());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
        }
        String template = sourceEntry.getId().equals(this.brandingPlugin) ? "sourceTemplatePlugin" : "sourceTemplateBundle";
        this.generateSourceFiles((IPath)sourcePluginDirURL, sourceEntry, template, localizationEntry, originalBundle);
        PDEState state = this.getSite().getRegistry();
        BundleDescription oldBundle = state.getResolvedBundle(sourceEntry.getId(), sourceEntry.getVersion());
        if (oldBundle != null) {
            state.getState().removeBundle(oldBundle);
        }
        state.addBundle(sourcePluginDirURL.toFile());
        this.director.sourceToGather.addElementEntry(sourceEntry.getId(), originalBundle);
    }

    private FeatureEntry create30SourcePlugin(BuildTimeFeature sourceFeature) throws CoreException {
        StringBuffer buffer;
        FeatureEntry result = new FeatureEntry(sourceFeature.getId(), sourceFeature.getVersion(), true);
        sourceFeature.addEntry(result);
        Path sourcePluginDirURL = new Path(String.valueOf(this.getWorkingDirectory()) + '/' + "plugins" + '/' + this.getSourcePluginName(result, true));
        File sourcePluginDir = sourcePluginDirURL.toFile();
        new File(sourcePluginDir, "META-INF").mkdirs();
        Path templateManifest = new Path("data/30/plugin/META-INF/MANIFEST.MF");
        URL templateManifestURL = BundleHelper.getDefault().find((IPath)templateManifest);
        if (templateManifestURL == null) {
            Status status = new Status(2, "org.eclipse.pde.build", 10, NLS.bind((String)Messages.error_readingDirectory, (Object)templateManifest), null);
            BundleHelper.getDefault().getLog().log((IStatus)status);
            return null;
        }
        try {
            buffer = Utils.readFile(templateManifestURL.openStream());
        }
        catch (IOException e1) {
            String message = NLS.bind((String)Messages.exception_readingFile, (Object)templateManifestURL.toExternalForm());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e1));
        }
        int beginId = Utils.scan(buffer, 0, "PLUGIN_ID");
        buffer.replace(beginId, beginId + "PLUGIN_ID".length(), result.getId());
        beginId = Utils.scan(buffer, beginId, "PLUGIN_VERSION");
        buffer.replace(beginId, beginId + "PLUGIN_VERSION".length(), result.getVersion());
        try {
            Utils.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(sourcePluginDirURL.append("META-INF/MANIFEST.MF").toOSString()));
        }
        catch (IOException e1) {
            String message = NLS.bind((String)Messages.exception_writingFile, (Object)templateManifestURL.toExternalForm());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e1));
        }
        try {
            InputStream pluginXML = BundleHelper.getDefault().getBundle().getEntry("data/30/plugin/plugin.xml").openStream();
            Utils.transferStreams(pluginXML, new FileOutputStream(sourcePluginDirURL.append("plugin.xml").toOSString()));
        }
        catch (IOException e1) {
            String message = NLS.bind((String)Messages.exception_readingFile, (Object)"data/30/plugin/plugin.xml");
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e1));
        }
        this.generateSourceFiles((IPath)sourcePluginDirURL, result, "sourceTemplatePlugin", null, null);
        PDEState state = this.getSite().getRegistry();
        BundleDescription oldBundle = state.getResolvedBundle(result.getId());
        String oldBundleLocation = null;
        if (oldBundle != null) {
            oldBundleLocation = oldBundle.getLocation();
            state.getState().removeBundle(oldBundle);
        }
        state.addBundle(sourcePluginDir);
        if (oldBundleLocation != null) {
            state.getState().resolve(true);
            BundleDescription newBundle = state.getResolvedBundle(result.getId(), result.getVersion());
            if (newBundle != null && !newBundle.getLocation().equals(oldBundleLocation)) {
                Properties bundleProperties = (Properties)newBundle.getUserObject();
                if (bundleProperties == null) {
                    bundleProperties = new Properties();
                    newBundle.setUserObject((Object)bundleProperties);
                }
                bundleProperties.setProperty("oldBundleLocation", oldBundleLocation);
            }
        }
        return result;
    }

    private void generateSourceFiles(IPath sourcePluginDirURL, FeatureEntry sourceEntry, String templateDir, String extraFiles, BundleDescription originalBundle) throws CoreException {
        Collection copiedFiles = Utils.copyFiles(String.valueOf(this.featureRootLocation) + '/' + templateDir, sourcePluginDirURL.toFile().getAbsolutePath());
        if (copiedFiles.contains("META-INF/MANIFEST.MF")) {
            this.replaceManifestValue(sourcePluginDirURL.append("META-INF/MANIFEST.MF").toOSString(), "Bundle-Version", sourceEntry.getVersion());
        }
        String original = originalBundle != null ? String.valueOf(originalBundle.getSymbolicName()) + ';' + originalBundle.getVersion().toString() : "true";
        File buildProperty = sourcePluginDirURL.append("build.properties").toFile();
        if (!buildProperty.exists()) {
            copiedFiles.add("plugin.xml");
            copiedFiles.add("src/**");
            copiedFiles.add("META-INF/MANIFEST.MF");
            Properties sourceBuildProperties = new Properties();
            String binIncludes = Utils.getStringFromCollection(copiedFiles, ",");
            if (extraFiles != null) {
                binIncludes = String.valueOf(binIncludes) + "," + extraFiles;
            }
            sourceBuildProperties.put("bin.includes", binIncludes);
            sourceBuildProperties.put("sourcePlugin", original);
            try {
                Utils.writeProperties(sourceBuildProperties, buildProperty, null);
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.exception_writingFile, (Object)buildProperty.getAbsolutePath());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
            }
        }
        if (originalBundle != null) {
            Properties props = AbstractScriptGenerator.readProperties(sourcePluginDirURL.toOSString(), "build.properties", 0);
            props.put("sourcePlugin", original);
            try {
                Utils.writeProperties(props, buildProperty, null);
            }
            catch (IOException iOException) {}
        }
    }

    private void replaceManifestValue(String location, String attribute, String newVersion) {
        Manifest manifest = null;
        try {
            SequenceInputStream is = new SequenceInputStream(new BufferedInputStream(new FileInputStream(location)), new ByteArrayInputStream(new byte[]{10}));
            try {
                manifest = new Manifest(is);
            }
            finally {
                ((InputStream)is).close();
            }
        }
        catch (IOException iOException) {
            return;
        }
        manifest.getMainAttributes().put(new Attributes.Name(attribute), newVersion);
        BufferedOutputStream os = null;
        try {
            os = new BufferedOutputStream(new FileOutputStream(location));
            try {
                manifest.write(os);
                ((OutputStream)os).write(new byte[]{10});
            }
            finally {
                ((OutputStream)os).close();
            }
        }
        catch (IOException iOException) {}
    }
}

