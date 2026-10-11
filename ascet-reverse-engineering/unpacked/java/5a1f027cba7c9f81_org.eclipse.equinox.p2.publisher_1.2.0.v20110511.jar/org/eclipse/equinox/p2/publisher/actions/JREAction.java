/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitFragmentDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.internal.p2.publisher.Activator;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class JREAction
extends AbstractPublisherAction {
    private static final String DEFAULT_JRE_NAME = "a.jre";
    private static final Version DEFAULT_JRE_VERSION = Version.parseVersion((String)"1.6");
    private static final String DEFAULT_PROFILE = "/profiles/JavaSE-1.6.profile";
    private static final String PROFILE_LOCATION = "jre.action.profile.location";
    private static final String PROFILE_NAME = "osgi.java.profile.name";
    private static final String PROFILE_TARGET_VERSION = "org.eclipse.jdt.core.compiler.codegen.targetPlatform";
    private static final String PROFILE_SYSTEM_PACKAGES = "org.osgi.framework.system.packages";
    private File jreLocation;
    private String environment;
    private Map<String, String> profileProperties;

    public JREAction(File location) {
        this.jreLocation = location;
    }

    public JREAction(String environment) {
        this.environment = environment;
    }

    @Override
    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        this.initialize(publisherInfo);
        IArtifactDescriptor artifact = this.createJREData(results);
        if (artifact != null) {
            this.publishArtifact(artifact, new File[]{this.jreLocation}, null, publisherInfo, this.createRootPrefixComputer(this.jreLocation));
        }
        return Status.OK_STATUS;
    }

    protected IArtifactDescriptor createJREData(IPublisherResult results) {
        MetadataFactory.InstallableUnitDescription iu = new MetadataFactory.InstallableUnitDescription();
        iu.setSingleton(false);
        iu.setId(DEFAULT_JRE_NAME);
        iu.setVersion(DEFAULT_JRE_VERSION);
        iu.setTouchpointType(PublisherHelper.TOUCHPOINT_NATIVE);
        this.generateJREIUData(iu);
        MetadataFactory.InstallableUnitFragmentDescription cu = new MetadataFactory.InstallableUnitFragmentDescription();
        String configId = new StringBuffer("config.").append(iu.getId()).toString();
        cu.setId(configId);
        cu.setVersion(iu.getVersion());
        VersionRange range = iu.getVersion() == Version.emptyVersion ? VersionRange.emptyRange : new VersionRange(iu.getVersion(), true, Version.MAX_VERSION, true);
        cu.setHost(new IRequirement[]{MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)iu.getId(), (VersionRange)range, null, (boolean)false, (boolean)false)});
        cu.setProperty("org.eclipse.equinox.p2.type.fragment", Boolean.TRUE.toString());
        cu.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability(configId, iu.getVersion())});
        cu.setTouchpointType(PublisherHelper.TOUCHPOINT_NATIVE);
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        if (this.jreLocation == null || !this.jreLocation.exists()) {
            touchpointData.put("install", "");
            cu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
            results.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu), "root");
            results.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu), "root");
            return null;
        }
        ArtifactKey key = new ArtifactKey("binary", iu.getId(), iu.getVersion());
        iu.setArtifacts(new IArtifactKey[]{key});
        results.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu), "root");
        String configurationData = "unzip(source:@artifact, target:${installFolder});";
        touchpointData.put("install", configurationData);
        String unConfigurationData = "cleanupzip(source:@artifact, target:${installFolder});";
        touchpointData.put("uninstall", unConfigurationData);
        cu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        results.addIU(MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu), "root");
        return PublisherHelper.createArtifactDescriptor(this.info, (IArtifactKey)key, this.jreLocation);
    }

    private IProvidedCapability[] generateJRECapability(String id, Version version) {
        if (this.profileProperties == null) {
            return new IProvidedCapability[0];
        }
        try {
            ManifestElement[] jrePackages = ManifestElement.parseHeader((String)PROFILE_SYSTEM_PACKAGES, (String)this.profileProperties.get(PROFILE_SYSTEM_PACKAGES));
            IProvidedCapability[] exportedPackageAsCapabilities = new IProvidedCapability[jrePackages.length + 1];
            exportedPackageAsCapabilities[0] = PublisherHelper.createSelfCapability(id, version);
            int i = 1;
            while (i <= jrePackages.length) {
                exportedPackageAsCapabilities[i] = MetadataFactory.createProvidedCapability((String)"java.package", (String)jrePackages[i - 1].getValue(), null);
                ++i;
            }
            return exportedPackageAsCapabilities;
        }
        catch (BundleException e) {
            e.printStackTrace();
            return new IProvidedCapability[0];
        }
    }

    private void generateJREIUData(MetadataFactory.InstallableUnitDescription iu) {
        String profileName;
        if (this.profileProperties == null || this.profileProperties.size() == 0) {
            return;
        }
        String profileLocation = this.profileProperties.get(PROFILE_LOCATION);
        String string = profileName = profileLocation != null ? new Path(profileLocation).lastSegment() : this.profileProperties.get(PROFILE_NAME);
        if (profileName.endsWith(".profile")) {
            profileName = profileName.substring(0, profileName.length() - 8);
        }
        Version version = null;
        int idx = profileName.indexOf(45);
        if (idx != -1) {
            try {
                version = Version.parseVersion((String)profileName.substring(idx + 1));
            }
            catch (IllegalArgumentException illegalArgumentException) {}
            profileName = profileName.substring(0, idx);
        }
        if (version == null) {
            try {
                String targetVersion = this.profileProperties.get(PROFILE_TARGET_VERSION);
                version = targetVersion != null ? Version.parseVersion((String)targetVersion) : null;
            }
            catch (IllegalArgumentException illegalArgumentException) {}
        }
        if (version == null) {
            version = DEFAULT_JRE_VERSION;
        }
        iu.setVersion(version);
        profileName = profileName.replace('-', '.');
        profileName = profileName.replace('/', '.');
        profileName = profileName.replace('_', '.');
        iu.setId(new StringBuffer("a.jre.").append(profileName.toLowerCase()).toString());
        IProvidedCapability[] capabilities = this.generateJRECapability(iu.getId(), iu.getVersion());
        iu.setCapabilities(capabilities);
    }

    private void initialize(IPublisherInfo publisherInfo) {
        File[] profiles;
        this.info = publisherInfo;
        if (this.jreLocation != null && (profiles = this.jreLocation.listFiles(new FileFilter(){

            public boolean accept(File pathname) {
                return pathname.getAbsolutePath().endsWith(".profile");
            }
        })) != null && profiles.length > 0) {
            this.profileProperties = this.loadProfile(profiles[0]);
        }
        if (this.profileProperties == null) {
            String entry = this.environment != null ? new StringBuffer("/profiles/").append(this.environment.replace('/', '_')).append(".profile").toString() : DEFAULT_PROFILE;
            URL profileURL = Activator.getContext().getBundle().getEntry(entry);
            this.profileProperties = this.loadProfile(profileURL);
        }
    }

    private Map<String, String> loadProfile(File profileFile) {
        if (profileFile == null || !profileFile.exists()) {
            return null;
        }
        try {
            BufferedInputStream stream = new BufferedInputStream(new FileInputStream(profileFile));
            Map<String, String> properties = this.loadProfile(stream);
            if (properties != null) {
                properties.put(PROFILE_LOCATION, profileFile.getAbsolutePath());
            }
            return properties;
        }
        catch (FileNotFoundException fileNotFoundException) {
            return null;
        }
    }

    private Map<String, String> loadProfile(URL profileURL) {
        if (profileURL == null) {
            return null;
        }
        try {
            InputStream stream = profileURL.openStream();
            return this.loadProfile(stream);
        }
        catch (IOException iOException) {
            return null;
        }
    }

    /*
     * Loose catch block
     */
    private Map<String, String> loadProfile(InputStream stream) {
        if (stream != null) {
            Map map = CollectionUtils.loadProperties((InputStream)stream);
            try {
                stream.close();
            }
            catch (IOException iOException) {}
            return map;
            catch (IOException iOException) {
                try {}
                catch (Throwable throwable) {
                    try {
                        stream.close();
                    }
                    catch (IOException iOException2) {}
                    throw throwable;
                }
                try {
                    stream.close();
                }
                catch (IOException iOException3) {}
                return null;
            }
        }
        return null;
    }
}

