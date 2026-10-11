/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils$IPathComputer
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.internal.p2.metadata.InstallableUnit
 *  org.eclipse.equinox.internal.p2.publisher.FileSetDescriptor
 *  org.eclipse.equinox.internal.p2.publisher.Messages
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.ILicense
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.IRequirementChange
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitPatchDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.AdviceFileAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.actions.IFeatureRootAdvice
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.spi.RepositoryReference
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Version
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.internal.p2.publisher.FileSetDescriptor;
import org.eclipse.equinox.internal.p2.publisher.Messages;
import org.eclipse.equinox.internal.p2.publisher.eclipse.FeatureParser;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ILicense;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IRequirementChange;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.AdviceFileAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.IFeatureRootAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.BundleShapeAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.equinox.p2.publisher.eclipse.URLEntry;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;
import org.eclipse.equinox.p2.repository.spi.RepositoryReference;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.publishing.Activator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FeaturesAction
extends AbstractPublisherAction {
    public static final String INSTALL_FEATURES_FILTER = "(org.eclipse.update.install.features=true)";
    private static final String UPDATE_FEATURE_APPLICATION_PROP = "org.eclipse.update.feature.application";
    private static final String UPDATE_FEATURE_PLUGIN_PROP = "org.eclipse.update.feature.plugin";
    private static final String UPDATE_FEATURE_EXCLUSIVE_PROP = "org.eclipse.update.feature.exclusive";
    private static final String UPDATE_FEATURE_PRIMARY_PROP = "org.eclipse.update.feature.primary";
    protected Feature[] features;
    private File[] locations;
    static /* synthetic */ Class class$0;

    public static IArtifactKey createFeatureArtifactKey(String id, String version) {
        return new ArtifactKey("org.eclipse.update.feature", id, Version.parseVersion((String)version));
    }

    public static IInstallableUnit createFeatureJarIU(Feature feature, IPublisherInfo info) {
        MetadataFactory.InstallableUnitDescription iu = new MetadataFactory.InstallableUnitDescription();
        String id = FeaturesAction.getTransformedId(feature.getId(), false, false);
        iu.setId(id);
        Version version = Version.parseVersion((String)feature.getVersion());
        iu.setVersion(version);
        iu.setProperty("org.eclipse.equinox.p2.name", feature.getLabel());
        if (feature.getDescription() != null) {
            iu.setProperty("org.eclipse.equinox.p2.description", feature.getDescription());
        }
        if (feature.getDescriptionURL() != null) {
            iu.setProperty("org.eclipse.equinox.p2.description.url", feature.getDescriptionURL());
        }
        if (feature.getProviderName() != null) {
            iu.setProperty("org.eclipse.equinox.p2.provider", feature.getProviderName());
        }
        if (feature.getLicense() != null) {
            iu.setLicenses(new ILicense[]{MetadataFactory.createLicense((URI)FeaturesAction.toURIOrNull(feature.getLicenseURL()), (String)feature.getLicense())});
        }
        if (feature.getCopyright() != null) {
            iu.setCopyright(MetadataFactory.createCopyright((URI)FeaturesAction.toURIOrNull(feature.getCopyrightURL()), (String)feature.getCopyright()));
        }
        if (feature.getApplication() != null) {
            iu.setProperty(UPDATE_FEATURE_APPLICATION_PROP, feature.getApplication());
        }
        if (feature.getBrandingPlugin() != null) {
            iu.setProperty(UPDATE_FEATURE_PLUGIN_PROP, feature.getBrandingPlugin());
        }
        if (feature.isExclusive()) {
            iu.setProperty(UPDATE_FEATURE_EXCLUSIVE_PROP, Boolean.TRUE.toString());
        }
        if (feature.isPrimary()) {
            iu.setProperty(UPDATE_FEATURE_PRIMARY_PROP, Boolean.TRUE.toString());
        }
        iu.setTouchpointType(PublisherHelper.TOUCHPOINT_OSGI);
        iu.setFilter(INSTALL_FEATURES_FILTER);
        iu.setSingleton(true);
        if (feature.getInstallHandler() != null && feature.getInstallHandler().trim().length() > 0) {
            String installHandlerProperty = new StringBuffer("handler=").append(feature.getInstallHandler()).toString();
            if (feature.getInstallHandlerLibrary() != null) {
                installHandlerProperty = new StringBuffer(String.valueOf(installHandlerProperty)).append(", library=").append(feature.getInstallHandlerLibrary()).toString();
            }
            if (feature.getInstallHandlerURL() != null) {
                installHandlerProperty = new StringBuffer(String.valueOf(installHandlerProperty)).append(", url=").append(feature.getInstallHandlerURL()).toString();
            }
            iu.setProperty("org.eclipse.update.installHandler", installHandlerProperty);
        }
        ArrayList<IProvidedCapability> providedCapabilities = new ArrayList<IProvidedCapability>();
        providedCapabilities.add(PublisherHelper.createSelfCapability((String)id, (Version)version));
        providedCapabilities.add(PublisherHelper.FEATURE_CAPABILITY);
        providedCapabilities.add(MetadataFactory.createProvidedCapability((String)"org.eclipse.update.feature", (String)feature.getId(), (Version)version));
        iu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability((String)id, (Version)version), PublisherHelper.FEATURE_CAPABILITY, MetadataFactory.createProvidedCapability((String)"org.eclipse.update.feature", (String)feature.getId(), (Version)version)});
        iu.setArtifacts(new IArtifactKey[]{FeaturesAction.createFeatureArtifactKey(feature.getId(), version.toString())});
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        touchpointData.put("zipped", "true");
        iu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        Map<Locale, Map<String, String>> localizations = feature.getLocalizations();
        if (localizations != null) {
            for (Map.Entry<Locale, Map<String, String>> locEntry : localizations.entrySet()) {
                Locale locale = locEntry.getKey();
                Map<String, String> translatedStrings = locEntry.getValue();
                for (Map.Entry<String, String> entry : translatedStrings.entrySet()) {
                    iu.setProperty(new StringBuffer(String.valueOf(locale.toString())).append('.').append(entry.getKey()).toString(), entry.getValue());
                }
                providedCapabilities.add(PublisherHelper.makeTranslationCapability((String)id, (Locale)locale));
            }
        }
        FeaturesAction.processInstallableUnitPropertiesAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)info);
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu);
    }

    private static String getTransformedId(String original, boolean isPlugin, boolean isGroup) {
        return isPlugin ? original : new StringBuffer(String.valueOf(original)).append(isGroup ? ".feature.group" : ".feature.jar").toString();
    }

    private static URI toURIOrNull(String url) {
        if (url == null) {
            return null;
        }
        try {
            return URIUtil.fromString((String)url);
        }
        catch (URISyntaxException uRISyntaxException) {
            return null;
        }
    }

    public FeaturesAction(Feature[] features) {
        this.features = features;
    }

    public FeaturesAction(File[] locations) {
        this.locations = locations;
    }

    private void createAdviceFileAdvice(Feature feature, IPublisherInfo publisherInfo) {
        String groupId;
        AdviceFileAdvice advice;
        String location = feature.getLocation();
        if (location != null && (advice = new AdviceFileAdvice(groupId = FeaturesAction.getTransformedId(feature.getId(), false, true), Version.parseVersion((String)feature.getVersion()), (IPath)new Path(location), (IPath)new Path("p2.inf"))).containsAdvice()) {
            publisherInfo.addAdvice((IPublisherAdvice)advice);
        }
    }

    private void createBundleShapeAdvice(Feature feature, IPublisherInfo publisherInfo) {
        FeatureEntry[] entries = feature.getEntries();
        int i = 0;
        while (i < entries.length) {
            FeatureEntry entry = entries[i];
            if (entry.isUnpack() && entry.isPlugin() && !entry.isRequires()) {
                publisherInfo.addAdvice((IPublisherAdvice)new BundleShapeAdvice(entry.getId(), Version.parseVersion((String)entry.getVersion()), "dir"));
            }
            ++i;
        }
    }

    protected IInstallableUnit createFeatureRootFileIU(String featureId, String featureVersion, File location, FileSetDescriptor descriptor) {
        MetadataFactory.InstallableUnitDescription iu = new MetadataFactory.InstallableUnitDescription();
        iu.setSingleton(true);
        String id = new StringBuffer(String.valueOf(featureId)).append('_').append(descriptor.getKey()).toString();
        iu.setId(id);
        Version version = Version.parseVersion((String)featureVersion);
        iu.setVersion(version);
        iu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability((String)id, (Version)version)});
        iu.setTouchpointType(PublisherHelper.TOUCHPOINT_NATIVE);
        String configSpec = descriptor.getConfigSpec();
        if (configSpec != null && configSpec.length() > 0) {
            iu.setFilter(this.createFilterSpec(configSpec));
        }
        HashMap<String, String> touchpointData = new HashMap<String, String>(2);
        String configurationData = "unzip(source:@artifact, target:${installFolder});";
        touchpointData.put("install", configurationData);
        String unConfigurationData = "cleanupzip(source:@artifact, target:${installFolder});";
        touchpointData.put("uninstall", unConfigurationData);
        iu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        ArtifactKey key = new ArtifactKey("binary", iu.getId(), iu.getVersion());
        iu.setArtifacts(new IArtifactKey[]{key});
        this.setupLinks(iu, descriptor);
        this.setupPermissions(iu, descriptor);
        IInstallableUnit iuResult = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu);
        return iuResult;
    }

    protected IInstallableUnit createGroupIU(Feature feature, List<IInstallableUnit> childIUs, IPublisherInfo publisherInfo) {
        if (this.isPatch(feature)) {
            return this.createPatchIU(feature, childIUs, publisherInfo);
        }
        MetadataFactory.InstallableUnitDescription iu = new MetadataFactory.InstallableUnitDescription();
        String id = this.getGroupId(feature.getId());
        iu.setId(id);
        Version version = PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)new org.osgi.framework.Version(feature.getVersion()));
        iu.setVersion(version);
        iu.setProperty("org.eclipse.equinox.p2.name", feature.getLabel());
        if (feature.getDescription() != null) {
            iu.setProperty("org.eclipse.equinox.p2.description", feature.getDescription());
        }
        if (feature.getDescriptionURL() != null) {
            iu.setProperty("org.eclipse.equinox.p2.description.url", feature.getDescriptionURL());
        }
        if (feature.getProviderName() != null) {
            iu.setProperty("org.eclipse.equinox.p2.provider", feature.getProviderName());
        }
        if (feature.getLicense() != null) {
            iu.setLicenses(new ILicense[]{MetadataFactory.createLicense((URI)FeaturesAction.toURIOrNull(feature.getLicenseURL()), (String)feature.getLicense())});
        }
        if (feature.getCopyright() != null) {
            iu.setCopyright(MetadataFactory.createCopyright((URI)FeaturesAction.toURIOrNull(feature.getCopyrightURL()), (String)feature.getCopyright()));
        }
        iu.setUpdateDescriptor(MetadataFactory.createUpdateDescriptor((String)id, (VersionRange)BundlesAction.computeUpdateRange(new org.osgi.framework.Version(feature.getVersion())), (int)0, null));
        FeatureEntry[] entries = feature.getEntries();
        ArrayList<IRequirement> required = new ArrayList<IRequirement>(entries.length + (childIUs == null ? 0 : childIUs.size()));
        int i = 0;
        while (i < entries.length) {
            VersionRange range = this.getVersionRange(entries[i]);
            String requiredId = FeaturesAction.getTransformedId(entries[i].getId(), entries[i].isPlugin(), true);
            required.add(MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)requiredId, (VersionRange)range, this.getFilter(entries[i]), (boolean)entries[i].isOptional(), (boolean)false));
            ++i;
        }
        if (childIUs != null) {
            i = 0;
            while (i < childIUs.size()) {
                IInstallableUnit child = childIUs.get(i);
                IMatchExpression filter = child.getFilter();
                required.add(MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)child.getId(), (VersionRange)new VersionRange(child.getVersion(), true, child.getVersion(), true), (IMatchExpression)filter, (boolean)false, (boolean)false));
                ++i;
            }
        }
        iu.setRequirements(required.toArray(new IRequirement[required.size()]));
        iu.setTouchpointType(ITouchpointType.NONE);
        iu.setProperty("org.eclipse.equinox.p2.type.group", Boolean.TRUE.toString());
        FeaturesAction.processTouchpointAdvice((MetadataFactory.InstallableUnitDescription)iu, null, (IPublisherInfo)publisherInfo);
        FeaturesAction.processInstallableUnitPropertiesAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)publisherInfo);
        FeatureEntry entry = new FeatureEntry("fake", "0.0.0", false);
        entry.setEnvironment(feature.getOS(), feature.getWS(), feature.getArch(), feature.getNL());
        iu.setFilter(this.getFilter(entry));
        ArrayList<IProvidedCapability> providedCapabilities = new ArrayList<IProvidedCapability>();
        providedCapabilities.add(this.createSelfCapability(id, version));
        Map<Locale, Map<String, String>> localizations = feature.getLocalizations();
        if (localizations != null) {
            for (Map.Entry<Locale, Map<String, String>> locEntry : localizations.entrySet()) {
                Locale locale = locEntry.getKey();
                Map<String, String> translatedStrings = locEntry.getValue();
                for (Map.Entry<String, String> e : translatedStrings.entrySet()) {
                    iu.setProperty(new StringBuffer(String.valueOf(locale.toString())).append('.').append(e.getKey()).toString(), e.getValue());
                }
                providedCapabilities.add(PublisherHelper.makeTranslationCapability((String)id, (Locale)locale));
            }
        }
        iu.setCapabilities(providedCapabilities.toArray(new IProvidedCapability[providedCapabilities.size()]));
        FeaturesAction.processUpdateDescriptorAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)this.info);
        FeaturesAction.processCapabilityAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)publisherInfo);
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu);
    }

    protected String getGroupId(String featureId) {
        return FeaturesAction.getTransformedId(featureId, false, true);
    }

    private IInstallableUnit createPatchIU(Feature feature, List<IInstallableUnit> childIUs, IPublisherInfo publisherInfo) {
        MetadataFactory.InstallableUnitPatchDescription iu = new MetadataFactory.InstallableUnitPatchDescription();
        String id = FeaturesAction.getTransformedId(feature.getId(), false, true);
        iu.setId(id);
        Version version = Version.parseVersion((String)feature.getVersion());
        iu.setVersion(version);
        iu.setProperty("org.eclipse.equinox.p2.name", feature.getLabel());
        if (feature.getDescription() != null) {
            iu.setProperty("org.eclipse.equinox.p2.description", feature.getDescription());
        }
        if (feature.getDescriptionURL() != null) {
            iu.setProperty("org.eclipse.equinox.p2.description.url", feature.getDescriptionURL());
        }
        if (feature.getProviderName() != null) {
            iu.setProperty("org.eclipse.equinox.p2.provider", feature.getProviderName());
        }
        if (feature.getLicense() != null) {
            iu.setLicenses(new ILicense[]{MetadataFactory.createLicense((URI)FeaturesAction.toURIOrNull(feature.getLicenseURL()), (String)feature.getLicense())});
        }
        if (feature.getCopyright() != null) {
            iu.setCopyright(MetadataFactory.createCopyright((URI)FeaturesAction.toURIOrNull(feature.getCopyrightURL()), (String)feature.getCopyright()));
        }
        iu.setUpdateDescriptor(MetadataFactory.createUpdateDescriptor((String)id, (VersionRange)BundlesAction.computeUpdateRange(new org.osgi.framework.Version(feature.getVersion())), (int)0, null));
        FeatureEntry[] entries = feature.getEntries();
        ArrayList<IRequirement> applicabilityScope = new ArrayList<IRequirement>();
        ArrayList<IRequirement> patchRequirements = new ArrayList<IRequirement>();
        ArrayList<IRequirementChange> requirementChanges = new ArrayList<IRequirementChange>();
        int i = 0;
        while (i < entries.length) {
            VersionRange range = this.getVersionRange(entries[i]);
            IRequirement req = MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)FeaturesAction.getTransformedId(entries[i].getId(), entries[i].isPlugin(), true), (VersionRange)range, this.getFilter(entries[i]), (boolean)entries[i].isOptional(), (boolean)false);
            if (entries[i].isRequires()) {
                applicabilityScope.add(req);
                if (applicabilityScope.size() == 1) {
                    iu.setLifeCycle(MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)FeaturesAction.getTransformedId(entries[i].getId(), entries[i].isPlugin(), true), (VersionRange)range, null, (boolean)false, (boolean)false, (boolean)false));
                }
            } else if (entries[i].isPlugin()) {
                IRequirement from = MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)FeaturesAction.getTransformedId(entries[i].getId(), entries[i].isPlugin(), true), (VersionRange)VersionRange.emptyRange, this.getFilter(entries[i]), (boolean)entries[i].isOptional(), (boolean)false);
                requirementChanges.add(MetadataFactory.createRequirementChange((IRequirement)from, (IRequirement)req));
            } else {
                patchRequirements.add(req);
            }
            ++i;
        }
        if (childIUs != null) {
            i = 0;
            while (i < childIUs.size()) {
                IInstallableUnit child = childIUs.get(i);
                patchRequirements.add(MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)child.getId(), (VersionRange)new VersionRange(child.getVersion(), true, child.getVersion(), true), (IMatchExpression)child.getFilter(), (boolean)false, (boolean)false));
                ++i;
            }
        }
        iu.setRequirements(patchRequirements.toArray(new IRequirement[patchRequirements.size()]));
        iu.setApplicabilityScope((IRequirement[][])new IRequirement[][]{applicabilityScope.toArray(new IRequirement[applicabilityScope.size()])});
        iu.setRequirementChanges(requirementChanges.toArray(new IRequirementChange[requirementChanges.size()]));
        iu.setTouchpointType(ITouchpointType.NONE);
        FeaturesAction.processTouchpointAdvice((MetadataFactory.InstallableUnitDescription)iu, null, (IPublisherInfo)publisherInfo);
        FeaturesAction.processInstallableUnitPropertiesAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)publisherInfo);
        iu.setProperty("org.eclipse.equinox.p2.type.group", Boolean.TRUE.toString());
        iu.setProperty("org.eclipse.equinox.p2.type.patch", Boolean.TRUE.toString());
        ArrayList<IProvidedCapability> providedCapabilities = new ArrayList<IProvidedCapability>();
        providedCapabilities.add(this.createSelfCapability(id, version));
        Map<Locale, Map<String, String>> localizations = feature.getLocalizations();
        if (localizations != null) {
            for (Map.Entry<Locale, Map<String, String>> locEntry : localizations.entrySet()) {
                Locale locale = locEntry.getKey();
                Map<String, String> translatedStrings = locEntry.getValue();
                for (Map.Entry<String, String> e : translatedStrings.entrySet()) {
                    iu.setProperty(new StringBuffer(String.valueOf(locale.toString())).append('.').append(e.getKey()).toString(), e.getValue());
                }
                providedCapabilities.add(PublisherHelper.makeTranslationCapability((String)id, (Locale)locale));
            }
        }
        iu.setCapabilities(providedCapabilities.toArray(new IProvidedCapability[providedCapabilities.size()]));
        FeaturesAction.processUpdateDescriptorAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)this.info);
        FeaturesAction.processCapabilityAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)publisherInfo);
        return MetadataFactory.createInstallableUnitPatch((MetadataFactory.InstallableUnitPatchDescription)iu);
    }

    private File[] expandLocations(File[] list) {
        ArrayList<File> result = new ArrayList<File>();
        this.expandLocations(list, result);
        return result.toArray(new File[result.size()]);
    }

    private void expandLocations(File[] list, ArrayList<File> result) {
        if (list == null) {
            return;
        }
        int i = 0;
        while (i < list.length) {
            File location = list[i];
            if (location.isDirectory()) {
                if (new File(location, "feature.xml").exists()) {
                    result.add(location);
                } else {
                    this.expandLocations(location.listFiles(), result);
                }
            } else {
                result.add(location);
            }
            ++i;
        }
    }

    protected void generateFeatureIUs(Feature[] featureList, IPublisherResult result) {
        int i = 0;
        while (i < featureList.length) {
            IInstallableUnit groupIU;
            Feature feature = featureList[i];
            this.createBundleShapeAdvice(feature, this.info);
            this.createAdviceFileAdvice(feature, this.info);
            ArrayList<IInstallableUnit> childIUs = new ArrayList<IInstallableUnit>();
            IInstallableUnit featureJarIU = this.queryForIU(result, FeaturesAction.getTransformedId(feature.getId(), false, false), Version.parseVersion((String)feature.getVersion()));
            if (featureJarIU == null) {
                featureJarIU = this.generateFeatureJarIU(feature, this.info);
            }
            if (featureJarIU != null) {
                this.publishFeatureArtifacts(feature, featureJarIU, this.info);
                result.addIU(featureJarIU, "non_root");
                childIUs.add(featureJarIU);
            }
            if ((groupIU = this.queryForIU(result, this.getGroupId(feature.getId()), Version.parseVersion((String)feature.getVersion()))) == null) {
                childIUs.addAll(this.generateRootFileIUs(feature, result, this.info));
                groupIU = this.createGroupIU(feature, childIUs, this.info);
            }
            if (groupIU != null) {
                result.addIU(groupIU, "root");
                MetadataFactory.InstallableUnitDescription[] others = FeaturesAction.processAdditionalInstallableUnitsAdvice((IInstallableUnit)groupIU, (IPublisherInfo)this.info);
                int iuIndex = 0;
                while (others != null && iuIndex < others.length) {
                    result.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)others[iuIndex]), "root");
                    ++iuIndex;
                }
            }
            this.generateSiteReferences(feature, result, this.info);
            ++i;
        }
    }

    protected IInstallableUnit generateFeatureJarIU(Feature feature, IPublisherInfo publisherInfo) {
        return FeaturesAction.createFeatureJarIU(feature, publisherInfo);
    }

    protected ArrayList<IInstallableUnit> generateRootFileIUs(Feature feature, IPublisherResult result, IPublisherInfo publisherInfo) {
        Collection collection;
        ArrayList<IInstallableUnit> ius = new ArrayList<IInstallableUnit>();
        String string = feature.getId();
        Version version = Version.parseVersion((String)feature.getVersion());
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.actions.IFeatureRootAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((collection = publisherInfo.getAdvice(null, false, string, version, (Class)clazz)).size() == 0) {
            return ius;
        }
        IFeatureRootAdvice advice = (IFeatureRootAdvice)collection.iterator().next();
        String[] configs = advice.getConfigurations();
        int i = 0;
        while (i < configs.length) {
            String config = configs[i];
            FileSetDescriptor descriptor = advice.getDescriptor(config);
            if (descriptor != null && descriptor.size() > 0) {
                IInstallableUnit iu = this.createFeatureRootFileIU(feature.getId(), feature.getVersion(), null, descriptor);
                File[] files = descriptor.getFiles();
                IArtifactKey artifactKey = (IArtifactKey)iu.getArtifacts().iterator().next();
                ArtifactDescriptor artifactDescriptor = new ArtifactDescriptor(artifactKey);
                FileUtils.IPathComputer computer = advice.getRootFileComputer(config);
                if (computer == null) {
                    computer = FileUtils.createDynamicPathComputer((int)1);
                }
                this.publishArtifact((IArtifactDescriptor)artifactDescriptor, files, null, publisherInfo, computer);
                result.addIU(iu, "non_root");
                ius.add(iu);
            }
            ++i;
        }
        return ius;
    }

    private void generateSiteReference(String location, String nickname, String featureId, List<IRepositoryReference> collector) {
        if (location == null) {
            String message = featureId == null ? NLS.bind((String)Messages.exception_invalidSiteReference, (Object)location) : NLS.bind((String)Messages.exception_invalidSiteReferenceInFeature, (Object)location, (Object)featureId);
            LogHelper.log((IStatus)new Status(4, Activator.ID, message));
            return;
        }
        try {
            URI associateLocation = new URI(location);
            collector.add((IRepositoryReference)new RepositoryReference(associateLocation, nickname, 0, 0));
            collector.add((IRepositoryReference)new RepositoryReference(associateLocation, nickname, 1, 0));
        }
        catch (URISyntaxException uRISyntaxException) {
            String message = featureId == null ? NLS.bind((String)Messages.exception_invalidSiteReference, (Object)location) : NLS.bind((String)Messages.exception_invalidSiteReferenceInFeature, (Object)location, (Object)featureId);
            LogHelper.log((IStatus)new Status(4, Activator.ID, message));
        }
    }

    protected void generateSiteReferences(Feature feature, IPublisherResult result, IPublisherInfo publisherInfo) {
        if (publisherInfo.getMetadataRepository() == null) {
            return;
        }
        URLEntry updateURL = feature.getUpdateSite();
        ArrayList<IRepositoryReference> collector = new ArrayList<IRepositoryReference>();
        if (updateURL != null) {
            this.generateSiteReference(updateURL.getURL(), updateURL.getAnnotation(), feature.getId(), collector);
        }
        URLEntry[] discoverySites = feature.getDiscoverySites();
        int i = 0;
        while (i < discoverySites.length) {
            this.generateSiteReference(discoverySites[i].getURL(), discoverySites[i].getAnnotation(), feature.getId(), collector);
            ++i;
        }
        if (!collector.isEmpty()) {
            publisherInfo.getMetadataRepository().addReferences(collector);
        }
    }

    protected Feature[] getFeatures(File[] featureLocations) {
        ArrayList<Feature> result = new ArrayList<Feature>(featureLocations.length);
        int i = 0;
        while (i < featureLocations.length) {
            Feature feature = new FeatureParser().parse(featureLocations[i]);
            if (feature != null) {
                feature.setLocation(featureLocations[i].getAbsolutePath());
                result.add(feature);
            }
            ++i;
        }
        return result.toArray(new Feature[result.size()]);
    }

    private IMatchExpression<IInstallableUnit> getFilter(FeatureEntry entry) {
        StringBuffer result = new StringBuffer();
        result.append("(&");
        if (entry.getFilter() != null) {
            result.append(entry.getFilter());
        }
        this.expandFilter(entry.getOS(), "osgi.os", result);
        this.expandFilter(entry.getWS(), "osgi.ws", result);
        this.expandFilter(entry.getArch(), "osgi.arch", result);
        this.expandFilter(entry.getNL(), "osgi.nl", result);
        if (result.length() == 2) {
            return null;
        }
        result.append(')');
        return InstallableUnit.parseFilter((String)result.toString());
    }

    private void expandFilter(String filter, String osgiFilterValue, StringBuffer result) {
        if (filter != null && filter.length() != 0) {
            StringTokenizer token = new StringTokenizer(filter, ",");
            if (token.countTokens() == 1) {
                result.append(new StringBuffer(String.valueOf('(')).append(osgiFilterValue).append('=').append(filter).append(')').toString());
            } else {
                result.append("(|");
                while (token.hasMoreElements()) {
                    result.append(new StringBuffer(String.valueOf('(')).append(osgiFilterValue).append('=').append(token.nextToken()).append(')').toString());
                }
                result.append(')');
            }
        }
    }

    protected VersionRange getVersionRange(FeatureEntry entry) {
        String versionSpec = entry.getVersion();
        if (versionSpec == null) {
            return VersionRange.emptyRange;
        }
        String match = entry.getMatch();
        if ("versionRange".equals(match)) {
            return new VersionRange(versionSpec);
        }
        Version version = Version.parseVersion((String)versionSpec);
        if (version.equals(Version.emptyVersion)) {
            return VersionRange.emptyRange;
        }
        if (!entry.isRequires()) {
            return new VersionRange(version, true, version, true);
        }
        if (match == null) {
            return null;
        }
        if (match.equals("perfect")) {
            return new VersionRange(version, true, version, true);
        }
        org.osgi.framework.Version osgiVersion = PublisherHelper.toOSGiVersion((Version)version);
        if (match.equals("equivalent")) {
            Version upper = Version.createOSGi((int)osgiVersion.getMajor(), (int)(osgiVersion.getMinor() + 1), (int)0);
            return new VersionRange(version, true, upper, false);
        }
        if (match.equals("compatible")) {
            Version upper = Version.createOSGi((int)(osgiVersion.getMajor() + 1), (int)0, (int)0);
            return new VersionRange(version, true, upper, false);
        }
        if (match.equals("greaterOrEqual")) {
            return new VersionRange(version, true, new VersionRange(null).getMaximum(), true);
        }
        return null;
    }

    private boolean isPatch(Feature feature) {
        FeatureEntry[] entries = feature.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (entries[i].isPatch()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        if (this.features == null && this.locations == null) {
            throw new IllegalStateException(Messages.exception_noFeaturesOrLocations);
        }
        this.info = publisherInfo;
        if (this.features == null) {
            this.features = this.getFeatures(this.expandLocations(this.locations));
        }
        this.generateFeatureIUs(this.features, results);
        return Status.OK_STATUS;
    }

    protected void publishFeatureArtifacts(Feature feature, IInstallableUnit featureIU, IPublisherInfo publisherInfo) {
        Collection artifacts = featureIU.getArtifacts();
        for (IArtifactKey artifactKey : artifacts) {
            File file = new File(feature.getLocation());
            ArtifactDescriptor ad = (ArtifactDescriptor)PublisherHelper.createArtifactDescriptor((IPublisherInfo)this.info, (IArtifactKey)artifactKey, (File)file);
            FeaturesAction.processArtifactPropertiesAdvice((IInstallableUnit)featureIU, (IArtifactDescriptor)ad, (IPublisherInfo)publisherInfo);
            ad.setProperty("download.contentType", "application/zip");
            if (file.isDirectory()) {
                this.publishArtifact((IArtifactDescriptor)ad, new File[]{file}, null, publisherInfo, this.createRootPrefixComputer(file));
                continue;
            }
            this.publishArtifact((IArtifactDescriptor)ad, file, publisherInfo);
        }
    }

    private void setupLinks(MetadataFactory.InstallableUnitDescription iu, FileSetDescriptor descriptor) {
        String[] links = FeaturesAction.getArrayFromString((String)descriptor.getLinks(), (String)",");
        StringBuffer linkActions = new StringBuffer();
        int i = 0;
        while (i < links.length) {
            String target = links[i++];
            if (i >= links.length) continue;
            String name = links[i++];
            linkActions.append(new StringBuffer("ln(linkTarget:").append(target).toString());
            linkActions.append(new StringBuffer(",targetDir:${installFolder},linkName:").append(name).toString());
            linkActions.append(");");
        }
        if (linkActions.length() > 0) {
            HashMap<String, String> touchpointData = new HashMap<String, String>();
            touchpointData.put("configure", linkActions.toString());
            iu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        }
    }

    private void setupPermissions(MetadataFactory.InstallableUnitDescription iu, FileSetDescriptor descriptor) {
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        String[][] permsList = descriptor.getPermissions();
        int i = 0;
        while (i < permsList.length) {
            String[] permSpec = permsList[i];
            String configurationData = new StringBuffer(" chmod(targetDir:${installFolder}, targetFile:").append(permSpec[1]).append(", permissions:").append(permSpec[0]).append(");").toString();
            touchpointData.put("install", configurationData);
            iu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
            ++i;
        }
    }
}

