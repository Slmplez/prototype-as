/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.internal.p2.publisher.Messages
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IInstallableUnitFragment
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitFragmentDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.AdviceFileAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.spi.p2.publisher.LocalizationHelper
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 *  org.eclipse.osgi.service.pluginconversion.PluginConversionException
 *  org.eclipse.osgi.service.pluginconversion.PluginConverter
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.StateObjectFactory
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 *  org.osgi.service.packageadmin.PackageAdmin
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.internal.p2.publisher.Messages;
import org.eclipse.equinox.internal.p2.publisher.eclipse.GeneratorBundleInfo;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.AdviceFileAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.eclipse.IBundleShapeAdvice;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.spi.p2.publisher.LocalizationHelper;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.service.pluginconversion.PluginConverter;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.publishing.Activator;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.service.packageadmin.PackageAdmin;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundlesAction
extends AbstractPublisherAction {
    protected static final String ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR = "org.eclipse.equinox.simpleconfigurator";
    protected static final String ORG_ECLIPSE_UPDATE_CONFIGURATOR = "org.eclipse.update.configurator";
    public static final String TYPE_ECLIPSE_BUNDLE = "bundle";
    public static final String TYPE_ECLIPSE_SOURCE = "source";
    public static final String OSGI_BUNDLE_CLASSIFIER = "osgi.bundle";
    private static final String CAPABILITY_NS_OSGI_BUNDLE = "osgi.bundle";
    private static final String CAPABILITY_NS_OSGI_FRAGMENT = "osgi.fragment";
    public static final IProvidedCapability BUNDLE_CAPABILITY = MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.eclipse.type", (String)"bundle", (Version)Version.createOSGi((int)1, (int)0, (int)0));
    public static final IProvidedCapability SOURCE_BUNDLE_CAPABILITY = MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.eclipse.type", (String)"source", (Version)Version.createOSGi((int)1, (int)0, (int)0));
    static final String DEFAULT_BUNDLE_LOCALIZATION = "OSGI-INF/l10n/bundle";
    private static final String[] BUNDLE_IU_PROPERTY_MAP = new String[]{"Bundle-Name", "org.eclipse.equinox.p2.name", "Bundle-Description", "org.eclipse.equinox.p2.description", "Bundle-Vendor", "org.eclipse.equinox.p2.provider", "Bundle-ContactAddress", "org.eclipse.equinox.p2.contact", "Bundle-DocURL", "org.eclipse.equinox.p2.doc.url", "Bundle-UpdateLocation", "org.eclipse.equinox.p2.bundle.localization", "Bundle-Localization", "org.eclipse.equinox.p2.bundle.localization"};
    public static final int BUNDLE_LOCALIZATION_INDEX = PublisherHelper.BUNDLE_LOCALIZED_PROPERTIES.length - 1;
    public static final String DIR = "dir";
    public static final String JAR = "jar";
    private static final String FEATURE_FILENAME_DESCRIPTOR = "feature.xml";
    private static final String PLUGIN_FILENAME_DESCRIPTOR = "plugin.xml";
    private static final String FRAGMENT_FILENAME_DESCRIPTOR = "fragment.xml";
    public static String BUNDLE_SHAPE = "Eclipse-BundleShape";
    private File[] locations;
    private BundleDescription[] bundles;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public static IArtifactKey createBundleArtifactKey(String bsn, String version) {
        return new ArtifactKey("osgi.bundle", bsn, Version.parseVersion((String)version));
    }

    public static IInstallableUnit createBundleConfigurationUnit(String hostId, Version cuVersion, boolean isBundleFragment, GeneratorBundleInfo configInfo, String configurationFlavor, IMatchExpression<IInstallableUnit> filter) {
        if (configInfo == null) {
            return null;
        }
        MetadataFactory.InstallableUnitFragmentDescription cu = new MetadataFactory.InstallableUnitFragmentDescription();
        String configUnitId = new StringBuffer(String.valueOf(configurationFlavor)).append(hostId).toString();
        cu.setId(configUnitId);
        cu.setVersion(cuVersion);
        Version hostVersion = Version.parseVersion((String)configInfo.getVersion());
        VersionRange range = hostVersion == Version.emptyVersion ? VersionRange.emptyRange : new VersionRange(hostVersion, true, Version.MAX_VERSION, true);
        cu.setHost(new IRequirement[]{MetadataFactory.createRequirement((String)"osgi.bundle", (String)hostId, (VersionRange)range, null, (boolean)false, (boolean)false, (boolean)true), MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.eclipse.type", (String)TYPE_ECLIPSE_BUNDLE, (VersionRange)new VersionRange(Version.createOSGi((int)1, (int)0, (int)0), true, Version.createOSGi((int)2, (int)0, (int)0), false), null, (boolean)false, (boolean)false, (boolean)false)});
        cu.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        cu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability((String)configUnitId, (Version)cuVersion), MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.flavor", (String)configurationFlavor, (Version)Version.createOSGi((int)1, (int)0, (int)0))});
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        touchpointData.put("install", "installBundle(bundle:${artifact})");
        touchpointData.put("uninstall", "uninstallBundle(bundle:${artifact})");
        touchpointData.put("configure", BundlesAction.createConfigScript(configInfo, isBundleFragment));
        touchpointData.put("unconfigure", BundlesAction.createUnconfigScript(configInfo, isBundleFragment));
        cu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        cu.setFilter(filter);
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu);
    }

    /*
     * WARNING - void declaration
     */
    public static IInstallableUnit createBundleIU(BundleDescription bd, IArtifactKey key, IPublisherInfo info) {
        void var12_16;
        Map manifest = (Map)bd.getUserObject();
        Map<Locale, Map<String, String>> manifestLocalizations = null;
        if (manifest != null && bd.getLocation() != null) {
            manifestLocalizations = BundlesAction.getManifestLocalizations(manifest, new File(bd.getLocation()));
        }
        MetadataFactory.InstallableUnitDescription iu = new MetadataFactory.InstallableUnitDescription();
        iu.setSingleton(bd.isSingleton());
        iu.setId(bd.getSymbolicName());
        iu.setVersion(PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bd.getVersion()));
        iu.setFilter(bd.getPlatformFilter());
        iu.setUpdateDescriptor(MetadataFactory.createUpdateDescriptor((String)bd.getSymbolicName(), (VersionRange)BundlesAction.computeUpdateRange(bd.getVersion()), (int)0, null));
        iu.setArtifacts(new IArtifactKey[]{key});
        iu.setTouchpointType(PublisherHelper.TOUCHPOINT_OSGI);
        boolean isFragment = bd.getHost() != null;
        BundleSpecification[] requiredBundles = bd.getRequiredBundles();
        ArrayList<IRequirement> reqsDeps = new ArrayList<IRequirement>();
        if (isFragment) {
            reqsDeps.add(MetadataFactory.createRequirement((String)"osgi.bundle", (String)bd.getHost().getName(), (VersionRange)PublisherHelper.fromOSGiVersionRange((org.eclipse.osgi.service.resolver.VersionRange)bd.getHost().getVersionRange()), null, (boolean)false, (boolean)false));
        }
        int j = 0;
        while (j < requiredBundles.length) {
            reqsDeps.add(MetadataFactory.createRequirement((String)"osgi.bundle", (String)requiredBundles[j].getName(), (VersionRange)PublisherHelper.fromOSGiVersionRange((org.eclipse.osgi.service.resolver.VersionRange)requiredBundles[j].getVersionRange()), null, (boolean)requiredBundles[j].isOptional(), (boolean)false));
            ++j;
        }
        ImportPackageSpecification[] osgiImports = bd.getImportPackages();
        int i = 0;
        while (i < osgiImports.length) {
            ImportPackageSpecification importSpec = osgiImports[i];
            String string = importSpec.getName();
            if (string.indexOf(42) == -1) {
                VersionRange versionRange = PublisherHelper.fromOSGiVersionRange((org.eclipse.osgi.service.resolver.VersionRange)importSpec.getVersionRange());
                reqsDeps.add(MetadataFactory.createRequirement((String)"java.package", (String)string, (VersionRange)versionRange, null, (boolean)BundlesAction.isOptional(importSpec), (boolean)false));
            }
            ++i;
        }
        iu.setRequirements(reqsDeps.toArray(new IRequirement[reqsDeps.size()]));
        ArrayList<IProvidedCapability> providedCapabilities = new ArrayList<IProvidedCapability>();
        providedCapabilities.add(PublisherHelper.createSelfCapability((String)bd.getSymbolicName(), (Version)PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bd.getVersion())));
        providedCapabilities.add(MetadataFactory.createProvidedCapability((String)"osgi.bundle", (String)bd.getSymbolicName(), (Version)PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bd.getVersion())));
        ExportPackageDescription[] exports = bd.getExportPackages();
        boolean bl = false;
        while (var12_16 < exports.length) {
            providedCapabilities.add(MetadataFactory.createProvidedCapability((String)"java.package", (String)exports[var12_16].getName(), (Version)PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)exports[var12_16].getVersion())));
            ++var12_16;
        }
        if (manifest != null && manifest.containsKey("Eclipse-SourceBundle")) {
            providedCapabilities.add(SOURCE_BUNDLE_CAPABILITY);
        } else {
            providedCapabilities.add(BUNDLE_CAPABILITY);
        }
        if (isFragment) {
            providedCapabilities.add(MetadataFactory.createProvidedCapability((String)CAPABILITY_NS_OSGI_FRAGMENT, (String)bd.getHost().getName(), (Version)PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bd.getVersion())));
        }
        if (manifestLocalizations != null) {
            for (Map.Entry entry : manifestLocalizations.entrySet()) {
                Locale locale = (Locale)entry.getKey();
                Map translatedStrings = (Map)entry.getValue();
                for (Map.Entry entry2 : translatedStrings.entrySet()) {
                    iu.setProperty(new StringBuffer(String.valueOf(locale.toString())).append('.').append((String)entry2.getKey()).toString(), (String)entry2.getValue());
                }
                providedCapabilities.add(PublisherHelper.makeTranslationCapability((String)bd.getSymbolicName(), (Locale)locale));
            }
        }
        iu.setCapabilities(providedCapabilities.toArray(new IProvidedCapability[providedCapabilities.size()]));
        BundlesAction.processUpdateDescriptorAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)info);
        BundlesAction.processCapabilityAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)info);
        if (manifest != null) {
            void var12_19;
            boolean bl2 = false;
            while (var12_19 < BUNDLE_IU_PROPERTY_MAP.length) {
                String value;
                if (manifest.containsKey(BUNDLE_IU_PROPERTY_MAP[var12_19]) && (value = (String)manifest.get(BUNDLE_IU_PROPERTY_MAP[var12_19])) != null && value.length() > 0) {
                    iu.setProperty(BUNDLE_IU_PROPERTY_MAP[var12_19 + true], value);
                }
                var12_19 += 2;
            }
        }
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("manifest", BundlesAction.toManifestString(manifest));
        if (BundlesAction.isDir(bd, info)) {
            hashMap.put("zipped", "true");
        }
        BundlesAction.processTouchpointAdvice((MetadataFactory.InstallableUnitDescription)iu, hashMap, (IPublisherInfo)info);
        BundlesAction.processInstallableUnitPropertiesAdvice((MetadataFactory.InstallableUnitDescription)iu, (IPublisherInfo)info);
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu);
    }

    static VersionRange computeUpdateRange(org.osgi.framework.Version base) {
        VersionRange updateRange = null;
        updateRange = !base.equals((Object)org.osgi.framework.Version.emptyVersion) ? new VersionRange(Version.emptyVersion, true, PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)base), false) : VersionRange.emptyRange;
        return updateRange;
    }

    private IInstallableUnitFragment createHostLocalizationFragment(IInstallableUnit bundleIU, BundleDescription bd, String hostId, String[] hostBundleManifestValues) {
        Map<Locale, Map<String, String>> hostLocalizations = BundlesAction.getHostLocalizations(new File(bd.getLocation()), hostBundleManifestValues);
        if (hostLocalizations == null || hostLocalizations.isEmpty()) {
            return null;
        }
        return BundlesAction.createLocalizationFragmentOfHost(bd, hostId, hostBundleManifestValues, hostLocalizations);
    }

    private static IInstallableUnitFragment createLocalizationFragmentOfHost(BundleDescription bd, String hostId, String[] hostManifestValues, Map<Locale, Map<String, String>> hostLocalizations) {
        MetadataFactory.InstallableUnitFragmentDescription fragment = new MetadataFactory.InstallableUnitFragmentDescription();
        String fragmentId = BundlesAction.makeHostLocalizationFragmentId(bd.getSymbolicName());
        fragment.setId(fragmentId);
        fragment.setVersion(PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bd.getVersion()));
        HostSpecification hostSpec = bd.getHost();
        IRequirement[] hostReqs = new IRequirement[]{MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)hostSpec.getName(), (VersionRange)PublisherHelper.fromOSGiVersionRange((org.eclipse.osgi.service.resolver.VersionRange)hostSpec.getVersionRange()), null, (boolean)false, (boolean)false, (boolean)false)};
        fragment.setHost(hostReqs);
        fragment.setSingleton(true);
        fragment.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        ArrayList<IProvidedCapability> providedCapabilities = new ArrayList<IProvidedCapability>(hostLocalizations.keySet().size());
        providedCapabilities.add(PublisherHelper.createSelfCapability((String)fragmentId, (Version)fragment.getVersion()));
        for (Map.Entry<Locale, Map<String, String>> localeEntry : hostLocalizations.entrySet()) {
            Locale locale = localeEntry.getKey();
            Map<String, String> translatedStrings = localeEntry.getValue();
            for (Map.Entry<String, String> entry : translatedStrings.entrySet()) {
                fragment.setProperty(new StringBuffer(String.valueOf(locale.toString())).append('.').append(entry.getKey()).toString(), entry.getValue());
            }
            providedCapabilities.add(PublisherHelper.makeTranslationCapability((String)hostId, (Locale)locale));
        }
        fragment.setCapabilities(providedCapabilities.toArray(new IProvidedCapability[providedCapabilities.size()]));
        return MetadataFactory.createInstallableUnitFragment((MetadataFactory.InstallableUnitFragmentDescription)fragment);
    }

    private static String makeHostLocalizationFragmentId(String id) {
        return new StringBuffer(String.valueOf(id)).append(".translated_host_properties").toString();
    }

    private static String createConfigScript(GeneratorBundleInfo configInfo, boolean isBundleFragment) {
        if (configInfo == null) {
            return "";
        }
        String configScript = "";
        if (!isBundleFragment && configInfo.getStartLevel() != -1) {
            configScript = new StringBuffer(String.valueOf(configScript)).append("setStartLevel(startLevel:").append(configInfo.getStartLevel()).append(");").toString();
        }
        if (!isBundleFragment && configInfo.isMarkedAsStarted()) {
            configScript = new StringBuffer(String.valueOf(configScript)).append("markStarted(started: true);").toString();
        }
        if (configInfo.getSpecialConfigCommands() != null) {
            configScript = new StringBuffer(String.valueOf(configScript)).append(configInfo.getSpecialConfigCommands()).toString();
        }
        return configScript;
    }

    private static String createDefaultBundleConfigScript(GeneratorBundleInfo configInfo) {
        return BundlesAction.createConfigScript(configInfo, false);
    }

    public static IInstallableUnit createDefaultBundleConfigurationUnit(GeneratorBundleInfo configInfo, GeneratorBundleInfo unconfigInfo, String configurationFlavor) {
        MetadataFactory.InstallableUnitFragmentDescription cu = new MetadataFactory.InstallableUnitFragmentDescription();
        String configUnitId = PublisherHelper.createDefaultConfigUnitId((String)"osgi.bundle", (String)configurationFlavor);
        cu.setId(configUnitId);
        Version configUnitVersion = Version.createOSGi((int)1, (int)0, (int)0);
        cu.setVersion(configUnitVersion);
        cu.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        cu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability((String)configUnitId, (Version)configUnitVersion), MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.flavor", (String)configurationFlavor, (Version)Version.createOSGi((int)1, (int)0, (int)0))});
        IRequirement[] reqs = new IRequirement[]{MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.eclipse.type", (String)TYPE_ECLIPSE_BUNDLE, (VersionRange)VersionRange.emptyRange, null, (boolean)false, (boolean)true, (boolean)false)};
        cu.setHost(reqs);
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        touchpointData.put("install", "installBundle(bundle:${artifact})");
        touchpointData.put("uninstall", "uninstallBundle(bundle:${artifact})");
        touchpointData.put("configure", BundlesAction.createDefaultBundleConfigScript(configInfo));
        touchpointData.put("unconfigure", BundlesAction.createDefaultBundleUnconfigScript(unconfigInfo));
        cu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu);
    }

    private static String createDefaultBundleUnconfigScript(GeneratorBundleInfo unconfigInfo) {
        return BundlesAction.createUnconfigScript(unconfigInfo, false);
    }

    private static String createUnconfigScript(GeneratorBundleInfo unconfigInfo, boolean isBundleFragment) {
        if (unconfigInfo == null) {
            return "";
        }
        String unconfigScript = "";
        if (!isBundleFragment && unconfigInfo.getStartLevel() != -1) {
            unconfigScript = new StringBuffer(String.valueOf(unconfigScript)).append("setStartLevel(startLevel:-1);").toString();
        }
        if (!isBundleFragment && unconfigInfo.isMarkedAsStarted()) {
            unconfigScript = new StringBuffer(String.valueOf(unconfigScript)).append("markStarted(started: false);").toString();
        }
        if (unconfigInfo.getSpecialUnconfigCommands() != null) {
            unconfigScript = new StringBuffer(String.valueOf(unconfigScript)).append(unconfigInfo.getSpecialUnconfigCommands()).toString();
        }
        return unconfigScript;
    }

    private static boolean isOptional(ImportPackageSpecification importedPackage) {
        return importedPackage.getDirective("resolution").equals("dynamic") || importedPackage.getDirective("resolution").equals("optional");
    }

    private static String toManifestString(Map<String, String> p) {
        String[] interestingKeys;
        if (p == null) {
            return null;
        }
        StringBuffer result = new StringBuffer();
        String[] stringArray = interestingKeys = new String[]{"Bundle-SymbolicName", "Bundle-Version", "Fragment-Host"};
        int n = interestingKeys.length;
        int n2 = 0;
        while (n2 < n) {
            String key = stringArray[n2];
            String value = p.get(key);
            if (value != null) {
                result.append(key).append(": ").append(value).append('\n');
            }
            ++n2;
        }
        return result.length() == 0 ? null : result.toString();
    }

    private static Map<Locale, Map<String, String>> getManifestLocalizations(Map<String, String> manifest, File bundleLocation) {
        Locale defaultLocale = null;
        String[] bundleManifestValues = BundlesAction.getManifestCachedValues(manifest);
        String bundleLocalization = bundleManifestValues[BUNDLE_LOCALIZATION_INDEX];
        Map localizations = JAR.equalsIgnoreCase(new Path(bundleLocation.getName()).getFileExtension()) && bundleLocation.isFile() ? LocalizationHelper.getJarPropertyLocalizations((File)bundleLocation, (String)bundleLocalization, defaultLocale, (String[])bundleManifestValues) : LocalizationHelper.getDirPropertyLocalizations((File)bundleLocation, (String)bundleLocalization, defaultLocale, (String[])bundleManifestValues);
        return localizations;
    }

    public static String[] getExternalizedStrings(IInstallableUnit iu) {
        String[] result = new String[PublisherHelper.BUNDLE_LOCALIZED_PROPERTIES.length];
        int j = 0;
        int i = 1;
        while (i < BUNDLE_IU_PROPERTY_MAP.length - 1) {
            if (iu.getProperty(BUNDLE_IU_PROPERTY_MAP[i]) != null && iu.getProperty(BUNDLE_IU_PROPERTY_MAP[i]).length() > 0 && iu.getProperty(BUNDLE_IU_PROPERTY_MAP[i]).charAt(0) == '%') {
                result[j++] = iu.getProperty(BUNDLE_IU_PROPERTY_MAP[i]).substring(1);
            } else {
                ++j;
            }
            i += 2;
        }
        result[BundlesAction.BUNDLE_LOCALIZATION_INDEX] = iu.getProperty("org.eclipse.equinox.p2.bundle.localization");
        return result;
    }

    public static String[] getManifestCachedValues(Map<String, String> manifest) {
        String[] cachedValues = new String[PublisherHelper.BUNDLE_LOCALIZED_PROPERTIES.length];
        int j = 0;
        while (j < PublisherHelper.BUNDLE_LOCALIZED_PROPERTIES.length) {
            String value = manifest.get(PublisherHelper.BUNDLE_LOCALIZED_PROPERTIES[j]);
            if (PublisherHelper.BUNDLE_LOCALIZED_PROPERTIES[j].equals("Bundle-Localization")) {
                if (value == null) {
                    value = DEFAULT_BUNDLE_LOCALIZATION;
                }
                cachedValues[j] = value;
            } else if (value != null && value.length() > 1 && value.charAt(0) == '%') {
                cachedValues[j] = value.substring(1);
            }
            ++j;
        }
        return cachedValues;
    }

    public static Map<Locale, Map<String, String>> getHostLocalizations(File bundleLocation, String[] hostBundleManifestValues) {
        Locale defaultLocale = null;
        String hostBundleLocalization = hostBundleManifestValues[BUNDLE_LOCALIZATION_INDEX];
        if (hostBundleLocalization == null) {
            return null;
        }
        Map localizations = JAR.equalsIgnoreCase(new Path(bundleLocation.getName()).getFileExtension()) && bundleLocation.isFile() ? LocalizationHelper.getJarPropertyLocalizations((File)bundleLocation, (String)hostBundleLocalization, defaultLocale, (String[])hostBundleManifestValues) : LocalizationHelper.getDirPropertyLocalizations((File)bundleLocation, (String)hostBundleLocalization, defaultLocale, (String[])hostBundleManifestValues);
        return localizations;
    }

    private static PluginConverter acquirePluginConverter() {
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.pluginconversion.PluginConverter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (PluginConverter)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName());
    }

    private static Dictionary<String, String> convertPluginManifest(File bundleLocation, boolean logConversionException) {
        PluginConverter converter;
        block6: {
            try {
                converter = BundlesAction.acquirePluginConverter();
                if (converter != null) break block6;
                String message = NLS.bind((String)Messages.exception_noPluginConverter, (Object)bundleLocation);
                LogHelper.log((IStatus)new Status(4, Activator.ID, message));
                return null;
            }
            catch (PluginConversionException convertException) {
                if (bundleLocation.getName().equals(FEATURE_FILENAME_DESCRIPTOR)) {
                    return null;
                }
                if (!new File(bundleLocation, PLUGIN_FILENAME_DESCRIPTOR).exists() && !new File(bundleLocation, FRAGMENT_FILENAME_DESCRIPTOR).exists()) {
                    return null;
                }
                if (logConversionException) {
                    Status status = new Status(2, Activator.ID, 0, NLS.bind((String)Messages.exception_errorConverting, (Object)bundleLocation.getAbsolutePath()), (Throwable)convertException);
                    LogHelper.log((IStatus)status);
                }
                return null;
            }
        }
        return converter.convertManifest(bundleLocation, false, null, true, null);
    }

    public static BundleDescription createBundleDescription(Dictionary<String, String> enhancedManifest, File bundleLocation) {
        try {
            BundleDescription descriptor = StateObjectFactory.defaultFactory.createBundleDescription(null, enhancedManifest, bundleLocation == null ? null : bundleLocation.getAbsolutePath(), 1L);
            descriptor.setUserObject(enhancedManifest);
            return descriptor;
        }
        catch (BundleException e) {
            String message = NLS.bind((String)Messages.exception_stateAddition, (Object)(bundleLocation == null ? null : bundleLocation.getAbsoluteFile()));
            Status status = new Status(2, Activator.ID, message, (Throwable)e);
            LogHelper.log((IStatus)status);
            return null;
        }
    }

    public static BundleDescription createBundleDescription(File bundleLocation) {
        Dictionary<String, String> manifest = BundlesAction.loadManifest(bundleLocation);
        if (manifest == null) {
            return null;
        }
        return BundlesAction.createBundleDescription(manifest, bundleLocation);
    }

    public static Dictionary<String, String> loadManifest(File bundleLocation) {
        Dictionary<String, String> manifest = BundlesAction.basicLoadManifest(bundleLocation);
        if (manifest == null) {
            return null;
        }
        if (manifest.get(BUNDLE_SHAPE) == null) {
            manifest.put(BUNDLE_SHAPE, bundleLocation.isDirectory() ? DIR : JAR);
        }
        return manifest;
    }

    /*
     * Exception decompiling
     */
    public static Dictionary<String, String> basicLoadManifest(File bundleLocation) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public BundlesAction(File[] locations) {
        this.locations = locations;
    }

    public BundlesAction(BundleDescription[] bundles) {
        this.bundles = bundles;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        if (this.bundles == null && this.locations == null) {
            throw new IllegalStateException(Messages.exception_noBundlesOrLocations);
        }
        this.setPublisherInfo(publisherInfo);
        try {
            if (this.bundles == null) {
                this.bundles = this.getBundleDescriptions(this.expandLocations(this.locations), monitor);
            }
            this.generateBundleIUs(this.bundles, publisherInfo, results, monitor);
            this.bundles = null;
        }
        catch (OperationCanceledException operationCanceledException) {
            return Status.CANCEL_STATUS;
        }
        return Status.OK_STATUS;
    }

    protected void publishArtifact(IArtifactDescriptor descriptor, File base, File[] inclusions, IPublisherInfo publisherInfo) {
        IArtifactRepository destination = publisherInfo.getArtifactRepository();
        if (descriptor == null || destination == null) {
            return;
        }
        this.publishArtifact(descriptor, inclusions, null, publisherInfo, this.createRootPrefixComputer(base));
    }

    protected void publishArtifact(IArtifactDescriptor descriptor, File jarFile, IPublisherInfo publisherInfo) {
        File packFile;
        if (jarFile == null || publisherInfo == null) {
            return;
        }
        IArtifactRepository destination = publisherInfo.getArtifactRepository();
        if (destination == null || destination.contains(descriptor)) {
            return;
        }
        super.publishArtifact(descriptor, jarFile, publisherInfo);
        boolean reuse = "true".equals(destination.getProperties().get("publishPackFilesAsSiblings"));
        if (reuse && (publisherInfo.getArtifactOptions() & 2) > 0 && (packFile = new Path(jarFile.getAbsolutePath()).addFileExtension("pack.gz").toFile()).exists()) {
            IArtifactDescriptor ad200 = this.createPack200ArtifactDescriptor(descriptor.getArtifactKey(), packFile, descriptor.getProperty("artifact.size"));
            this.publishArtifact(ad200, packFile, publisherInfo);
        }
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
                if (new File(location, "META-INF/MANIFEST.MF").exists()) {
                    result.add(location);
                } else if (new File(location, PLUGIN_FILENAME_DESCRIPTOR).exists() || new File(location, FRAGMENT_FILENAME_DESCRIPTOR).exists()) {
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

    protected void generateBundleIUs(BundleDescription[] bundleDescriptions, IPublisherResult result, IProgressMonitor monitor) {
        this.generateBundleIUs(bundleDescriptions, null, result, monitor);
    }

    protected void generateBundleIUs(BundleDescription[] bundleDescriptions, IPublisherInfo info, IPublisherResult result, IProgressMonitor monitor) {
        int i = 0;
        while (i < bundleDescriptions.length) {
            if (monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            BundleDescription bd = bundleDescriptions[i];
            if (bd != null && bd.getSymbolicName() != null && bd.getVersion() != null) {
                IInstallableUnit bundleIU = this.queryForIU(result, bundleDescriptions[i].getSymbolicName(), PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bd.getVersion()));
                IArtifactKey key = BundlesAction.createBundleArtifactKey(bd.getSymbolicName(), bd.getVersion().toString());
                if (bundleIU == null) {
                    this.createAdviceFileAdvice(bundleDescriptions[i], info);
                    bundleIU = BundlesAction.createBundleIU(bd, key, info);
                }
                File location = new File(bd.getLocation());
                IArtifactDescriptor ad = PublisherHelper.createArtifactDescriptor((IPublisherInfo)info, (IArtifactKey)key, (File)location);
                BundlesAction.processArtifactPropertiesAdvice((IInstallableUnit)bundleIU, (IArtifactDescriptor)ad, (IPublisherInfo)info);
                File bundleLocation = new File(bd.getLocation());
                if (bundleLocation.isDirectory()) {
                    this.publishArtifact(ad, bundleLocation, bundleLocation.listFiles(), info);
                } else {
                    this.publishArtifact(ad, bundleLocation, info);
                }
                IInstallableUnit fragment = null;
                if (this.isFragment(bd)) {
                    String hostId = bd.getHost().getName();
                    VersionRange hostVersionRange = PublisherHelper.fromOSGiVersionRange((org.eclipse.osgi.service.resolver.VersionRange)bd.getHost().getVersionRange());
                    IQueryResult hosts = this.queryForIUs(result, hostId, hostVersionRange);
                    for (IInstallableUnit host : hosts) {
                        String fragmentId = BundlesAction.makeHostLocalizationFragmentId(bd.getSymbolicName());
                        fragment = this.queryForIU(result, fragmentId, PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bd.getVersion()));
                        if (fragment != null) continue;
                        String[] externalizedStrings = BundlesAction.getExternalizedStrings(host);
                        fragment = this.createHostLocalizationFragment(bundleIU, bd, hostId, externalizedStrings);
                    }
                }
                result.addIU(bundleIU, "root");
                if (fragment != null) {
                    result.addIU(fragment, "non_root");
                }
                MetadataFactory.InstallableUnitDescription[] others = BundlesAction.processAdditionalInstallableUnitsAdvice((IInstallableUnit)bundleIU, (IPublisherInfo)info);
                int iuIndex = 0;
                while (others != null && iuIndex < others.length) {
                    result.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)others[iuIndex]), "root");
                    ++iuIndex;
                }
            }
            ++i;
        }
    }

    private void createAdviceFileAdvice(BundleDescription bundleDescription, IPublisherInfo publisherInfo) {
        String location = bundleDescription.getLocation();
        if (location == null) {
            return;
        }
        AdviceFileAdvice advice = new AdviceFileAdvice(bundleDescription.getSymbolicName(), PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bundleDescription.getVersion()), (IPath)new Path(location), AdviceFileAdvice.BUNDLE_ADVICE_FILE);
        if (advice.containsAdvice()) {
            publisherInfo.addAdvice((IPublisherAdvice)advice);
        }
    }

    private static boolean isDir(BundleDescription bundle, IPublisherInfo info) {
        String shape;
        Collection advice;
        String string = bundle.getSymbolicName();
        Version version = PublisherHelper.fromOSGiVersion((org.osgi.framework.Version)bundle.getVersion());
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.equinox.p2.publisher.eclipse.IBundleShapeAdvice");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((advice = info.getAdvice(null, true, string, version, (Class)clazz)) != null && !advice.isEmpty() && (shape = ((IBundleShapeAdvice)advice.iterator().next()).getShape()) != null) {
            return shape.equals(DIR);
        }
        Map manifest = (Map)bundle.getUserObject();
        String format = (String)manifest.get(BUNDLE_SHAPE);
        return DIR.equals(format);
    }

    private boolean isFragment(BundleDescription bd) {
        return bd.getHost() != null;
    }

    protected BundleDescription[] getBundleDescriptions(File[] bundleLocations, IProgressMonitor monitor) {
        if (bundleLocations == null) {
            return new BundleDescription[0];
        }
        boolean addSimpleConfigurator = false;
        boolean scIn = false;
        int i = 0;
        while (i < bundleLocations.length) {
            if (!addSimpleConfigurator) {
                boolean bl = addSimpleConfigurator = bundleLocations[i].toString().indexOf(ORG_ECLIPSE_UPDATE_CONFIGURATOR) > 0;
            }
            if (!scIn) {
                boolean bl = scIn = bundleLocations[i].toString().indexOf(ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR) > 0;
                if (scIn) break;
            }
            ++i;
        }
        if (scIn) {
            addSimpleConfigurator = false;
        }
        BundleDescription[] result = new BundleDescription[bundleLocations.length + (addSimpleConfigurator ? 1 : 0)];
        int i2 = 0;
        while (i2 < bundleLocations.length) {
            if (monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            result[i2] = BundlesAction.createBundleDescription(bundleLocations[i2]);
            ++i2;
        }
        if (addSimpleConfigurator) {
            try {
                Bundle simpleConfigBundle = BundlesAction.getBundle(ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR);
                if (simpleConfigBundle == null) {
                    LogHelper.log((IStatus)new Status(1, Activator.ID, Messages.message_noSimpleconfigurator));
                } else {
                    File location = FileLocator.getBundleFile((Bundle)simpleConfigBundle);
                    result[result.length - 1] = BundlesAction.createBundleDescription(location);
                }
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    private static Bundle getBundle(String symbolicName) {
        PackageAdmin packageAdmin;
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((packageAdmin = (PackageAdmin)ServiceHelper.getService((BundleContext)bundleContext, (Class)clazz)) == null) {
            return null;
        }
        Bundle[] matchingBundles = packageAdmin.getBundles(symbolicName, null);
        if (matchingBundles == null) {
            return null;
        }
        int i = 0;
        while (i < matchingBundles.length) {
            if ((matchingBundles[i].getState() & 3) == 0) {
                return matchingBundles[i];
            }
            ++i;
        }
        return null;
    }
}

