/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.engine.SimpleProfileRegistry
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.engine.SimpleProfileRegistry;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.IXMLConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.PDEUIStateWrapper;
import org.eclipse.pde.internal.build.ProductFile;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeSite;
import org.eclipse.pde.internal.build.site.BuildTimeSiteFactory;
import org.eclipse.pde.internal.build.site.PDEState;
import org.eclipse.pde.internal.build.site.compatibility.SiteManager;
import org.osgi.framework.Version;

public abstract class AbstractScriptGenerator
implements IXMLConstants,
IPDEBuildConstants,
IBuildPropertiesConstants {
    private static final FilenameFilter METADATA_REPO_FILTER = new FilenameFilter(){

        public boolean accept(File dir, String name) {
            return name.startsWith("content.") || name.startsWith("compositeContent.") || name.endsWith(".profile") || name.endsWith(".profile.gz");
        }
    };
    private static final FilenameFilter ARTIFACT_REPO_FILTER = new FilenameFilter(){

        public boolean accept(File dir, String name) {
            return name.startsWith("artifacts.") || name.startsWith("compositeArtifacts.");
        }
    };
    private static Properties immutableAntProperties = null;
    protected static boolean embeddedSource = false;
    protected static boolean forceUpdateJarFormat = false;
    private static List configInfos;
    protected static String workingDirectory;
    protected static boolean buildingOSGi;
    protected URI[] contextMetadata = null;
    protected URI[] contextArtifacts = null;
    protected AntScript script;
    protected Properties platformProperties;
    protected String productQualifier;
    private static PDEUIStateWrapper pdeUIState;
    protected String[] sitePaths;
    protected String[] pluginPath;
    protected BuildTimeSiteFactory siteFactory;
    protected boolean filterState = false;
    protected List featuresForFilterRoots = new ArrayList();
    protected List pluginsForFilterRoots = new ArrayList();
    protected boolean filterP2Base = false;
    protected boolean reportResolutionErrors;
    private static String PROFILE_TIMESTAMP;
    private static String PROFILE_ID;
    private static String PROFILE_DATA_AREA;
    private static String PROFILE_REGISTRY;

    static {
        buildingOSGi = true;
        configInfos = new ArrayList(1);
        configInfos.add(Config.genericConfig());
        PROFILE_TIMESTAMP = "timestamp";
        PROFILE_ID = "profileId";
        PROFILE_DATA_AREA = "dataArea";
        PROFILE_REGISTRY = "registry";
    }

    public static List getConfigInfos() {
        return configInfos;
    }

    public abstract void generate() throws CoreException;

    protected static void setStaticAntProperties(Properties properties) {
        if (properties == null) {
            immutableAntProperties = new Properties();
            BuildDirector.p2Gathering = false;
        } else {
            immutableAntProperties = properties;
        }
        if (AbstractScriptGenerator.getImmutableAntProperty("packagerMode") == null) {
            immutableAntProperties.setProperty("packagerMode", "false");
        }
        if (!AbstractScriptGenerator.getPropertyAsBoolean("packagerMode") || AbstractScriptGenerator.getImmutableAntProperty("packagerAsNormalizer") == null) {
            immutableAntProperties.setProperty("packagerAsNormalizer", "true");
        }
        if (AbstractScriptGenerator.getPropertyAsBoolean("p2.gathering")) {
            BuildDirector.p2Gathering = true;
        }
    }

    public static String getImmutableAntProperty(String key) {
        return AbstractScriptGenerator.getImmutableAntProperty(key, null);
    }

    public static boolean getPropertyAsBoolean(String key) {
        String booleanValue = AbstractScriptGenerator.getImmutableAntProperty(key, null);
        return "true".equalsIgnoreCase(booleanValue);
    }

    public static String getImmutableAntProperty(String key, String defaultValue) {
        if (immutableAntProperties == null || !immutableAntProperties.containsKey(key)) {
            return defaultValue;
        }
        Object obj = immutableAntProperties.get(key);
        return obj instanceof String ? (String)obj : null;
    }

    public static void setConfigInfo(String spec) throws CoreException {
        configInfos.clear();
        String[] configs = Utils.getArrayFromStringWithBlank(spec, "&");
        configInfos = new ArrayList(configs.length);
        String[] os = new String[configs.length];
        String[] ws = new String[configs.length];
        String[] archs = new String[configs.length];
        int i = 0;
        while (i < configs.length) {
            String[] configElements = Utils.getArrayFromStringWithBlank(configs[i], ",");
            if (configElements.length != 3) {
                Status error = new Status(4, "org.eclipse.pde.build", 22, NLS.bind((String)Messages.error_configWrongFormat, (Object)configs[i]), null);
                throw new CoreException((IStatus)error);
            }
            Config aConfig = new Config(configs[i]);
            if (aConfig.equals(Config.genericConfig())) {
                configInfos.add(Config.genericConfig());
            } else {
                configInfos.add(aConfig);
            }
            os[i] = aConfig.getOs();
            ws[i] = aConfig.getWs();
            archs[i] = aConfig.getArch();
            ++i;
        }
        SiteManager.setOS(Utils.getStringFromArray(os, ","));
        SiteManager.setWS(Utils.getStringFromArray(ws, ","));
        SiteManager.setArch(Utils.getStringFromArray(archs, ","));
    }

    public void setWorkingDirectory(String location) {
        workingDirectory = location;
    }

    public String getLocation(BundleDescription model) {
        return model.getLocation();
    }

    public static Properties readProperties(String location, String fileName, int errorLevel) throws CoreException {
        if (location == null) {
            if (errorLevel != 1 && errorLevel != 0) {
                String message = NLS.bind((String)Messages.exception_missingFile, (Object)fileName);
                BundleHelper.getDefault().getLog().log((IStatus)new Status(errorLevel, "org.eclipse.pde.build", 10, message, null));
            }
            return MissingProperties.getInstance();
        }
        Properties result = new Properties();
        File file = new File(location, fileName);
        try {
            BufferedInputStream input = new BufferedInputStream(new FileInputStream(file));
            try {
                result.load(input);
            }
            finally {
                ((InputStream)input).close();
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            if (errorLevel != 1 && errorLevel != 0) {
                String message = NLS.bind((String)Messages.exception_missingFile, (Object)file);
                BundleHelper.getDefault().getLog().log((IStatus)new Status(errorLevel, "org.eclipse.pde.build", 10, message, null));
            }
            result = MissingProperties.getInstance();
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.exception_readingFile, (Object)file);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 10, message, (Throwable)e));
        }
        return result;
    }

    public void openScript(String scriptLocation, String scriptName) throws CoreException {
        if (this.script != null) {
            return;
        }
        this.script = AbstractScriptGenerator.newAntScript(scriptLocation, scriptName);
    }

    protected static AntScript newAntScript(String scriptLocation, String scriptName) throws CoreException {
        AntScript result = null;
        try {
            BufferedOutputStream scriptStream = new BufferedOutputStream(new FileOutputStream(String.valueOf(scriptLocation) + '/' + scriptName));
            try {
                result = new AntScript(scriptStream);
            }
            catch (IOException e) {
                try {
                    ((OutputStream)scriptStream).close();
                    String message = NLS.bind((String)Messages.exception_writingFile, (Object)(String.valueOf(scriptLocation) + '/' + scriptName));
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
                }
                catch (IOException iOException) {}
            }
        }
        catch (FileNotFoundException e) {
            String message = NLS.bind((String)Messages.exception_writingFile, (Object)(String.valueOf(scriptLocation) + '/' + scriptName));
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
        }
        return result;
    }

    public void closeScript() {
        this.script.close();
    }

    public void setBuildingOSGi(boolean b) {
        buildingOSGi = b;
    }

    public static boolean isBuildingOSGi() {
        return buildingOSGi;
    }

    public static String getWorkingDirectory() {
        return workingDirectory;
    }

    public static String getDefaultOutputFormat() {
        return "zip";
    }

    public static boolean getDefaultEmbeddedSource() {
        return false;
    }

    public static void setEmbeddedSource(boolean embed) {
        embeddedSource = embed;
    }

    public static boolean getForceUpdateJarFormat() {
        return false;
    }

    public static void setForceUpdateJar(boolean force) {
        forceUpdateJarFormat = force;
    }

    public static String getDefaultConfigInfos() {
        return "*, *, *";
    }

    public static boolean getDefaultBuildingOSGi() {
        return true;
    }

    protected static boolean loadP2Class() {
        try {
            BundleHelper.getDefault().getClass().getClassLoader().loadClass("org.eclipse.equinox.p2.publisher.Publisher");
            return true;
        }
        catch (Throwable throwable) {
            return false;
        }
    }

    public BuildTimeSite getSite(boolean refresh) throws CoreException {
        List repos;
        File baseProfile;
        if (this.siteFactory != null && !refresh) {
            return this.siteFactory.createSite();
        }
        BuildTimeSiteFactory factory = new BuildTimeSiteFactory();
        factory.setFilterState(this.filterState);
        factory.setFilterRoots(this.featuresForFilterRoots, this.pluginsForFilterRoots);
        factory.setReportResolutionErrors(this.reportResolutionErrors);
        factory.setFilterP2Base(this.filterP2Base);
        factory.setSitePaths(this.getPaths());
        factory.setEESources(this.getEESources());
        factory.setInitialState(pdeUIState);
        BuildTimeSite result = factory.createSite();
        this.siteFactory = factory;
        if (this.platformProperties != null) {
            result.setPlatformPropeties(this.platformProperties);
        }
        if ((baseProfile = result.getSiteContentProvider().getBaseProfile()) != null && (repos = this.getAssociatedRepositories(baseProfile)).size() > 0) {
            this.addContextRepos(repos.toArray(new URI[repos.size()]));
        }
        return result;
    }

    private String[] getPaths() {
        if (this.sitePaths == null) {
            if (this.pluginPath != null) {
                this.sitePaths = new String[this.pluginPath.length + 1];
                System.arraycopy(this.pluginPath, 0, this.sitePaths, 0, this.pluginPath.length);
                this.sitePaths[this.sitePaths.length - 1] = workingDirectory;
            } else {
                this.sitePaths = new String[]{workingDirectory};
            }
        }
        return this.sitePaths;
    }

    protected String[] getEESources() {
        return null;
    }

    public void setBuildSiteFactory(BuildTimeSiteFactory siteFactory) {
        this.siteFactory = siteFactory;
    }

    public String[] getPluginPath() {
        return this.pluginPath;
    }

    public void setPluginPath(String[] path) {
        this.pluginPath = path;
    }

    public void setPDEState(State state) {
        this.ensurePDEUIStateNotNull();
        pdeUIState.setState(state);
    }

    public void setStateExtraData(HashMap classpath, Map patchData) {
        this.setStateExtraData(classpath, patchData, null);
    }

    public void setStateExtraData(HashMap classpath, Map patchData, Map outputFolders) {
        this.ensurePDEUIStateNotNull();
        pdeUIState.setExtraData(classpath, patchData, outputFolders);
    }

    public void setNextId(long nextId) {
        this.ensurePDEUIStateNotNull();
        pdeUIState.setNextId(nextId);
    }

    protected void flushState() {
        pdeUIState = null;
    }

    private void ensurePDEUIStateNotNull() {
        if (pdeUIState == null) {
            pdeUIState = new PDEUIStateWrapper();
        }
    }

    protected boolean havePDEUIState() {
        return pdeUIState != null;
    }

    public ProductFile loadProduct(String product) throws CoreException {
        return this.loadProduct(product, null);
    }

    public ProductFile loadProduct(String product, String os) throws CoreException {
        if (product == null || product.startsWith("${") || product.length() == 0) {
            return null;
        }
        String productPath = this.findFile(product, false);
        File f = null;
        if (productPath != null) {
            f = new File(productPath);
        } else {
            f = new File(product);
            if (!(f.exists() && f.isFile() || (f = new File(AbstractScriptGenerator.getWorkingDirectory(), product)).exists() && f.isFile() || (f = new File(String.valueOf(AbstractScriptGenerator.getWorkingDirectory()) + "/" + "plugins", product)).exists() && f.isFile())) {
                f = new File(String.valueOf(AbstractScriptGenerator.getWorkingDirectory()) + '/' + "features", product);
            }
        }
        return new ProductFile(f.getAbsolutePath(), os);
    }

    protected String findFile(String location, boolean makeRelative) {
        String result;
        BundleDescription bundle;
        PDEState state;
        if (location == null || location.length() == 0) {
            return null;
        }
        if (new File(location).exists()) {
            return location;
        }
        try {
            state = this.getSite(false).getRegistry();
        }
        catch (CoreException e) {
            BundleHelper.getDefault().getLog().log(e.getStatus());
            return null;
        }
        Path path = new Path(location);
        String id = path.segment(0);
        BundleDescription[] matches = state.getState().getBundles(id);
        if (matches != null && matches.length != 0 && (bundle = matches[0]) != null && (result = this.checkFile((IPath)new Path(bundle.getLocation()), path, makeRelative)) != null) {
            return result;
        }
        BuildTimeFeature feature = null;
        try {
            feature = this.getSite(false).findFeature(id, (String)null, false);
        }
        catch (CoreException e) {
            BundleHelper.getDefault().getLog().log(e.getStatus());
        }
        if (feature == null) {
            return null;
        }
        String featureRoot = feature.getRootLocation();
        if (featureRoot != null) {
            return this.checkFile((IPath)new Path(featureRoot), path, makeRelative);
        }
        return null;
    }

    protected String findConfigFile(ProductFile productFile, String os) {
        String path = productFile.getConfigIniPath(os);
        if (path == null) {
            return null;
        }
        String result = this.findFile(path, false);
        if (result != null) {
            return result;
        }
        File f = new File(path);
        if (f.exists() && f.isFile()) {
            return f.getAbsolutePath();
        }
        f = new File(AbstractScriptGenerator.getWorkingDirectory(), path);
        if (f.exists() && f.isFile()) {
            return f.getAbsolutePath();
        }
        f = new File(String.valueOf(AbstractScriptGenerator.getWorkingDirectory()) + "/" + "plugins", path);
        if (f.exists() && f.isFile()) {
            return f.getAbsolutePath();
        }
        f = new File(new File(productFile.getLocation()).getParent(), path);
        if (f.exists() && f.isFile()) {
            return f.getAbsolutePath();
        }
        return null;
    }

    private String checkFile(IPath base, Path target, boolean makeRelative) {
        IPath path = base.append(target.removeFirstSegments(1));
        String result = path.toOSString();
        if (!new File(result).exists()) {
            return null;
        }
        if (makeRelative) {
            return Utils.makeRelative(path, (IPath)new Path(workingDirectory)).toOSString();
        }
        return result;
    }

    public void setFilterState(boolean filter) {
        this.filterState = filter;
    }

    public void setFilterP2Base(boolean filter) {
        this.filterP2Base = filter;
    }

    private static URI getDownloadCacheLocation(IProvisioningAgent agent) {
        IAgentLocation location = (IAgentLocation)agent.getService(IAgentLocation.SERVICE_NAME);
        if (location == null) {
            return null;
        }
        return URIUtil.append((URI)location.getDataArea("org.eclipse.equinox.p2.core"), (String)"cache/");
    }

    protected void setContextArtifacts(URI[] uris) {
        this.contextArtifacts = uris;
    }

    protected void setContextMetadata(URI[] uris) {
        this.contextMetadata = uris;
    }

    public void setContextMetadataRepositories(URI[] uris) {
        HashSet<URI> uriSet = new HashSet<URI>();
        uriSet.addAll(Arrays.asList(uris));
        int i = 0;
        while (i < uris.length) {
            File uriFile = URIUtil.toFile((URI)uris[i]);
            uriSet.addAll(this.getAssociatedRepositories(uriFile));
            ++i;
        }
        this.addContextRepos(uriSet.toArray(new URI[uriSet.size()]));
    }

    protected void addContextRepos(URI[] repos) {
        HashSet<URI> uriSet;
        List metadata = this.filterRepos(repos, METADATA_REPO_FILTER);
        List artifacts = this.filterRepos(repos, ARTIFACT_REPO_FILTER);
        if (this.contextMetadata != null) {
            uriSet = new HashSet<URI>();
            uriSet.addAll(Arrays.asList(this.contextMetadata));
            uriSet.addAll(metadata);
            this.contextMetadata = uriSet.toArray(new URI[uriSet.size()]);
        } else {
            this.contextMetadata = metadata.toArray(new URI[metadata.size()]);
        }
        if (this.contextArtifacts != null) {
            uriSet = new HashSet();
            uriSet.addAll(Arrays.asList(this.contextArtifacts));
            uriSet.addAll(artifacts);
            this.contextArtifacts = uriSet.toArray(new URI[uriSet.size()]);
        } else {
            this.contextArtifacts = artifacts.toArray(new URI[artifacts.size()]);
        }
    }

    private List filterRepos(URI[] contexts, FilenameFilter repoFilter) {
        if (contexts == null) {
            return null;
        }
        ArrayList<URI> result = new ArrayList<URI>();
        int i = 0;
        while (i < contexts.length) {
            File repo = URIUtil.toFile((URI)contexts[i]);
            if (repo == null) {
                result.add(contexts[i]);
            } else {
                String[] list = repo.list(repoFilter);
                if (list != null && list.length > 0) {
                    result.add(contexts[i]);
                }
            }
            ++i;
        }
        return result;
    }

    private List getAssociatedRepositories(File profileFile) {
        IProvisioningAgent agent;
        if (profileFile == null || !profileFile.exists() || !profileFile.getName().endsWith(".profile")) {
            return Collections.EMPTY_LIST;
        }
        ArrayList<URI> result = new ArrayList<URI>();
        URI profileURI = profileFile.toURI();
        result.add(profileURI);
        Map profileInfo = AbstractScriptGenerator.extractProfileInformation(profileFile);
        if (profileInfo == null) {
            return result;
        }
        File areaFile = new File((String)profileInfo.get(PROFILE_DATA_AREA));
        if (areaFile.exists() && (agent = BundleHelper.getDefault().getProvisioningAgent(areaFile.toURI())) != null) {
            URI download;
            SimpleProfileRegistry registry = new SimpleProfileRegistry(agent, (File)profileInfo.get(PROFILE_REGISTRY), null, false);
            try {
                IProfile profile;
                long[] timestamps;
                long timestamp = (Long)profileInfo.get(PROFILE_TIMESTAMP);
                String profileId = (String)profileInfo.get(PROFILE_ID);
                if (timestamp == -1L && (timestamps = registry.listProfileTimestamps(profileId)).length > 0) {
                    timestamp = timestamps[timestamps.length - 1];
                }
                if (timestamp > 0L && (profile = registry.getProfile(profileId, timestamp)) != null) {
                    String dropinRepositories;
                    String sharedCache;
                    String cache = profile.getProperty("org.eclipse.equinox.p2.cache");
                    if (cache != null) {
                        File cacheFolder = new File(cache);
                        if (cacheFolder.exists()) {
                            result.add(cacheFolder.toURI());
                        } else {
                            result.add(areaFile.getParentFile().toURI());
                        }
                    }
                    if ((sharedCache = profile.getProperty("org.eclipse.equinox.p2.cache.shared")) != null) {
                        result.add(new File(cache).toURI());
                    }
                    if ((dropinRepositories = profile.getProperty("org.eclipse.equinox.p2.cache.extensions")) != null) {
                        StringTokenizer tokenizer = new StringTokenizer(dropinRepositories, "|");
                        while (tokenizer.hasMoreTokens()) {
                            try {
                                result.add(new URI(tokenizer.nextToken()));
                            }
                            catch (URISyntaxException uRISyntaxException) {}
                        }
                    }
                }
            }
            catch (IllegalStateException illegalStateException) {
                result.add(areaFile.getParentFile().toURI());
            }
            if (URIUtil.toFile((URI)(download = AbstractScriptGenerator.getDownloadCacheLocation(agent))).exists()) {
                result.add(download);
            }
        }
        return result;
    }

    private static Map extractProfileInformation(File target) {
        if (target == null || !target.exists()) {
            return null;
        }
        Path path = new Path(target.getAbsolutePath());
        if (!path.lastSegment().endsWith("profile") && !path.lastSegment().endsWith("profile.gz")) {
            return null;
        }
        if (path.segmentCount() < 4) {
            return null;
        }
        HashMap<String, Object> results = new HashMap<String, Object>();
        results.put(PROFILE_TIMESTAMP, new Long(-1L));
        String profileId = null;
        if (target.isFile()) {
            if (path.segmentCount() < 5) {
                return null;
            }
            String timestamp = path.lastSegment();
            int idx = timestamp.indexOf(46);
            if (idx > 0) {
                timestamp = timestamp.substring(0, idx);
                try {
                    results.put(PROFILE_TIMESTAMP, new Long(timestamp));
                }
                catch (NumberFormatException numberFormatException) {}
            }
            path = path.removeLastSegments(1);
            profileId = path.removeFileExtension().lastSegment();
        } else {
            profileId = path.removeFileExtension().lastSegment();
        }
        profileId = SimpleProfileRegistry.unescape((String)profileId);
        results.put(PROFILE_ID, profileId);
        path = path.removeLastSegments(1);
        results.put(PROFILE_REGISTRY, path.toFile());
        path = path.removeLastSegments(2);
        results.put(PROFILE_DATA_AREA, path.toOSString());
        return results;
    }

    public URI[] getContextMetadata() {
        return this.contextMetadata;
    }

    public URI[] getContextArtifacts() {
        return this.contextArtifacts;
    }

    public void setProductQualifier(String value) {
        this.productQualifier = value;
    }

    public void setPlatformProperties(String filename) {
        block16: {
            if (filename == null || filename.trim().length() == 0) {
                return;
            }
            File file = new File(filename);
            if (!file.exists()) {
                return;
            }
            this.platformProperties = new Properties();
            InputStream input = null;
            try {
                try {
                    input = new BufferedInputStream(new FileInputStream(file));
                    this.platformProperties.load(input);
                }
                catch (IOException e) {
                    this.platformProperties = null;
                    String message = NLS.bind((String)Messages.error_loading_platform_properties, (Object)filename);
                    Status status = new Status(2, "org.eclipse.pde.build", message, (Throwable)e);
                    BundleHelper.getDefault().getLog().log((IStatus)status);
                    if (input != null) {
                        try {
                            input.close();
                        }
                        catch (IOException iOException) {}
                    }
                    break block16;
                }
            }
            catch (Throwable throwable) {
                if (input != null) {
                    try {
                        input.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (input != null) {
                try {
                    input.close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    protected void generateProductReplaceTask(ProductFile product, String productFilePath, AssemblyInformation assemblyInfo) {
        if (product == null) {
            return;
        }
        BuildTimeSite site = null;
        try {
            site = this.getSite(false);
        }
        catch (CoreException coreException) {
            return;
        }
        String version = product.getVersion();
        if (version.endsWith("qualifier")) {
            Version oldVersion = new Version(version);
            version = String.valueOf(oldVersion.getMajor()) + "." + oldVersion.getMinor() + "." + oldVersion.getMicro() + "." + Utils.getPropertyFormat("p2.product.qualifier");
        }
        List productEntries = product.getProductEntries();
        String mappings = Utils.getEntryVersionMappings(productEntries.toArray(new FeatureEntry[productEntries.size()]), site, assemblyInfo);
        this.script.println("<eclipse.idReplacer productFilePath=\"" + AntScript.getEscaped(productFilePath) + "\"");
        this.script.println("                    selfVersion=\"" + version + "\" ");
        if (product.useFeatures()) {
            this.script.println("                    featureIds=\"" + mappings + "\"/>");
        } else {
            this.script.println("                    pluginIds=\"" + mappings + "\"/>");
        }
    }

    public static class MissingProperties
    extends Properties {
        private static final long serialVersionUID = 3546924667060303927L;
        private static MissingProperties singleton;

        private MissingProperties() {
        }

        public synchronized Object setProperty(String key, String value) {
            throw new UnsupportedOperationException();
        }

        public synchronized Object put(Object key, Object value) {
            throw new UnsupportedOperationException();
        }

        public static MissingProperties getInstance() {
            if (singleton == null) {
                singleton = new MissingProperties();
            }
            return singleton;
        }
    }
}

