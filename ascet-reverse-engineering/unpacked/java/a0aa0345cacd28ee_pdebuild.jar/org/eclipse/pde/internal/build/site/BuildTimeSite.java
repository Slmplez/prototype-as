/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.Feature
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.NativeCodeSpecification
 *  org.eclipse.osgi.service.resolver.ResolverError
 *  org.eclipse.osgi.service.resolver.StateHelper
 *  org.eclipse.osgi.service.resolver.VersionConstraint
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Filter
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.site;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.IXMLConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeFeatureFactory;
import org.eclipse.pde.internal.build.site.BuildTimeSiteContentProvider;
import org.eclipse.pde.internal.build.site.FilteringState;
import org.eclipse.pde.internal.build.site.PDEState;
import org.eclipse.pde.internal.build.site.PluginRegistryConverter;
import org.eclipse.pde.internal.build.site.ReachablePlugin;
import org.eclipse.pde.internal.build.site.compatibility.FeatureReference;
import org.osgi.framework.Filter;
import org.osgi.framework.Version;

public class BuildTimeSite
implements IPDEBuildConstants,
IXMLConstants {
    private final BuildTimeFeatureFactory factory = new BuildTimeFeatureFactory();
    private final Map featureCache = new HashMap();
    private List featureReferences;
    private BuildTimeSiteContentProvider contentProvider;
    private boolean featuresResolved = false;
    private PDEState state;
    private Properties repositoryVersions;
    private boolean reportResolutionErrors;
    private Properties platformProperties;
    private String[] eeSources;
    private List rootFeaturesForFilter;
    private List rootPluginsForFiler;
    private boolean filter = false;
    private final Comparator featureComparator = new Comparator(){

        public int compare(Object arg0, Object arg1) {
            Version v0 = new Version(((Feature)arg0).getVersion());
            Version v1 = new Version(((Feature)arg1).getVersion());
            return -1 * v0.compareTo(v1);
        }
    };

    public void setReportResolutionErrors(boolean value) {
        this.reportResolutionErrors = value;
    }

    public void setPlatformPropeties(Properties platformProperties) {
        this.platformProperties = platformProperties;
    }

    public Properties getFeatureVersions() {
        if (this.repositoryVersions == null) {
            this.repositoryVersions = new Properties();
            try {
                BufferedInputStream input = new BufferedInputStream(new FileInputStream(String.valueOf(AbstractScriptGenerator.getWorkingDirectory()) + '/' + "featureVersions.properties"));
                try {
                    this.repositoryVersions.load(input);
                }
                finally {
                    ((InputStream)input).close();
                }
            }
            catch (IOException iOException) {}
        }
        return this.repositoryVersions;
    }

    private PDEState createConverter() {
        return new PluginRegistryConverter();
    }

    private Dictionary getUIPlatformProperties() {
        Hashtable<String, String> result = new Hashtable<String, String>();
        ((Dictionary)result).put("osgi.resolveOptional", "true");
        ((Dictionary)result).put("osgi.resolverMode", "development");
        return result;
    }

    private Collection removeDuplicates(Collection bundles) {
        LinkedHashSet<File> result = new LinkedHashSet<File>(bundles.size() / 2);
        Iterator iterator = bundles.iterator();
        while (iterator.hasNext()) {
            File bundle = (File)iterator.next();
            try {
                bundle = bundle.getCanonicalFile();
            }
            catch (IOException iOException) {}
            if (result.contains(bundle)) continue;
            result.add(bundle);
        }
        return result;
    }

    public PDEState getRegistry() throws CoreException {
        if (this.state == null) {
            BuildTimeSiteContentProvider provider = this.getSiteContentProvider();
            if (provider.getInitialState() != null) {
                this.state = new PDEState(provider.getInitialState());
                this.state.setEESources(this.eeSources);
                this.state.setPlatformProperties(this.getUIPlatformProperties());
                this.state.resolveState();
                return this.state;
            }
            if (AbstractScriptGenerator.isBuildingOSGi()) {
                if (this.filter) {
                    this.state = new FilteringState();
                    ((FilteringState)this.state).setFilter(this.findAllReferencedPlugins());
                } else {
                    this.state = new PDEState();
                }
                if (this.platformProperties != null) {
                    this.state.setPlatformProperties(this.platformProperties);
                }
            } else {
                this.state = this.createConverter();
            }
            Collection bundles = this.removeDuplicates(provider.getPluginPaths());
            this.state.addBundles(bundles);
            this.state.setEESources(this.eeSources);
            if (this.state instanceof FilteringState) {
                ((FilteringState)this.state).setFilter(null);
            }
            this.state.resolveState();
            BundleDescription[] allBundles = this.state.getState().getBundles();
            BundleDescription[] resolvedBundles = this.state.getState().getResolvedBundles();
            if (allBundles.length == resolvedBundles.length) {
                return this.state;
            }
            if (this.reportResolutionErrors) {
                MultiStatus errors = new MultiStatus("org.eclipse.pde.build", 1, Messages.exception_registryResolution, null);
                BundleDescription[] all = this.state.getState().getBundles();
                StateHelper helper = Platform.getPlatformAdmin().getStateHelper();
                int i = 0;
                while (i < all.length) {
                    if (!all[i].isResolved()) {
                        ResolverError[] resolutionErrors = this.state.getState().getResolverErrors(all[i]);
                        VersionConstraint[] versionErrors = helper.getUnsatisfiedConstraints(all[i]);
                        if (!BuildTimeSite.isConfigError(all[i], resolutionErrors, AbstractScriptGenerator.getConfigInfos())) {
                            String errorMessage = "Bundle " + all[i].getSymbolicName() + ":\n" + BuildTimeSite.getResolutionErrorMessage(resolutionErrors);
                            int j = 0;
                            while (j < versionErrors.length) {
                                errorMessage = String.valueOf(errorMessage) + '\t' + BuildTimeSite.getResolutionFailureMessage(versionErrors[j]) + '\n';
                                ++j;
                            }
                            errors.add((IStatus)new Status(2, "org.eclipse.pde.build", 2, errorMessage, null));
                        }
                    }
                    ++i;
                }
                if (errors.getChildren().length > 0) {
                    BundleHelper.getDefault().getLog().log((IStatus)errors);
                }
            }
        }
        if (!this.state.getState().isResolved()) {
            this.state.state.resolve(true);
        }
        return this.state;
    }

    public IStatus missingPlugin(String id, String version, Feature containingFeature, boolean throwException) throws CoreException {
        BundleDescription bundle = this.state.getBundle(id, version, false);
        if (bundle == null) {
            String message = NLS.bind((String)Messages.exception_missingPlugin, (Object)(String.valueOf(id) + "_" + version));
            if (containingFeature != null) {
                message = NLS.bind((String)Messages.includedFromFeature, (Object)containingFeature.getId(), (Object)message);
            }
            Status status = new Status(4, "org.eclipse.pde.build", 5, message, null);
            if (throwException) {
                throw new CoreException((IStatus)status);
            }
            return status;
        }
        if (bundle.isResolved()) {
            return null;
        }
        ResolverError[] resolutionErrors = this.state.getState().getResolverErrors(bundle);
        return BuildTimeSite.missingPlugin(bundle, resolutionErrors, containingFeature, throwException);
    }

    public static IStatus missingPlugin(BundleDescription bundle, ResolverError[] resolutionErrors, Feature containingFeature, boolean throwException) throws CoreException {
        StateHelper helper = Platform.getPlatformAdmin().getStateHelper();
        VersionConstraint[] versionErrors = helper.getUnsatisfiedConstraints(bundle);
        String message = NLS.bind((String)Messages.exception_unresolvedPlugin, (Object)(String.valueOf(bundle.getSymbolicName()) + '_' + bundle.getVersion().toString()));
        if (containingFeature != null) {
            message = NLS.bind((String)Messages.includedFromFeature, (Object)containingFeature.getId(), (Object)message);
        }
        message = String.valueOf(message) + ":\n" + BuildTimeSite.getResolutionErrorMessage(resolutionErrors);
        int j = 0;
        while (j < versionErrors.length) {
            message = String.valueOf(message) + '\t' + BuildTimeSite.getResolutionFailureMessage(versionErrors[j]) + '\n';
            ++j;
        }
        Status status = new Status(4, "org.eclipse.pde.build", 5, message, null);
        if (throwException) {
            throw new CoreException((IStatus)status);
        }
        return status;
    }

    public static boolean isConfigError(BundleDescription bundle, ResolverError[] errors, List configs) {
        Hashtable<String, String> environment = new Hashtable<String, String>(3);
        Filter bundleFilter = BundleHelper.getDefault().getFilter(bundle);
        if (bundleFilter != null && BuildTimeSite.hasPlatformFilterError(errors) != null) {
            Iterator iter = configs.iterator();
            while (iter.hasNext()) {
                Config aConfig = (Config)iter.next();
                ((Dictionary)environment).put("osgi.os", aConfig.getOs());
                ((Dictionary)environment).put("osgi.ws", aConfig.getWs());
                ((Dictionary)environment).put("osgi.arch", aConfig.getArch());
                if (!bundleFilter.match(environment)) continue;
                return false;
            }
            return true;
        }
        return false;
    }

    private static ResolverError hasPlatformFilterError(ResolverError[] errors) {
        int i = 0;
        while (i < errors.length) {
            if ((errors[i].getType() & 0x2000) != 0) {
                return errors[i];
            }
            if ((errors[i].getType() & 0x10000) != 0) {
                return errors[i];
            }
            ++i;
        }
        return null;
    }

    public static String getResolutionErrorMessage(ResolverError[] errors) {
        String errorMessage = "";
        int i = 0;
        while (i < errors.length) {
            if ((errors[i].getType() & 0x4078) != 0) {
                errorMessage = String.valueOf(errorMessage) + '\t' + errors[i].toString() + '\n';
            }
            ++i;
        }
        return errorMessage;
    }

    public static String getResolutionFailureMessage(VersionConstraint unsatisfied) {
        if (unsatisfied.isResolved()) {
            throw new IllegalArgumentException();
        }
        if (unsatisfied instanceof ImportPackageSpecification) {
            return NLS.bind((String)Messages.unsatisfied_import, (Object)BuildTimeSite.displayVersionConstraint(unsatisfied));
        }
        if (unsatisfied instanceof NativeCodeSpecification) {
            return NLS.bind((String)Messages.unsatisfied_nativeSpec, (Object)unsatisfied.toString());
        }
        if (unsatisfied instanceof BundleSpecification) {
            if (((BundleSpecification)unsatisfied).isOptional()) {
                return NLS.bind((String)Messages.unsatisfied_optionalBundle, (Object)BuildTimeSite.displayVersionConstraint(unsatisfied));
            }
            return NLS.bind((String)Messages.unsatisfied_required, (Object)BuildTimeSite.displayVersionConstraint(unsatisfied));
        }
        return NLS.bind((String)Messages.unsatisfied_host, (Object)BuildTimeSite.displayVersionConstraint(unsatisfied));
    }

    private static String displayVersionConstraint(VersionConstraint constraint) {
        VersionRange versionSpec = constraint.getVersionRange();
        if (versionSpec == null) {
            return constraint.getName();
        }
        return String.valueOf(constraint.getName()) + '_' + versionSpec;
    }

    public BuildTimeFeature findFeature(String featureId, String versionId, boolean throwsException) throws CoreException {
        VersionRange range = Utils.createVersionRange(versionId);
        return this.findFeature(featureId, range, throwsException);
    }

    private BuildTimeFeature findFeature(String featureId, VersionRange range, boolean throwsException) throws CoreException {
        if (range == null) {
            range = VersionRange.emptyRange;
        }
        if (!this.featuresResolved) {
            this.resolveFeatureReferences();
        }
        if (this.featureCache.containsKey(featureId)) {
            Set featureSet = (Set)this.featureCache.get(featureId);
            Iterator iterator = featureSet.iterator();
            while (iterator.hasNext()) {
                BuildTimeFeature feature = (BuildTimeFeature)((Object)iterator.next());
                Version featureVersion = new Version(feature.getVersion());
                if (!range.isIncluded(featureVersion)) continue;
                return feature;
            }
        }
        if (throwsException) {
            String message = null;
            message = range.equals((Object)VersionRange.emptyRange) ? NLS.bind((String)Messages.exception_missingFeature, (Object)featureId) : NLS.bind((String)Messages.exception_missingFeatureInRange, (Object)featureId, (Object)range);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, null));
        }
        return null;
    }

    private void resolveFeatureReferences() throws CoreException {
        FeatureReference[] features = this.getFeatureReferences();
        int i = 0;
        while (i < features.length) {
            try {
                features[i].getFeature();
            }
            catch (CoreException coreException) {
                String message = NLS.bind((String)Messages.exception_featureParse, (Object)features[i].getURL());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, null));
            }
            ++i;
        }
        this.featuresResolved = true;
    }

    public void addFeatureReferenceModel(File featureXML) {
        if (featureXML.exists()) {
            try {
                URL featureURL = new URL("file:" + featureXML.getAbsolutePath() + '/');
                FeatureReference featureRef = new FeatureReference();
                featureRef.setSiteModel(this);
                featureRef.setURLString(featureURL.toExternalForm());
                this.addFeatureReferenceModel(featureRef);
            }
            catch (MalformedURLException e) {
                BundleHelper.getDefault().getLog().log((IStatus)new Status(2, "org.eclipse.pde.build", 20, NLS.bind((String)Messages.warning_cannotLocateSource, (Object)featureXML.getAbsolutePath()), (Throwable)e));
            }
        }
    }

    public void addFeatureReferenceModel(FeatureReference featureReference) {
        if (this.featureReferences == null) {
            this.featureReferences = new ArrayList();
        }
        this.featureReferences.add(featureReference);
        this.featuresResolved = false;
    }

    private SortedSet findAllReferencedPlugins() throws CoreException {
        ArrayList<BuildTimeFeature> rootFeatures = new ArrayList<BuildTimeFeature>();
        TreeSet<ReachablePlugin> allPlugins = new TreeSet<ReachablePlugin>();
        Iterator iter = this.rootFeaturesForFilter.iterator();
        while (iter.hasNext()) {
            BuildTimeFeature correspondingFeature = this.findFeature((String)iter.next(), (String)null, true);
            if (correspondingFeature == null) {
                return null;
            }
            rootFeatures.add(correspondingFeature);
        }
        iter = this.rootPluginsForFiler.iterator();
        while (iter.hasNext()) {
            allPlugins.add(new ReachablePlugin((String)iter.next(), ReachablePlugin.WIDEST_RANGE));
        }
        int it = 0;
        while (it < rootFeatures.size()) {
            BuildTimeFeature toAnalyse = null;
            try {
                toAnalyse = (BuildTimeFeature)((Object)rootFeatures.get(it++));
            }
            catch (RuntimeException e) {
                e.printStackTrace();
            }
            FeatureEntry[] includedRefs = toAnalyse.getIncludedFeatureReferences();
            int i = 0;
            while (i < includedRefs.length) {
                String featureId = includedRefs[i].getId();
                BuildTimeFeature nested = this.findFeature(featureId, includedRefs[i].getVersion(), false);
                if (nested != null) {
                    rootFeatures.add(nested);
                } else {
                    Properties props = AbstractScriptGenerator.readProperties(toAnalyse.getRootLocation(), "build.properties", 0);
                    boolean doSourceFeatureGeneration = props.containsKey("generate.feature@" + featureId);
                    if (doSourceFeatureGeneration) {
                        String[] extraEntries = Utils.getArrayFromString(props.getProperty("generate.feature@" + featureId));
                        int j = 1;
                        while (j < extraEntries.length) {
                            Map items = Utils.parseExtraBundlesString(extraEntries[j], true);
                            String id = (String)items.get("id");
                            Version version = (Version)items.get("version");
                            if (extraEntries[j].startsWith("feature@")) {
                                FeatureEntry added = new FeatureEntry(id, version.toString(), false);
                                FeatureEntry[] expanded = new FeatureEntry[includedRefs.length + 1];
                                System.arraycopy(includedRefs, 0, expanded, 0, includedRefs.length);
                                expanded[includedRefs.length] = added;
                                includedRefs = expanded;
                            } else if (extraEntries[j].startsWith("plugin@")) {
                                VersionRange range = new VersionRange(version, true, version.equals((Object)Version.emptyVersion) ? null : version, true);
                                allPlugins.add(new ReachablePlugin(id, range));
                            }
                            ++j;
                        }
                    } else {
                        String message = NLS.bind((String)Messages.exception_missingFeature, (Object)featureId);
                        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, null));
                    }
                }
                ++i;
            }
            FeatureEntry[] entries = toAnalyse.getPluginEntries();
            int i2 = 0;
            while (i2 < entries.length) {
                allPlugins.add(new ReachablePlugin(entries[i2]));
                ++i2;
            }
            FeatureEntry[] imports = toAnalyse.getImports();
            int i3 = 0;
            while (i3 < imports.length) {
                if (!imports[i3].isPlugin()) {
                    rootFeatures.add(this.findFeature(imports[i3].getId(), Utils.createVersionRange(imports[i3]), true));
                } else {
                    allPlugins.add(new ReachablePlugin(imports[i3]));
                }
                ++i3;
            }
        }
        return allPlugins;
    }

    public void setFilter(boolean filter) {
        this.filter = filter;
    }

    public void setRootFeaturesForFilter(List rootFeaturesForFilter) {
        this.rootFeaturesForFilter = rootFeaturesForFilter;
    }

    public void setRootPluginsForFiler(List rootPluginsForFiler) {
        this.rootPluginsForFiler = rootPluginsForFiler;
    }

    public FeatureReference[] getFeatureReferences() {
        return this.getRawFeatureReferences();
    }

    public FeatureReference[] getRawFeatureReferences() {
        if (this.featureReferences == null || this.featureReferences.size() == 0) {
            return new FeatureReference[0];
        }
        return this.featureReferences.toArray(new FeatureReference[this.featureReferences.size()]);
    }

    public void addPluginEntry(FeatureEntry pluginEntry) {
    }

    public Feature createFeature(URL url) throws CoreException {
        BuildTimeFeature feature = (BuildTimeFeature)((Object)this.featureCache.get(url));
        if (feature != null) {
            return feature;
        }
        feature = this.factory.createFeature(url, this);
        feature.setFeatureContentProvider(this.getSiteContentProvider());
        this.featureCache.put(url, feature);
        if (this.featureCache.containsKey(feature.getId())) {
            Set set = (Set)this.featureCache.get(feature.getId());
            set.add(feature);
        } else {
            TreeSet<BuildTimeFeature> set = new TreeSet<BuildTimeFeature>(this.featureComparator);
            set.add(feature);
            this.featureCache.put(feature.getId(), set);
        }
        return feature;
    }

    public BuildTimeSiteContentProvider getSiteContentProvider() {
        return this.contentProvider;
    }

    public void setSiteContentProvider(BuildTimeSiteContentProvider siteContentProvider) {
        this.contentProvider = siteContentProvider;
    }

    public void setEESources(String[] eeSources) {
        this.eeSources = eeSources;
    }
}

