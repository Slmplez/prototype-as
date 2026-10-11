/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.pluginconversion.PluginConversionException
 *  org.eclipse.osgi.service.pluginconversion.PluginConverter
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.StateObjectFactory
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.site;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.service.pluginconversion.PluginConverter;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.CatchAllValue;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.PDEUIStateWrapper;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.ProfileManager;
import org.eclipse.pde.internal.build.site.QualifierReplacer;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public class PDEState
implements IPDEBuildConstants,
IBuildPropertiesConstants {
    private static final String[] MANIFEST_ENTRIES = new String[]{"Bundle-Localization", "Bundle-Name", "Bundle-Vendor", "Eclipse-BundleShape", "Eclipse-SourceBundle", "Eclipse-SourceReferences"};
    private StateObjectFactory factory = Platform.getPlatformAdmin().getFactory();
    protected State state = this.factory.createState(false);
    private long id;
    private Properties repositoryVersions;
    private Properties sourceReferences;
    private HashMap bundleClasspaths;
    private ProfileManager profileManager;
    private Map patchBundles;
    private List addedBundle;
    private List unqualifiedBundles;
    private Dictionary platformProperties;
    private List sortedBundles = null;
    private final Set convertedManifests;
    private long lastSortingDate = 0L;
    private String[] eeSources;
    static /* synthetic */ Class class$0;

    protected long getNextId() {
        return ++this.id;
    }

    public PDEState(PDEUIStateWrapper initialState) {
        this();
        this.state = initialState.getState();
        this.factory = this.state.getFactory();
        this.id = initialState.getNextId();
        this.bundleClasspaths = initialState.getClasspaths();
        this.patchBundles = initialState.getPatchData();
        this.addedBundle = new ArrayList();
        this.unqualifiedBundles = new ArrayList();
    }

    public PDEState() {
        this.state.setResolver(Platform.getPlatformAdmin().createResolver());
        this.id = 0L;
        this.bundleClasspaths = new HashMap();
        this.patchBundles = new HashMap();
        this.convertedManifests = new HashSet(2);
        this.loadPluginTagFile();
        this.loadSourceReferences();
    }

    public StateObjectFactory getFactory() {
        return this.factory;
    }

    public boolean addBundleDescription(BundleDescription toAdd) {
        return this.state.addBundle(toAdd);
    }

    private PluginConverter acquirePluginConverter() throws Exception {
        BundleHelper bundleHelper = BundleHelper.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.pluginconversion.PluginConverter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (PluginConverter)bundleHelper.acquireService(clazz.getName());
    }

    public boolean addBundle(Dictionary enhancedManifest, File bundleLocation) {
        String oldVersion = this.updateVersionNumber(enhancedManifest);
        try {
            BundleDescription descriptor = this.factory.createBundleDescription(this.state, enhancedManifest, bundleLocation.getAbsolutePath(), this.getNextId());
            this.bundleClasspaths.put(new Long(descriptor.getBundleId()), BundleHelper.getClasspath(enhancedManifest));
            String patchValue = this.fillPatchData(enhancedManifest);
            if (patchValue != null) {
                this.patchBundles.put(new Long(descriptor.getBundleId()), patchValue);
            }
            this.rememberQualifierTagPresence(descriptor);
            this.rememberManifestConversion(descriptor, enhancedManifest);
            this.rememberManifestEntries(descriptor, enhancedManifest, MANIFEST_ENTRIES);
            this.rememberSourceReference(descriptor, oldVersion);
            if (this.addBundleDescription(descriptor) && this.addedBundle != null) {
                this.addedBundle.add(descriptor);
            }
        }
        catch (BundleException e) {
            Status status = new Status(2, "org.eclipse.pde.build", 15, NLS.bind((String)Messages.exception_stateAddition, (Object)BundleHelper.getManifestHeader(enhancedManifest, "Bundle-Name")), (Throwable)e);
            BundleHelper.getDefault().getLog().log((IStatus)status);
            return false;
        }
        return true;
    }

    private void rememberQualifierTagPresence(BundleDescription descriptor) {
        Properties bundleProperties = null;
        bundleProperties = (Properties)descriptor.getUserObject();
        if (bundleProperties == null) {
            bundleProperties = new Properties();
            descriptor.setUserObject((Object)bundleProperties);
        }
        bundleProperties.setProperty("qualifier", "marker");
    }

    private void rememberSourceReference(BundleDescription descriptor, String oldVersion) {
        if (this.sourceReferences == null) {
            return;
        }
        String key = QualifierReplacer.getQualifierKey(descriptor.getSymbolicName(), oldVersion);
        if (key == null || !this.sourceReferences.containsKey(key)) {
            key = String.valueOf(descriptor.getSymbolicName()) + ',' + Version.emptyVersion.toString();
        }
        if (this.sourceReferences.containsKey(key)) {
            Properties bundleProperties = (Properties)descriptor.getUserObject();
            if (bundleProperties == null) {
                bundleProperties = new Properties();
                descriptor.setUserObject((Object)bundleProperties);
            }
            bundleProperties.setProperty("sourceReference", this.sourceReferences.getProperty(key));
        }
    }

    private void rememberManifestEntries(BundleDescription descriptor, Dictionary manifest, String[] entries) {
        if (entries == null || entries.length == 0) {
            return;
        }
        Properties properties = (Properties)descriptor.getUserObject();
        if (properties == null) {
            properties = new Properties();
            descriptor.setUserObject((Object)properties);
        }
        int i = 0;
        while (i < entries.length) {
            String entry = BundleHelper.getManifestHeader(manifest, entries[i]);
            if (entry != null) {
                properties.put(entries[i], entry);
            }
            ++i;
        }
    }

    private void rememberManifestConversion(BundleDescription descriptor, Dictionary manifest) {
        if (this.convertedManifests == null || !this.convertedManifests.contains(manifest)) {
            return;
        }
        this.convertedManifests.remove(manifest);
        Properties bundleProperties = (Properties)descriptor.getUserObject();
        if (bundleProperties == null) {
            bundleProperties = new Properties();
            descriptor.setUserObject((Object)bundleProperties);
        }
        bundleProperties.setProperty("convertedManifest", "marker");
    }

    private void mapVersionReplacedBundle(BundleDescription oldBundle, BundleDescription newBundle) {
        Properties bundleProperties = null;
        bundleProperties = (Properties)oldBundle.getUserObject();
        if (bundleProperties == null) {
            bundleProperties = new Properties();
            oldBundle.setUserObject((Object)bundleProperties);
        }
        bundleProperties.setProperty("versionReplacement", String.valueOf(newBundle.getBundleId()));
    }

    private String fillPatchData(Dictionary manifest) {
        if (BundleHelper.getManifestHeader(manifest, "Eclipse-ExtensibleAPI") != null) {
            return "Eclipse-ExtensibleAPI: true";
        }
        if (BundleHelper.getManifestHeader(manifest, "Eclipse-PatchFragment") != null) {
            return "Eclipse-PatchFragment: true";
        }
        return null;
    }

    private void loadPluginTagFile() {
        this.repositoryVersions = new Properties();
        try {
            BufferedInputStream input = new BufferedInputStream(new FileInputStream(String.valueOf(AbstractScriptGenerator.getWorkingDirectory()) + '/' + "pluginVersions.properties"));
            try {
                this.repositoryVersions.load(input);
            }
            finally {
                ((InputStream)input).close();
            }
        }
        catch (IOException iOException) {}
    }

    private void loadSourceReferences() {
        this.sourceReferences = new Properties();
        try {
            BufferedInputStream input = new BufferedInputStream(new FileInputStream(String.valueOf(AbstractScriptGenerator.getWorkingDirectory()) + '/' + "sourceReferences.properties"));
            try {
                this.sourceReferences.load(input);
            }
            finally {
                ((InputStream)input).close();
            }
        }
        catch (IOException iOException) {}
    }

    public boolean addBundle(File bundleLocation) {
        Dictionary manifest = this.loadManifest(bundleLocation);
        if (manifest == null) {
            return this.addFlexibleRoot(bundleLocation);
        }
        try {
            this.hasQualifier(bundleLocation, manifest);
        }
        catch (BundleException bundleException) {}
        return this.addBundle(manifest, bundleLocation);
    }

    private boolean addFlexibleRoot(File bundleLocation) {
        if (!new File(bundleLocation, ".settings/org.eclipse.pde.core.prefs").exists()) {
            return false;
        }
        try {
            Properties properties = AbstractScriptGenerator.readProperties(bundleLocation.getAbsolutePath(), ".settings/org.eclipse.pde.core.prefs", 0);
            String root = properties.getProperty("BUNDLE_ROOT_PATH");
            if (root != null) {
                return this.addBundle(new File(bundleLocation, root));
            }
        }
        catch (CoreException coreException) {}
        return false;
    }

    private String updateVersionNumber(Dictionary manifest) {
        String symbolicName;
        String oldVersion;
        String newVersion;
        block4: {
            newVersion = null;
            oldVersion = null;
            try {
                symbolicName = BundleHelper.getManifestHeader(manifest, "Bundle-SymbolicName");
                if (symbolicName != null) break block4;
                return null;
            }
            catch (BundleException bundleException) {}
        }
        symbolicName = ManifestElement.parseHeader((String)"Bundle-SymbolicName", (String)symbolicName)[0].getValue();
        oldVersion = BundleHelper.getManifestHeader(manifest, "Bundle-Version");
        newVersion = QualifierReplacer.replaceQualifierInVersion(oldVersion, symbolicName, (String)manifest.get("qualifier"), this.repositoryVersions);
        if (newVersion != null) {
            manifest.put("Bundle-Version", newVersion);
        }
        return oldVersion;
    }

    private void hasQualifier(File bundleLocation, Dictionary manifest) throws BundleException {
        ManifestElement[] versionInfo = ManifestElement.parseHeader((String)"Bundle-Version", (String)BundleHelper.getManifestHeader(manifest, "Bundle-Version"));
        if (versionInfo != null && versionInfo[0].getValue().endsWith("qualifier")) {
            manifest.put("qualifier", this.getQualifierPropery(bundleLocation.getAbsolutePath()));
        }
    }

    private String getQualifierPropery(String bundleLocation) {
        String qualifierInfo = null;
        try {
            qualifierInfo = AbstractScriptGenerator.readProperties(bundleLocation, "build.properties", 1).getProperty("qualifier");
        }
        catch (CoreException coreException) {}
        if (qualifierInfo == null) {
            qualifierInfo = "context";
        }
        return qualifierInfo;
    }

    /*
     * Unable to fully structure code
     */
    private Dictionary basicLoadManifest(File bundleLocation) {
        manifestStream = null;
        jarFile = null;
        try {
            if ("jar".equalsIgnoreCase(new Path(bundleLocation.getName()).getFileExtension()) && bundleLocation.isFile()) {
                jarFile = new ZipFile(bundleLocation, 1);
                manifestEntry = jarFile.getEntry("META-INF/MANIFEST.MF");
                if (manifestEntry != null) {
                    manifestStream = jarFile.getInputStream(manifestEntry);
                }
            } else {
                manifestStream = new BufferedInputStream(new FileInputStream(new File(bundleLocation, "META-INF/MANIFEST.MF")));
            }
        }
        catch (IOException v0) {}
        if (manifestStream == null) {
            return this.convertPluginManifest(bundleLocation, true);
        }
        result = new Hashtable<K, V>();
        result.putAll(ManifestElement.parseBundleManifest((InputStream)manifestStream, null));
        var6_5 = result;
        try {
            manifestStream.close();
        }
        catch (IOException v1) {}
        try {
            if (jarFile != null) {
                jarFile.close();
            }
        }
        catch (IOException v2) {}
        return var6_5;
        catch (IOException v3) {
            ** try [egrp 4[TRYBLOCK] [10 : 155->156)] { 
lbl31:
            // 1 sources

            try {
                manifestStream.close();
            }
            catch (IOException v4) {}
            try {
                if (jarFile != null) {
                    jarFile.close();
                }
            }
            catch (IOException v5) {}
            return null;
        }
        catch (BundleException v6) {
            ** try [egrp 7[TRYBLOCK] [11 : 178->179)] { 
lbl-1000:
            // 3 sources

            {
                catch (Throwable var5_6) {
                    try {
                        manifestStream.close();
                    }
                    catch (IOException v7) {}
                    try {
                        if (jarFile != null) {
                            jarFile.close();
                        }
                    }
                    catch (IOException v8) {}
                    throw var5_6;
                }
            }
lbl54:
            // 1 sources

            try {
                manifestStream.close();
            }
            catch (IOException v9) {}
            try {
                if (jarFile != null) {
                    jarFile.close();
                }
            }
            catch (IOException v10) {}
            return null;
        }
    }

    private boolean enforceSymbolicName(File bundleLocation, Dictionary initialManifest) {
        if (BundleHelper.getManifestHeader(initialManifest, "Bundle-SymbolicName") != null) {
            return true;
        }
        Dictionary generatedManifest = this.convertPluginManifest(bundleLocation, false);
        if (generatedManifest == null) {
            return false;
        }
        Enumeration enumeration = generatedManifest.keys();
        while (enumeration.hasMoreElements()) {
            Object key = enumeration.nextElement();
            if (BundleHelper.getManifestHeader(initialManifest, (String)key) != null) continue;
            initialManifest.put(key, generatedManifest.get(key));
        }
        return true;
    }

    private void enforceClasspath(Dictionary manifest) {
        String classpath = BundleHelper.getManifestHeader(manifest, "Bundle-ClassPath");
        if (classpath == null) {
            manifest.put("Bundle-ClassPath", ".");
        }
    }

    private void enforceVersion(Dictionary manifest) {
        String version = BundleHelper.getManifestHeader(manifest, "Bundle-Version");
        if (version == null) {
            manifest.put("Bundle-Version", "0.0.0");
        }
    }

    private Dictionary loadManifest(File bundleLocation) {
        Dictionary manifest = this.basicLoadManifest(bundleLocation);
        if (manifest == null) {
            return null;
        }
        if (!this.enforceSymbolicName(bundleLocation, manifest)) {
            return null;
        }
        this.enforceVersion(manifest);
        this.enforceClasspath(manifest);
        return manifest;
    }

    private Dictionary convertPluginManifest(File bundleLocation, boolean logConversionException) {
        try {
            PluginConverter converter = this.acquirePluginConverter();
            Dictionary manifest = converter.convertManifest(bundleLocation, false, AbstractScriptGenerator.isBuildingOSGi() ? null : "2.1", false, null);
            if (this.convertedManifests != null) {
                this.convertedManifests.add(manifest);
            }
            return manifest;
        }
        catch (PluginConversionException convertException) {
            if (bundleLocation.getName().equals("feature.xml")) {
                return null;
            }
            if (!new File(bundleLocation, "plugin.xml").exists() && !new File(bundleLocation, "fragment.xml").exists()) {
                return null;
            }
            if (logConversionException) {
                Status status = new Status(2, "org.eclipse.pde.build", 0, NLS.bind((String)Messages.exception_errorConverting, (Object)bundleLocation.getAbsolutePath()), (Throwable)convertException);
                BundleHelper.getDefault().getLog().log((IStatus)status);
            }
            return null;
        }
        catch (Exception serviceException) {
            Status status = new Status(2, "org.eclipse.pde.build", 0, NLS.bind((String)Messages.exception_cannotAcquireService, (Object)"Plugin converter"), (Throwable)serviceException);
            BundleHelper.getDefault().getLog().log((IStatus)status);
            return null;
        }
    }

    public void addBundles(Collection bundles) {
        Iterator iter = bundles.iterator();
        while (iter.hasNext()) {
            File bundle = (File)iter.next();
            this.addBundle(bundle);
        }
    }

    public void resolveState() {
        Hashtable<String, Object> prop;
        List configs = AbstractScriptGenerator.getConfigInfos();
        ArrayList properties = new ArrayList();
        String[] javaProfiles = this.getJavaProfiles();
        String systemPackages = null;
        String ee = null;
        Iterator iter = configs.iterator();
        while (iter.hasNext()) {
            Config aConfig = (Config)iter.next();
            prop = new Hashtable<String, Object>();
            if (AbstractScriptGenerator.getPropertyAsBoolean("resolution.devMode")) {
                ((Dictionary)prop).put("osgi.resolverMode", "development");
            }
            String os = aConfig.getOs();
            String ws = aConfig.getWs();
            String arch = aConfig.getArch();
            if (Config.ANY.equalsIgnoreCase(os)) {
                ((Dictionary)prop).put("osgi.os", CatchAllValue.singleton);
            } else {
                ((Dictionary)prop).put("osgi.os", os);
            }
            if (Config.ANY.equalsIgnoreCase(ws)) {
                ((Dictionary)prop).put("osgi.ws", CatchAllValue.singleton);
            } else {
                ((Dictionary)prop).put("osgi.ws", ws);
            }
            if (Config.ANY.equalsIgnoreCase(arch)) {
                ((Dictionary)prop).put("osgi.arch", CatchAllValue.singleton);
            } else {
                ((Dictionary)prop).put("osgi.arch", arch);
            }
            if (this.platformProperties != null) {
                Enumeration e = this.platformProperties.keys();
                while (e.hasMoreElements()) {
                    String key = (String)e.nextElement();
                    ((Dictionary)prop).put(key, this.platformProperties.get(key));
                }
            }
            properties.add(prop);
        }
        Properties profileProps = null;
        boolean added = false;
        int j = javaProfiles.length - 1;
        while (j >= 0) {
            String profileName;
            profileProps = this.profileManager.getProfileProperties(javaProfiles[j]);
            if (profileProps != null && (AbstractScriptGenerator.getImmutableAntProperty(profileName = profileProps.getProperty("osgi.java.profile.name")) != null || j == 0 && !added)) {
                systemPackages = profileProps.getProperty("org.osgi.framework.system.packages");
                ee = profileProps.getProperty("org.osgi.framework.executionenvironment");
                prop = new Hashtable();
                ((Dictionary)prop).put("org.osgi.framework.system.packages", systemPackages);
                ((Dictionary)prop).put("org.osgi.framework.executionenvironment", ee);
                properties.add(prop);
                added = true;
            }
            --j;
        }
        Dictionary[] stateProperties = properties.toArray(new Dictionary[properties.size()]);
        this.state.setPlatformProperties(stateProperties);
        this.state.resolve(false);
        if (this.unqualifiedBundles != null) {
            this.forceQualifiers();
        }
    }

    public State getState() {
        return this.state;
    }

    public BundleDescription[] getDependentBundles(String bundleId, Version version) {
        BundleDescription root = this.state.getBundle(bundleId, version);
        return PDEState.getDependentBundles(root);
    }

    public static BundleDescription[] getImportedBundles(BundleDescription root) {
        if (root == null) {
            return new BundleDescription[0];
        }
        ExportPackageDescription[] packages = root.getResolvedImports();
        ArrayList<BundleDescription> resolvedImports = new ArrayList<BundleDescription>(packages.length);
        int i = 0;
        while (i < packages.length) {
            if (!root.getLocation().equals(packages[i].getExporter().getLocation()) && !resolvedImports.contains(packages[i].getExporter())) {
                resolvedImports.add(packages[i].getExporter());
            }
            ++i;
        }
        return resolvedImports.toArray(new BundleDescription[resolvedImports.size()]);
    }

    public static BundleDescription[] getRequiredBundles(BundleDescription root) {
        if (root == null) {
            return new BundleDescription[0];
        }
        return root.getResolvedRequires();
    }

    public BundleDescription getResolvedBundle(String bundleId, String version) {
        return this.getBundle(bundleId, version, true);
    }

    public BundleDescription getBundle(String bundleId, String version, boolean resolved) {
        if ("0.0.0".equals(version) || version == null) {
            BundleDescription bundle = this.getResolvedBundle(bundleId);
            if (bundle == null && !resolved) {
                bundle = this.getState().getBundle(bundleId, null);
            }
            return bundle;
        }
        Version parsedVersion = Version.parseVersion((String)version);
        BundleDescription description = this.getState().getBundle(bundleId, parsedVersion);
        if (description != null && (!resolved || description.isResolved())) {
            return description;
        }
        if (parsedVersion.getQualifier().indexOf("qualifier") > -1) {
            BundleDescription[] bundles = this.sortByVersion(this.getState().getBundles(bundleId));
            VersionRange qualifierRange = Utils.createVersionRange(version);
            int i = bundles.length - 1;
            while (i >= 0) {
                if (qualifierRange.isIncluded(bundles[i].getVersion()) && (!resolved || bundles[i].isResolved())) {
                    return bundles[i];
                }
                --i;
            }
        }
        return null;
    }

    private BundleDescription[] sortByVersion(BundleDescription[] bundles) {
        if (bundles.length > 1) {
            Arrays.sort(bundles, new Comparator(){

                public int compare(Object o1, Object o2) {
                    return ((BundleDescription)o1).getVersion().compareTo(((BundleDescription)o2).getVersion());
                }
            });
        }
        return bundles;
    }

    public BundleDescription getResolvedBundle(String bundleId) {
        BundleDescription[] description = this.sortByVersion(this.getState().getBundles(bundleId));
        if (description == null) {
            return null;
        }
        int i = description.length - 1;
        while (i >= 0) {
            if (description[i].isResolved()) {
                return description[i];
            }
            --i;
        }
        return null;
    }

    public static BundleDescription[] getDependentBundles(BundleDescription root) {
        BundleDescription[] imported = PDEState.getImportedBundles(root);
        BundleDescription[] required = PDEState.getRequiredBundles(root);
        BundleDescription[] dependents = new BundleDescription[imported.length + required.length];
        System.arraycopy(imported, 0, dependents, 0, imported.length);
        System.arraycopy(required, 0, dependents, imported.length, required.length);
        return dependents;
    }

    public static BundleDescription[] getDependentBundlesWithFragments(BundleDescription root) {
        BundleDescription[] imported = PDEState.getImportedBundles(root);
        BundleDescription[] importedByFragments = PDEState.getImportedByFragments(root);
        BundleDescription[] required = PDEState.getRequiredBundles(root);
        BundleDescription[] requiredByFragments = PDEState.getRequiredByFragments(root);
        BundleDescription[] dependents = new BundleDescription[imported.length + importedByFragments.length + required.length + requiredByFragments.length];
        System.arraycopy(imported, 0, dependents, 0, imported.length);
        System.arraycopy(importedByFragments, 0, dependents, imported.length, importedByFragments.length);
        System.arraycopy(required, 0, dependents, imported.length + importedByFragments.length, required.length);
        System.arraycopy(requiredByFragments, 0, dependents, imported.length + importedByFragments.length + required.length, requiredByFragments.length);
        return dependents;
    }

    public static BundleDescription[] getImportedByFragments(BundleDescription root) {
        BundleDescription[] fragments = root.getFragments();
        ArrayList importedByFragments = new ArrayList();
        int i = 0;
        while (i < fragments.length) {
            if (fragments[i].isResolved()) {
                PDEState.merge(importedByFragments, PDEState.getImportedBundles(fragments[i]));
            }
            ++i;
        }
        BundleDescription[] result = new BundleDescription[importedByFragments.size()];
        return importedByFragments.toArray(result);
    }

    public static BundleDescription[] getRequiredByFragments(BundleDescription root) {
        BundleDescription[] fragments = root.getFragments();
        ArrayList importedByFragments = new ArrayList();
        int i = 0;
        while (i < fragments.length) {
            if (fragments[i].isResolved()) {
                PDEState.merge(importedByFragments, PDEState.getRequiredBundles(fragments[i]));
            }
            ++i;
        }
        BundleDescription[] result = new BundleDescription[importedByFragments.size()];
        return importedByFragments.toArray(result);
    }

    public static void merge(List source, BundleDescription[] toAdd) {
        int i = 0;
        while (i < toAdd.length) {
            if (!source.contains(toAdd[i])) {
                source.add(toAdd[i]);
            }
            ++i;
        }
    }

    public Properties loadPropertyFileIn(Map toMerge, File location) {
        Properties result = new Properties();
        result.putAll(toMerge);
        try {
            BufferedInputStream propertyStream = new BufferedInputStream(new FileInputStream(new File(location, "build.properties")));
            try {
                result.load(propertyStream);
            }
            finally {
                ((InputStream)propertyStream).close();
            }
        }
        catch (IOException iOException) {}
        return result;
    }

    public HashMap getExtraData() {
        return this.bundleClasspaths;
    }

    public Map getPatchData() {
        return this.patchBundles;
    }

    public List getSortedBundles() {
        if (this.lastSortingDate != this.getState().getTimeStamp()) {
            this.lastSortingDate = this.getState().getTimeStamp();
            BundleDescription[] toSort = this.getState().getResolvedBundles();
            Platform.getPlatformAdmin().getStateHelper().sortBundles(toSort);
            this.sortedBundles = Arrays.asList(toSort);
        }
        return this.sortedBundles;
    }

    public void cleanupOriginalState() {
        if (this.addedBundle == null && this.unqualifiedBundles == null) {
            return;
        }
        Iterator iter = this.addedBundle.iterator();
        while (iter.hasNext()) {
            BundleDescription added = (BundleDescription)iter.next();
            this.state.removeBundle(added);
        }
        this.addedBundle.clear();
        iter = this.unqualifiedBundles.iterator();
        while (iter.hasNext()) {
            BundleDescription toAddBack = (BundleDescription)iter.next();
            this.state.removeBundle(toAddBack.getBundleId());
            this.addBundleDescription(toAddBack);
        }
        this.unqualifiedBundles.clear();
        BundleDescription[] allBundles = this.state.getBundles();
        int i = 0;
        while (i < allBundles.length) {
            allBundles[i].setUserObject(null);
            ++i;
        }
        this.state.resolve();
    }

    private File getOSGiLocation() {
        BundleDescription osgiBundle = this.state.getBundle("org.eclipse.osgi", null);
        if (osgiBundle == null) {
            return null;
        }
        return new File(osgiBundle.getLocation());
    }

    private String[] getJavaProfiles() {
        return this.getProfileManager().getJavaProfiles();
    }

    private void forceQualifiers() {
        BundleDescription[] resolvedBundles = this.state.getResolvedBundles();
        int i = 0;
        while (i < resolvedBundles.length) {
            if (resolvedBundles[i].getVersion().getQualifier().endsWith("qualifier")) {
                BundleDescription b = resolvedBundles[i];
                this.unqualifiedBundles.add(this.state.removeBundle(b.getBundleId()));
                String newVersion = QualifierReplacer.replaceQualifierInVersion(b.getVersion().toString(), b.getSymbolicName(), this.getQualifierPropery(b.getLocation()), null);
                BundleDescription newBundle = this.state.getFactory().createBundleDescription(b.getBundleId(), b.getSymbolicName(), new Version(newVersion), b.getLocation(), b.getRequiredBundles(), b.getHost(), b.getImportPackages(), b.getExportPackages(), b.isSingleton(), b.attachFragments(), b.dynamicFragments(), b.getPlatformFilter(), b.getExecutionEnvironments(), b.getGenericRequires(), b.getGenericCapabilities(), b.getNativeCodeSpecification());
                this.addBundleDescription(newBundle);
                this.rememberQualifierTagPresence(newBundle);
                this.mapVersionReplacedBundle(b, newBundle);
            }
            ++i;
        }
        this.state.resolve();
    }

    public BundleDescription getVersionReplacement(BundleDescription bundle) {
        Properties props = (Properties)bundle.getUserObject();
        if (props == null) {
            return bundle;
        }
        String idString = props.getProperty("versionReplacement");
        if (idString == null) {
            return bundle;
        }
        try {
            long newId = Long.parseLong(idString);
            BundleDescription newBundle = this.state.getBundle(newId);
            if (newBundle != null) {
                return newBundle;
            }
        }
        catch (NumberFormatException numberFormatException) {}
        return bundle;
    }

    public void setPlatformProperties(Dictionary platformProperties) {
        this.platformProperties = platformProperties;
    }

    public void setEESources(String[] eeSources) {
        this.eeSources = eeSources;
    }

    public ProfileManager getProfileManager() {
        if (this.profileManager == null) {
            File osgi = this.getOSGiLocation();
            String[] sources = null;
            if (osgi != null) {
                if (this.eeSources != null) {
                    sources = new String[this.eeSources.length + 1];
                    sources[0] = osgi.getAbsolutePath();
                    System.arraycopy(this.eeSources, 0, sources, 1, this.eeSources.length);
                } else {
                    sources = new String[]{osgi.getAbsolutePath()};
                }
                this.profileManager = new ProfileManager(sources, false);
            } else {
                this.profileManager = new ProfileManager(this.eeSources, true);
            }
        }
        return this.profileManager;
    }
}

