/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.internal.p2.metadata.BasicVersion
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitFragmentDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.equinox.spi.p2.publisher;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.internal.p2.metadata.BasicVersion;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;
import org.osgi.framework.Version;

public class PublisherHelper {
    public static final String NAMESPACE_ECLIPSE_TYPE = "org.eclipse.equinox.p2.eclipse.type";
    public static final String NAMESPACE_FLAVOR = "org.eclipse.equinox.p2.flavor";
    public static final String TYPE_ECLIPSE_FEATURE = "feature";
    public static final String TYPE_ECLIPSE_SOURCE = "source";
    public static final String NAMESPACE_IU_LOCALIZATION = "org.eclipse.equinox.p2.localization";
    public static final String[] BUNDLE_LOCALIZED_PROPERTIES = new String[]{"Bundle-Name", "Bundle-Description", "Bundle-Vendor", "Bundle-ContactAddress", "Bundle-DocURL", "Bundle-UpdateLocation", "Bundle-Localization"};
    public static final String CAPABILITY_NS_JAVA_PACKAGE = "java.package";
    public static final String CAPABILITY_NS_UPDATE_FEATURE = "org.eclipse.update.feature";
    public static final String ECLIPSE_FEATURE_CLASSIFIER = "org.eclipse.update.feature";
    public static final String OSGI_BUNDLE_CLASSIFIER = "osgi.bundle";
    public static final String BINARY_ARTIFACT_CLASSIFIER = "binary";
    public static final String INSTALL_FEATURES_FILTER = "(org.eclipse.update.install.features=true)";
    public static final String IU_NAMESPACE = "org.eclipse.equinox.p2.iu";
    public static final String ECLIPSE_INSTALL_HANDLER_PROP = "org.eclipse.update.installHandler";
    public static final ITouchpointType TOUCHPOINT_NATIVE = MetadataFactory.createTouchpointType((String)"org.eclipse.equinox.p2.native", (org.eclipse.equinox.p2.metadata.Version)org.eclipse.equinox.p2.metadata.Version.createOSGi((int)1, (int)0, (int)0));
    public static final ITouchpointType TOUCHPOINT_OSGI = MetadataFactory.createTouchpointType((String)"org.eclipse.equinox.p2.osgi", (org.eclipse.equinox.p2.metadata.Version)org.eclipse.equinox.p2.metadata.Version.createOSGi((int)1, (int)0, (int)0));
    public static final IProvidedCapability FEATURE_CAPABILITY = MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.eclipse.type", (String)"feature", (org.eclipse.equinox.p2.metadata.Version)org.eclipse.equinox.p2.metadata.Version.createOSGi((int)1, (int)0, (int)0));

    public static IArtifactDescriptor createArtifactDescriptor(IArtifactKey key, File pathOnDisk) {
        return PublisherHelper.createArtifactDescriptor(null, null, key, pathOnDisk);
    }

    public static IArtifactDescriptor createArtifactDescriptor(IPublisherInfo info, IArtifactKey key, File pathOnDisk) {
        return PublisherHelper.createArtifactDescriptor(info, info.getArtifactRepository(), key, pathOnDisk);
    }

    private static IArtifactDescriptor createArtifactDescriptor(IPublisherInfo info, IArtifactRepository artifactRepo, IArtifactKey key, File pathOnDisk) {
        ArtifactDescriptor result;
        Object object = result = artifactRepo != null ? artifactRepo.createArtifactDescriptor(key) : new ArtifactDescriptor(key);
        if (result instanceof ArtifactDescriptor) {
            String md5;
            ArtifactDescriptor descriptor = result;
            if (pathOnDisk != null) {
                descriptor.setProperty("artifact.size", Long.toString(pathOnDisk.length()));
                descriptor.setProperty("download.size", Long.toString(pathOnDisk.length()));
            }
            if ((info == null || (info.getArtifactOptions() & 8) == 0) && (md5 = PublisherHelper.computeMD5(pathOnDisk)) != null) {
                descriptor.setProperty("download.md5", md5);
            }
        }
        return result;
    }

    /*
     * Loose catch block
     */
    private static String computeMD5(File file) {
        String string;
        InputStream fis;
        block21: {
            MessageDigest md5Checker;
            if (file == null || file.isDirectory() || !file.exists()) {
                return null;
            }
            try {
                md5Checker = MessageDigest.getInstance("MD5");
            }
            catch (NoSuchAlgorithmException noSuchAlgorithmException) {
                return null;
            }
            fis = null;
            fis = new BufferedInputStream(new FileInputStream(file));
            int read = -1;
            while ((read = fis.read()) != -1) {
                md5Checker.update((byte)read);
            }
            byte[] digest = md5Checker.digest();
            StringBuffer buf = new StringBuffer();
            int i = 0;
            while (i < digest.length) {
                if ((digest[i] & 0xFF) < 16) {
                    buf.append('0');
                }
                buf.append(Integer.toHexString(digest[i] & 0xFF));
                ++i;
            }
            string = buf.toString();
            if (fis == null) break block21;
            try {
                fis.close();
            }
            catch (IOException iOException) {}
        }
        return string;
        catch (FileNotFoundException fileNotFoundException) {
            block22: {
                if (fis == null) break block22;
                try {
                    fis.close();
                }
                catch (IOException iOException) {}
            }
            return null;
        }
        catch (IOException iOException) {
            block23: {
                if (fis == null) break block23;
                {
                    catch (Throwable throwable) {
                        if (fis != null) {
                            try {
                                fis.close();
                            }
                            catch (IOException iOException2) {}
                        }
                        throw throwable;
                    }
                }
                try {
                    fis.close();
                }
                catch (IOException iOException3) {}
            }
            return null;
        }
    }

    public static IProvidedCapability makeTranslationCapability(String hostId, Locale locale) {
        return MetadataFactory.createProvidedCapability((String)NAMESPACE_IU_LOCALIZATION, (String)locale.toString(), (org.eclipse.equinox.p2.metadata.Version)org.eclipse.equinox.p2.metadata.Version.createOSGi((int)1, (int)0, (int)0));
    }

    public static String createDefaultConfigUnitId(String classifier, String configurationFlavor) {
        return String.valueOf(configurationFlavor) + "." + classifier + ".default";
    }

    public static IInstallableUnit createDefaultFeatureConfigurationUnit(String configurationFlavor) {
        MetadataFactory.InstallableUnitFragmentDescription cu = new MetadataFactory.InstallableUnitFragmentDescription();
        String configUnitId = PublisherHelper.createDefaultConfigUnitId("org.eclipse.update.feature", configurationFlavor);
        cu.setId(configUnitId);
        org.eclipse.equinox.p2.metadata.Version configUnitVersion = org.eclipse.equinox.p2.metadata.Version.createOSGi((int)1, (int)0, (int)0);
        cu.setVersion(configUnitVersion);
        cu.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        cu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability(configUnitId, configUnitVersion), MetadataFactory.createProvidedCapability((String)NAMESPACE_FLAVOR, (String)configurationFlavor, (org.eclipse.equinox.p2.metadata.Version)org.eclipse.equinox.p2.metadata.Version.createOSGi((int)1, (int)0, (int)0))});
        IRequirement[] reqs = new IRequirement[]{MetadataFactory.createRequirement((String)NAMESPACE_ECLIPSE_TYPE, (String)TYPE_ECLIPSE_FEATURE, (VersionRange)VersionRange.emptyRange, null, (boolean)true, (boolean)true, (boolean)false)};
        cu.setHost(reqs);
        cu.setFilter(INSTALL_FEATURES_FILTER);
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        touchpointData.put("install", "installFeature(feature:${artifact},featureId:default,featureVersion:default)");
        touchpointData.put("uninstall", "uninstallFeature(feature:${artifact},featureId:default,featureVersion:default)");
        cu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu);
    }

    public static IInstallableUnit createDefaultConfigurationUnitForSourceBundles(String configurationFlavor) {
        MetadataFactory.InstallableUnitFragmentDescription cu = new MetadataFactory.InstallableUnitFragmentDescription();
        String configUnitId = PublisherHelper.createDefaultConfigUnitId(TYPE_ECLIPSE_SOURCE, configurationFlavor);
        cu.setId(configUnitId);
        org.eclipse.equinox.p2.metadata.Version configUnitVersion = org.eclipse.equinox.p2.metadata.Version.createOSGi((int)1, (int)0, (int)0);
        cu.setVersion(configUnitVersion);
        cu.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        cu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability(configUnitId, configUnitVersion), MetadataFactory.createProvidedCapability((String)NAMESPACE_FLAVOR, (String)configurationFlavor, (org.eclipse.equinox.p2.metadata.Version)org.eclipse.equinox.p2.metadata.Version.createOSGi((int)1, (int)0, (int)0))});
        IRequirement[] reqs = new IRequirement[]{MetadataFactory.createRequirement((String)NAMESPACE_ECLIPSE_TYPE, (String)TYPE_ECLIPSE_SOURCE, (VersionRange)VersionRange.emptyRange, null, (boolean)true, (boolean)true, (boolean)false)};
        cu.setHost(reqs);
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        touchpointData.put("install", "addSourceBundle(bundle:${artifact})");
        touchpointData.put("uninstall", "removeSourceBundle(bundle:${artifact})");
        cu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu);
    }

    public static ArtifactKey createBinaryArtifactKey(String id, org.eclipse.equinox.p2.metadata.Version version) {
        return new ArtifactKey(BINARY_ARTIFACT_CLASSIFIER, id, version);
    }

    public static IProvidedCapability createSelfCapability(String installableUnitId, org.eclipse.equinox.p2.metadata.Version installableUnitVersion) {
        return MetadataFactory.createProvidedCapability((String)IU_NAMESPACE, (String)installableUnitId, (org.eclipse.equinox.p2.metadata.Version)installableUnitVersion);
    }

    public static Version toOSGiVersion(org.eclipse.equinox.p2.metadata.Version version) {
        if (version == null) {
            return null;
        }
        if (version == org.eclipse.equinox.p2.metadata.Version.emptyVersion) {
            return Version.emptyVersion;
        }
        if (version == org.eclipse.equinox.p2.metadata.Version.MAX_VERSION) {
            return new Version(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        BasicVersion bv = (BasicVersion)version;
        return new Version(bv.getMajor(), bv.getMinor(), bv.getMicro(), bv.getQualifier());
    }

    public static org.eclipse.equinox.p2.metadata.Version fromOSGiVersion(Version version) {
        if (version == null) {
            return null;
        }
        if (version.getMajor() == Integer.MAX_VALUE && version.getMicro() == Integer.MAX_VALUE && version.getMicro() == Integer.MAX_VALUE) {
            return org.eclipse.equinox.p2.metadata.Version.MAX_VERSION;
        }
        return org.eclipse.equinox.p2.metadata.Version.createOSGi((int)version.getMajor(), (int)version.getMinor(), (int)version.getMicro(), (String)version.getQualifier());
    }

    public static org.eclipse.osgi.service.resolver.VersionRange toOSGiVersionRange(VersionRange range) {
        if (range.equals((Object)VersionRange.emptyRange)) {
            return org.eclipse.osgi.service.resolver.VersionRange.emptyRange;
        }
        return new org.eclipse.osgi.service.resolver.VersionRange(PublisherHelper.toOSGiVersion(range.getMinimum()), range.getIncludeMinimum(), PublisherHelper.toOSGiVersion(range.getMaximum()), range.getIncludeMinimum());
    }

    public static VersionRange fromOSGiVersionRange(org.eclipse.osgi.service.resolver.VersionRange range) {
        if (range.equals((Object)org.eclipse.osgi.service.resolver.VersionRange.emptyRange)) {
            return VersionRange.emptyRange;
        }
        return new VersionRange(PublisherHelper.fromOSGiVersion(range.getMinimum()), range.getIncludeMinimum(), PublisherHelper.fromOSGiVersion(range.getMaximum()), range.getIncludeMaximum());
    }
}

