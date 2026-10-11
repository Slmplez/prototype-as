/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ant.core.AntRunner
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import org.eclipse.ant.core.AntRunner;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.build.IFetchFactory;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.FetchTaskFactoriesRegistry;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.ant.IScriptRunner;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeFeatureFactory;
import org.eclipse.pde.internal.build.site.QualifierReplacer;
import org.osgi.framework.Version;

public class FetchScriptGenerator
extends AbstractScriptGenerator {
    private static final Object SAVE_LOCK = new Object();
    private static final String FETCH_TASK_FACTORY = "internal.factory";
    private static final String FETCH_TASK_FACTORY_ID = "internal.factory.id";
    private static final String MATCHED_VERSION = "internal.matchedVersion";
    protected boolean recursiveGeneration = true;
    protected Properties directoryFile;
    protected String directoryLocation;
    protected SortedMap directory;
    protected String fetchCache;
    protected String cvsPassFileLocation;
    protected boolean fetchChildren = true;
    protected Properties fetchTags = null;
    protected String element;
    protected Version elementVersion;
    protected BuildTimeFeature feature;
    protected Map mapInfos;
    protected Properties featureProperties;
    protected List mkdirLocations = new ArrayList(5);
    protected Properties repositoryPluginTags = new Properties();
    protected Properties repositoryFeatureTags = new Properties();
    protected Properties sourceReferences = new Properties();
    private FetchTaskFactoriesRegistry fetchTaskFactories;
    private final Set encounteredTypeOfRepo = new HashSet();
    public static final String FEATURE_ONLY = "featureOnly";
    public static final String FEATURE_AND_PLUGINS = "featureAndPlugins";
    public static final String FEATURES_RECURSIVELY = "featuresRecursively";
    public static final String FETCH_FILE_PREFIX = "fetch_";
    private String scriptName;
    private IScriptRunner scriptRunner;
    private static final Version versionMax = new Version(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);

    public FetchScriptGenerator() {
    }

    public FetchScriptGenerator(String element) {
        this.setElement(element);
    }

    public void setElement(String element) {
        Object[] split = this.splitElement(element);
        this.element = (String)split[0];
        this.elementVersion = (Version)split[1];
    }

    private Object[] splitElement(String elt) {
        int comma = elt.indexOf(44);
        if (comma == -1) {
            return new Object[]{elt, Version.emptyVersion};
        }
        return new Object[]{elt.substring(0, comma), new Version(elt.substring(comma + 1))};
    }

    private void initializeFactories() {
        this.fetchTaskFactories = new FetchTaskFactoriesRegistry();
    }

    public void generate() throws CoreException {
        this.initializeFactories();
        this.mapInfos = this.processMapFileEntry(this.element, this.elementVersion);
        if (this.mapInfos == null) {
            Status warning = new Status(2, "org.eclipse.pde.build", 21, NLS.bind((String)Messages.error_fetchingFailed, (Object)this.element), null);
            BundleHelper.getDefault().getLog().log((IStatus)warning);
            return;
        }
        this.scriptName = FETCH_FILE_PREFIX + this.mapInfos.get("element") + ".xml";
        this.openScript(workingDirectory, this.scriptName);
        try {
            this.generateFetchScript();
        }
        finally {
            this.closeScript();
        }
        if (this.recursiveGeneration && this.mapInfos.get("type").equals("feature")) {
            this.generateFetchFilesForIncludedFeatures();
        }
        this.saveRepositoryTags();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void saveRepositoryTags(Properties properties, String fileName) throws CoreException {
        Object object = SAVE_LOCK;
        synchronized (object) {
            try {
                BufferedInputStream input = new BufferedInputStream(new FileInputStream(String.valueOf(workingDirectory) + '/' + fileName));
                try {
                    properties.load(input);
                }
                finally {
                    ((InputStream)input).close();
                }
            }
            catch (IOException iOException) {}
            try {
                BufferedOutputStream os = new BufferedOutputStream(new FileOutputStream(String.valueOf(workingDirectory) + '/' + fileName));
                try {
                    properties.store(os, null);
                }
                finally {
                    ((OutputStream)os).close();
                }
            }
            catch (IOException iOException) {
                String message = NLS.bind((String)Messages.exception_writingFile, (Object)(String.valueOf(workingDirectory) + '/' + fileName));
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, null));
            }
        }
    }

    private void saveRepositoryTags() throws CoreException {
        this.saveRepositoryTags(this.repositoryPluginTags, "pluginVersions.properties");
        this.saveRepositoryTags(this.repositoryFeatureTags, "featureVersions.properties");
        this.saveRepositoryTags(this.sourceReferences, "sourceReferences.properties");
    }

    private void generateFetchFilesForIncludedFeatures() throws CoreException {
        FeatureEntry[] referencedFeatures = this.feature.getIncludedFeatureReferences();
        int i = 0;
        while (i < referencedFeatures.length) {
            String featureId = referencedFeatures[i].getId();
            if (!this.featureProperties.containsKey("generate.feature@" + featureId)) {
                FetchScriptGenerator generator = new FetchScriptGenerator("feature@" + featureId + ',' + referencedFeatures[i].getVersion());
                generator.setDirectoryLocation(this.directoryLocation);
                generator.setFetchChildren(this.fetchChildren);
                generator.setFetchCache(this.fetchCache);
                generator.setCvsPassFileLocation(this.cvsPassFileLocation);
                generator.setRecursiveGeneration(this.recursiveGeneration);
                generator.setFetchTag(this.fetchTags);
                generator.setDirectory(this.directory);
                generator.setDirectoryFile(this.directoryFile);
                generator.setBuildSiteFactory(this.siteFactory);
                generator.repositoryPluginTags = this.repositoryPluginTags;
                generator.setSourceReferences(this.sourceReferences);
                generator.setScriptRunner(this.scriptRunner);
                generator.generate();
            }
            ++i;
        }
    }

    protected void generateFetchScript() throws CoreException {
        this.generatePrologue();
        this.generateFetchTarget();
        this.generateFetchElementTarget();
        if (this.mapInfos.get("type").equals("feature")) {
            this.generateFetchPluginsTarget();
            this.generateFetchRecusivelyTarget();
        }
        this.generateAdditionalTargets();
        this.generateEpilogue();
    }

    protected void generateFetchTarget() {
        this.script.println();
        this.script.printTargetDeclaration("fetch", null, null, null, null);
        if (!this.mapInfos.get("element").equals("org.eclipse.pde.build.container.feature")) {
            this.script.printAntCallTask("fetch.element", true, null);
        }
        if (this.mapInfos.get("type").equals("feature")) {
            this.script.printAntCallTask("fetch.plugins", true, null);
            this.script.printAntCallTask("fetch.recursively", true, null);
        }
        this.script.printTargetEnd();
    }

    protected void generateFetchElementTarget() {
        if (this.mapInfos.get("element").equals("org.eclipse.pde.build.container.feature")) {
            return;
        }
        this.script.printTargetDeclaration("fetch.element", null, FEATURE_ONLY, null, null);
        try {
            this.generateFetchEntry(this.element, this.elementVersion, false);
        }
        catch (CoreException coreException) {
            Status status = new Status(4, "org.eclipse.pde.build", 21, NLS.bind((String)Messages.error_fetchingFailed, (Object)this.element), null);
            BundleHelper.getDefault().getLog().log((IStatus)status);
        }
        this.script.printTargetEnd();
    }

    protected void generateFetchPluginsTarget() throws CoreException {
        this.script.printTargetDeclaration("fetch.plugins", null, FEATURE_AND_PLUGINS, null, null);
        this.retrieveFeature((String)this.mapInfos.get("element"), (String)this.mapInfos.get("type"), this.mapInfos);
        this.generateChildrenFetchScript();
        this.script.printTargetEnd();
    }

    private Map processMapFileEntry(String entry, Version version) throws CoreException {
        String repositoryInfo;
        HashMap<String, Object> entryInfos = new HashMap<String, Object>(5);
        int index = entry.indexOf(64);
        String type = entry.substring(0, index);
        String currentElement = entry.substring(index + 1);
        Object[] match = this.getRepositoryInfo(entry, version);
        String string = repositoryInfo = match == null ? null : (String)match[0];
        if (repositoryInfo == null) {
            if ("org.eclipse.pde.build.container.feature".equals(currentElement)) {
                entryInfos.put("type", type);
                entryInfos.put("element", currentElement);
                return entryInfos;
            }
            String message = NLS.bind((String)Messages.error_missingDirectoryEntry, (Object)(Version.emptyVersion.equals((Object)version) ? entry : String.valueOf(entry) + ',' + version.toString()));
            BundleHelper.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.pde.build", 9, message, null));
            return null;
        }
        int idx = repositoryInfo.indexOf(44);
        if (idx == -1) {
            String message = NLS.bind((String)Messages.error_incorrectDirectoryEntry, (Object)currentElement);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 9, message, null));
        }
        String repoIdentifier = repositoryInfo.substring(0, idx).trim();
        IFetchFactory fetchTaskFactory = null;
        String repoSpecificSegment = null;
        if (!this.fetchTaskFactories.getFactoryIds().contains(repoIdentifier)) {
            repoIdentifier = "CVS";
            repoSpecificSegment = repositoryInfo;
        } else {
            repoSpecificSegment = repositoryInfo.substring(idx + 1, repositoryInfo.length());
        }
        fetchTaskFactory = this.fetchTaskFactories.getFactory(repoIdentifier);
        if (fetchTaskFactory == null) {
            String message = NLS.bind((String)Messages.error_noCorrespondingFactory, (Object)currentElement);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 9, message, null));
        }
        this.encounteredTypeOfRepo.add(fetchTaskFactory);
        entryInfos.put("type", type);
        entryInfos.put("element", currentElement);
        fetchTaskFactory.parseMapFileEntry(repoSpecificSegment, this.fetchTags, entryInfos);
        entryInfos.put(FETCH_TASK_FACTORY, fetchTaskFactory);
        entryInfos.put(FETCH_TASK_FACTORY_ID, repoIdentifier);
        entryInfos.put(MATCHED_VERSION, match[1]);
        return entryInfos;
    }

    protected void generateFetchRecusivelyTarget() throws CoreException {
        this.script.printTargetDeclaration("fetch.recursively", null, FEATURES_RECURSIVELY, null, null);
        FeatureEntry[] compiledFeatures = this.feature.getIncludedFeatureReferences();
        int i = 0;
        while (i < compiledFeatures.length) {
            String featureId = compiledFeatures[i].getId();
            if (this.featureProperties.containsKey("generate.feature@" + featureId)) {
                String[] extraElementsToFetch = Utils.getArrayFromString(this.featureProperties.getProperty("generate.feature@" + featureId), ",");
                int j = 1;
                while (j < extraElementsToFetch.length) {
                    Map infos = Utils.parseExtraBundlesString(extraElementsToFetch[j], false);
                    this.generateFetchEntry((String)infos.get("id"), (Version)infos.get("version"), false);
                    ++j;
                }
            } else if (this.getRepositoryInfo("feature@" + featureId, new Version(compiledFeatures[i].getVersion())) != null) {
                this.script.printAntTask(String.valueOf(Utils.getPropertyFormat("buildDirectory")) + '/' + FETCH_FILE_PREFIX + featureId + ".xml", null, "fetch", null, null, null);
            } else if (this.getSite(false).findFeature(featureId, (String)null, false) == null) {
                String message = NLS.bind((String)Messages.error_cannotFetchNorFindFeature, (Object)featureId);
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, null));
            }
            ++i;
        }
        this.script.printTargetEnd();
    }

    protected boolean generateFetchEntry(String entry, Version version, boolean manifestFileOnly) throws CoreException {
        String sourceURLs;
        Map mapFileEntry = this.mapInfos;
        if (!entry.equals(this.element) && (mapFileEntry = this.processMapFileEntry(entry, version)) == null) {
            return false;
        }
        IFetchFactory factory = (IFetchFactory)mapFileEntry.get(FETCH_TASK_FACTORY);
        String elementToFetch = (String)mapFileEntry.get("element");
        String type = (String)mapFileEntry.get("type");
        if (!manifestFileOnly) {
            factory.generateRetrieveElementCall(mapFileEntry, this.computeFinalLocation(type, elementToFetch, (Version)mapFileEntry.get(MATCHED_VERSION)), this.script);
        } else {
            String[] files = type.equals("feature") ? new String[]{"feature.xml"} : (type.equals("plugin") ? new String[]{"plugin.xml", "META-INF/MANIFEST.MF"} : (type.equals("fragment") ? new String[]{"fragment.xml", "META-INF/MANIFEST.MF"} : (type.equals("bundle") ? new String[]{"META-INF/MANIFEST.MF"} : new String[]{})));
            factory.generateRetrieveFilesCall(mapFileEntry, this.computeFinalLocation(type, elementToFetch, (Version)mapFileEntry.get(MATCHED_VERSION)), files, this.script);
        }
        String key = null;
        key = version.getQualifier().endsWith("qualifier") ? QualifierReplacer.getQualifierKey(elementToFetch, version.toString()) : String.valueOf(elementToFetch) + ',' + new Version(version.getMajor(), version.getMinor(), version.getMicro()).toString();
        Properties tags = null;
        tags = type.equals("feature") ? this.repositoryFeatureTags : this.repositoryPluginTags;
        if (mapFileEntry.get("tag") != null) {
            tags.put(key, mapFileEntry.get("tag"));
        }
        if (!type.equals("feature") && (sourceURLs = (String)mapFileEntry.get("sourceReferences")) != null) {
            this.sourceReferences.put(key, sourceURLs);
        }
        return true;
    }

    protected void generateMkdirs(String location) {
        if (this.mkdirLocations.contains(location)) {
            return;
        }
        this.mkdirLocations.add(location);
        this.script.printMkdirTask(location);
    }

    protected void generateChildrenFetchScript() throws CoreException {
        String elementId;
        FeatureEntry[] allChildren = this.feature.getRawPluginEntries();
        FeatureEntry[] compiledChildren = this.feature.getPluginEntries();
        int i = 0;
        while (i < allChildren.length) {
            elementId = allChildren[i].getId();
            Version versionId = new Version(allChildren[i].getVersion());
            if (this.featureProperties.containsKey("generate.plugin@" + elementId)) {
                String[] extraElementsToFetch = Utils.getArrayFromString(this.featureProperties.getProperty("generate.plugin@" + elementId), ",");
                int j = 1;
                while (j < extraElementsToFetch.length) {
                    Map infos = Utils.parseExtraBundlesString(extraElementsToFetch[j], false);
                    this.generateFetchEntry((String)infos.get("id"), (Version)infos.get("version"), false);
                    ++j;
                }
            } else {
                boolean generated = true;
                generated = allChildren[i].isFragment() ? this.generateFetchEntry("fragment@" + elementId, versionId, !Utils.isIn(compiledChildren, allChildren[i])) : this.generateFetchEntry("plugin@" + elementId, versionId, !Utils.isIn(compiledChildren, allChildren[i]));
                if (!generated) {
                    this.generateFetchEntry("bundle@" + elementId, versionId, !Utils.isIn(compiledChildren, allChildren[i]));
                }
            }
            ++i;
        }
        elementId = this.feature.getLicenseFeature();
        if (elementId == null || elementId.length() == 0) {
            return;
        }
        String version = this.feature.getLicenseFeatureVersion();
        if (version == null) {
            version = "0.0.0";
        }
        this.generateFetchEntry("feature@" + elementId, new Version(version), false);
    }

    protected void retrieveFeature(String elementName, String elementType, Map elementInfos) throws CoreException {
        File root = new File(workingDirectory);
        if (elementName.equals("org.eclipse.pde.build.container.feature")) {
            BuildTimeFeatureFactory factory = BuildTimeFeatureFactory.getInstance();
            File featuresFolder = new File(root, "features");
            File featureLocation = new File(featuresFolder, elementName);
            try {
                this.feature = factory.createFeature(featureLocation.toURL(), null);
                this.featureProperties = new Properties();
                BufferedInputStream featureStream = new BufferedInputStream(new FileInputStream(new File(featureLocation, "build.properties")));
                this.featureProperties.load(featureStream);
                ((InputStream)featureStream).close();
                return;
            }
            catch (Exception e) {
                String message = NLS.bind((String)Messages.exception_missingFeature, (Object)elementName);
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, (Throwable)e));
            }
        }
        File target = new File(root, "retrieve.xml");
        IPath destination = new Path(root.getAbsolutePath()).append("tempFeature/");
        try {
            AntScript retrieve = new AntScript(new BufferedOutputStream(new FileOutputStream(target)));
            try {
                retrieve.printProjectDeclaration("RetrieveFeature", "main", ".");
                retrieve.printTargetDeclaration("main", null, null, null, null);
                String[] files = new String[]{"feature.xml", "build.properties"};
                String factoryId = (String)elementInfos.get(FETCH_TASK_FACTORY_ID);
                IFetchFactory factory = this.fetchTaskFactories.newFactory(factoryId);
                if (factory == null) {
                    String message = NLS.bind((String)Messages.error_noCorrespondingFactory, (Object)elementName, (Object)factoryId);
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 9, message, null));
                }
                factory.generateRetrieveFilesCall(elementInfos, destination, files, retrieve);
                retrieve.printTargetEnd();
                factory.addTargets(retrieve);
                retrieve.printProjectEnd();
            }
            finally {
                retrieve.close();
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.exception_writeScript, (Object)target);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 7, message, (Throwable)e));
        }
        try {
            HashMap<String, String> retrieveProp = new HashMap<String, String>();
            retrieveProp.put("fetch.failonerror", "true");
            retrieveProp.put("buildDirectory", FetchScriptGenerator.getWorkingDirectory());
            if (this.fetchCache != null) {
                retrieveProp.put("fetchCacheLocation", this.fetchCache);
            }
            if (this.scriptRunner != null) {
                this.scriptRunner.runScript(target, "main", retrieveProp);
            } else {
                AntRunner runner = new AntRunner();
                runner.setBuildFileLocation(target.getAbsolutePath());
                runner.addUserProperties(retrieveProp);
                runner.addBuildLogger("org.eclipse.pde.internal.build.tasks.SimpleBuildLogger");
                runner.run();
            }
        }
        catch (Exception e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, NLS.bind((String)Messages.error_retrieveFailed, (Object)elementName), (Throwable)e));
        }
        try {
            BuildTimeFeatureFactory factory = BuildTimeFeatureFactory.getInstance();
            File featureFolder = new File(destination.toString());
            this.feature = factory.createFeature(featureFolder.toURL(), null);
            target.delete();
            this.featureProperties = new Properties();
            BufferedInputStream featureStream = new BufferedInputStream(new FileInputStream(new File(featureFolder, "build.properties")));
            this.featureProperties.load(featureStream);
            ((InputStream)featureStream).close();
            FetchScriptGenerator.clear(featureFolder);
            if (this.feature == null) {
                String message = NLS.bind((String)Messages.exception_missingFeature, (Object)elementName);
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, null));
            }
        }
        catch (Exception e) {
            String message = NLS.bind((String)Messages.error_fetchingFeature, (Object)elementName);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, (Throwable)e));
        }
    }

    public static boolean clear(File root) {
        String[] list;
        boolean result = true;
        if (root.isDirectory() && (list = root.list()) != null) {
            int i = 0;
            while (i < list.length) {
                result &= FetchScriptGenerator.clear(new File(root, list[i]));
                ++i;
            }
        }
        try {
            if (root.exists()) {
                result &= root.delete();
            }
        }
        catch (Exception exception) {
            result = false;
        }
        return result;
    }

    protected IPath computeFinalLocation(String type, String elementName, Version version) {
        Path location = new Path(Utils.getPropertyFormat("buildDirectory"));
        location = type.equals("feature") ? location.append("features") : location.append("plugins");
        return location.append(String.valueOf(elementName) + (version.equals((Object)Version.emptyVersion) ? "" : String.valueOf('_') + version.toString()));
    }

    protected Object[] getRepositoryInfo(String elementName, Version version) throws CoreException {
        if (this.directoryFile == null) {
            this.directoryFile = FetchScriptGenerator.readProperties(this.directoryLocation, "", 4);
        }
        String result = null;
        Version matchedVersion = null;
        if (Version.emptyVersion.equals((Object)version)) {
            result = (String)this.directoryFile.get(elementName);
            matchedVersion = Version.emptyVersion;
        } else {
            result = (String)this.directoryFile.get(String.valueOf(elementName) + ',' + version.getMajor() + '.' + version.getMinor() + '.' + version.getMicro());
            matchedVersion = new Version(version.getMajor(), version.getMinor(), version.getMicro());
            if (result == null) {
                result = (String)this.directoryFile.get(elementName);
                matchedVersion = Version.emptyVersion;
                if (result != null && version.getQualifier().endsWith("qualifier")) {
                    String message = NLS.bind((String)Messages.warning_fallBackVersion, (Object)(String.valueOf(elementName) + ',' + version.toString()), (Object)elementName);
                    BundleHelper.getDefault().getLog().log((IStatus)new Status(2, "org.eclipse.pde.build", 9, message, null));
                }
            }
        }
        if (result != null) {
            return new Object[]{result, matchedVersion};
        }
        this.initializeSortedDirectory();
        SortedMap candidates = this.directory.subMap(new MapFileEntry(elementName, Version.emptyVersion), new MapFileEntry(elementName, versionMax));
        if (candidates.size() == 0) {
            return null;
        }
        Map.Entry bestMatch = null;
        Iterator iterator = candidates.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            MapFileEntry aCandidate = entry.getKey();
            if (aCandidate.v.equals((Object)version)) {
                return new Object[]{(String)entry.getValue(), version};
            }
            if (bestMatch != null) {
                if (((MapFileEntry)bestMatch.getKey()).v.compareTo(entry.getKey().v) >= 1) continue;
                bestMatch = entry;
                continue;
            }
            bestMatch = entry;
        }
        if (!Version.emptyVersion.equals((Object)version)) {
            return null;
        }
        return new Object[]{(String)bestMatch.getValue(), ((MapFileEntry)bestMatch.getKey()).v};
    }

    private void initializeSortedDirectory() {
        if (this.directory != null) {
            return;
        }
        this.directory = new TreeMap();
        Iterator iter = this.directoryFile.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            String[] entryInfo = Utils.getArrayFromString((String)entry.getKey());
            if (entryInfo.length == 0) continue;
            this.directory.put(new MapFileEntry(entryInfo[0], entryInfo.length == 2 ? new Version(entryInfo[1]) : Version.emptyVersion), entry.getValue());
        }
    }

    protected void generatePrologue() {
        this.script.println();
        this.script.printComment("Fetch script for " + this.element);
        this.script.println();
        this.script.printProjectDeclaration("FetchScript", "fetch", null);
        this.script.printProperty("quiet", "true");
    }

    protected void generateEpilogue() {
        this.script.println();
        this.script.printProjectEnd();
    }

    private void generateAdditionalTargets() {
        Iterator iter = this.encounteredTypeOfRepo.iterator();
        while (iter.hasNext()) {
            ((IFetchFactory)iter.next()).addTargets(this.script);
        }
    }

    public void setDirectoryLocation(String directoryLocation) {
        this.directoryLocation = directoryLocation;
    }

    public void setFetchChildren(boolean fetchChildren) {
        this.fetchChildren = fetchChildren;
    }

    public void setFetchTag(Properties value) {
        this.fetchTags = value;
    }

    public void setSourceReferences(Properties sourceReferences) {
        this.sourceReferences = sourceReferences;
    }

    public void setFetchTagAsString(String value) {
        this.fetchTags = new Properties();
        String[] entries = Utils.getArrayFromString(value);
        if (entries.length == 1 && entries[0].indexOf(61) == -1) {
            this.fetchTags.put("CVS", entries[0]);
            return;
        }
        int i = 0;
        while (i < entries.length) {
            String[] valueForRepo = Utils.getArrayFromString(entries[i], "=");
            if (valueForRepo == null || valueForRepo.length != 2) {
                throw new IllegalArgumentException("FetchTag " + entries[i]);
            }
            this.fetchTags.put(valueForRepo[0], valueForRepo[1]);
            ++i;
        }
    }

    public void setCvsPassFileLocation(String cvsPassFileLocation) {
        this.cvsPassFileLocation = cvsPassFileLocation;
    }

    public void setRecursiveGeneration(boolean recursiveGeneration) {
        this.recursiveGeneration = recursiveGeneration;
    }

    public void setScriptRunner(IScriptRunner runner) {
        this.scriptRunner = runner;
    }

    private void setDirectory(SortedMap dir) {
        this.directory = dir;
    }

    private void setDirectoryFile(Properties dir) {
        this.directoryFile = dir;
    }

    public void setFetchCache(String cache) {
        this.fetchCache = cache;
    }

    public static class MapFileEntry
    implements Comparable {
        String id;
        Version v;

        public MapFileEntry(String id, Version v) {
            this.id = id;
            this.v = v;
        }

        public int compareTo(Object o) {
            if (o instanceof MapFileEntry) {
                MapFileEntry entry = (MapFileEntry)o;
                int result = this.id.compareTo(entry.id);
                if (result != 0) {
                    return result;
                }
                return this.v.compareTo(entry.v);
            }
            return -1;
        }

        public boolean equals(Object o) {
            if (o instanceof MapFileEntry) {
                MapFileEntry entry = (MapFileEntry)o;
                return this.id.equals(entry.id) && this.v.equals((Object)entry.v);
            }
            return false;
        }

        public int hashCode() {
            return this.id.hashCode() + this.v.hashCode();
        }
    }
}

