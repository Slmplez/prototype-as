/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.query.Collector
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.engine;

import java.io.File;
import java.lang.ref.SoftReference;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.engine.EngineActivator;
import org.eclipse.equinox.internal.p2.engine.ISurrogateProfileHandler;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.Profile;
import org.eclipse.equinox.internal.p2.engine.SimpleProfileRegistry;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.query.IUProfilePropertyQuery;
import org.eclipse.equinox.p2.engine.query.UserVisibleRootQuery;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SurrogateProfileHandler
implements ISurrogateProfileHandler {
    private static final String NATIVE_TOUCHPOINT_TYPE = "org.eclipse.equinox.p2.native";
    private static final String P2_ENGINE_DIR = "p2/org.eclipse.equinox.p2.engine/";
    private static final String OSGI_INSTALL_AREA = "osgi.install.area";
    private static final String ECLIPSE_INI_IGNORED = "eclipse.ini.ignored";
    private static final String IU_LOCKED = Integer.toString(3);
    private static final String PROP_SURROGATE = "org.eclipse.equinox.p2.surrogate";
    private static final String PROP_SHARED_TIMESTAMP = "org.eclipse.equinox.p2.shared.timestamp";
    private static final String PROP_BASE = "org.eclipse.equinox.p2.base";
    private static final String PROP_RESOLVE = "org.eclipse.equinox.p2.resolve";
    private static final String OPTIONAL = "OPTIONAL";
    private static final String STRICT = "STRICT";
    private static final String PROP_INCLUSION_RULES = "org.eclipse.equinox.p2.internal.inclusion.rules";
    private final IProvisioningAgent agent;
    private SimpleProfileRegistry profileRegistry;
    private SoftReference<IProfile> cachedProfile;
    static /* synthetic */ Class class$0;

    private static void addSharedProfileBaseIUs(IProfile sharedProfile, Profile userProfile) {
        IQuery rootIUQuery = QueryUtil.createMatchQuery((String)"profileProperties[$0] == 'true' || (touchpointType != null && touchpointType.id == $1)", (Object[])new Object[]{"org.eclipse.equinox.p2.type.root", NATIVE_TOUCHPOINT_TYPE});
        IQueryResult rootIUs = sharedProfile.query(rootIUQuery, null);
        for (IInstallableUnit iu : rootIUs) {
            userProfile.addInstallableUnit(iu);
            userProfile.addInstallableUnitProperties(iu, sharedProfile.getInstallableUnitProperties(iu));
            userProfile.setInstallableUnitProperty(iu, "org.eclipse.equinox.p2.type.lock", IU_LOCKED);
            userProfile.setInstallableUnitProperty(iu, PROP_BASE, Boolean.TRUE.toString());
        }
        IInstallableUnit sharedProfileIU = SurrogateProfileHandler.createSharedProfileIU(sharedProfile);
        userProfile.addInstallableUnit(sharedProfileIU);
        userProfile.setInstallableUnitProperty(sharedProfileIU, PROP_INCLUSION_RULES, STRICT);
        userProfile.setInstallableUnitProperty(sharedProfileIU, PROP_BASE, Boolean.TRUE.toString());
    }

    private static IInstallableUnit createSharedProfileIU(IProfile sharedProfile) {
        MetadataFactory.InstallableUnitDescription iuDescription = new MetadataFactory.InstallableUnitDescription();
        iuDescription.setId(new StringBuffer("SharedProfile_").append(sharedProfile.getProfileId()).toString());
        iuDescription.setVersion(Version.createOSGi((int)1, (int)0, (int)0, (String)Long.toString(sharedProfile.getTimestamp())));
        ArrayList<IProvidedCapability> iuCapabilities = new ArrayList<IProvidedCapability>();
        IProvidedCapability selfCapability = MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.iu", (String)iuDescription.getId(), (Version)iuDescription.getVersion());
        iuCapabilities.add(selfCapability);
        iuDescription.addProvidedCapabilities(iuCapabilities);
        ArrayList<IRequirement> iuRequirements = new ArrayList<IRequirement>();
        IQueryResult allIUs = sharedProfile.query(QueryUtil.createIUAnyQuery(), null);
        for (IInstallableUnit iu : allIUs) {
            IRequirement iuRequirement = MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.iu", (String)iu.getId(), (VersionRange)new VersionRange(iu.getVersion(), true, iu.getVersion(), true), null, (boolean)false, (boolean)false, (boolean)true);
            iuRequirements.add(iuRequirement);
        }
        iuDescription.addRequirements(iuRequirements);
        iuDescription.setProperty("org.eclipse.equinox.p2.name", NLS.bind((String)Messages.Shared_Profile, null));
        IInstallableUnit sharedProfileIU = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iuDescription);
        return sharedProfileIU;
    }

    private static void removeUserProfileBaseIUs(Profile userProfile) {
        IUProfilePropertyQuery baseIUQuery = new IUProfilePropertyQuery(PROP_BASE, Boolean.TRUE.toString());
        IQueryResult rootIUs = userProfile.query((IQuery)baseIUQuery, null);
        for (IInstallableUnit iu : rootIUs) {
            userProfile.removeInstallableUnit(iu);
        }
    }

    private static void markRootsOptional(Profile userProfile) {
        IQueryResult rootIUs = userProfile.query((IQuery)new UserVisibleRootQuery(), null);
        for (IInstallableUnit iu : rootIUs) {
            userProfile.setInstallableUnitProperty(iu, PROP_INCLUSION_RULES, OPTIONAL);
        }
    }

    private static void updateProperties(IProfile sharedProfile, Profile userProfile) {
        userProfile.setProperty(PROP_SHARED_TIMESTAMP, Long.toString(sharedProfile.getTimestamp()));
        BundleContext bundleContext = EngineActivator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Location installLocation = (Location)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName(), (String)Location.INSTALL_FILTER);
        File installFolder = new File(installLocation.getURL().getPath());
        if (Boolean.valueOf(sharedProfile.getProperty("org.eclipse.equinox.p2.roaming")).booleanValue()) {
            userProfile.setProperty("org.eclipse.equinox.p2.installFolder", installFolder.getAbsolutePath());
            userProfile.setProperty("org.eclipse.equinox.p2.cache.shared", installFolder.getAbsolutePath());
            userProfile.setProperty("org.eclipse.equinox.p2.roaming", Boolean.FALSE.toString());
        } else {
            String cache = sharedProfile.getProperty("org.eclipse.equinox.p2.cache");
            if (cache != null) {
                userProfile.setProperty("org.eclipse.equinox.p2.cache.shared", cache);
            }
        }
        BundleContext bundleContext2 = EngineActivator.getContext();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Location configurationLocation = (Location)ServiceHelper.getService((BundleContext)bundleContext2, (String)clazz2.getName(), (String)Location.CONFIGURATION_FILTER);
        File configurationFolder = new File(configurationLocation.getURL().getPath());
        userProfile.setProperty("org.eclipse.equinox.p2.configurationFolder", configurationFolder.getAbsolutePath());
        if (configurationFolder.getParentFile() == null) {
            throw new IllegalArgumentException("Configuration folder must not be a file system root.");
        }
        userProfile.setProperty("org.eclipse.equinox.p2.cache", configurationFolder.getParentFile().getAbsolutePath());
        File launcherConfigFile = new File(configurationFolder, ECLIPSE_INI_IGNORED);
        userProfile.setProperty("org.eclipse.equinox.p2.launcherConfiguration", launcherConfigFile.getAbsolutePath());
    }

    public SurrogateProfileHandler(IProvisioningAgent agent) {
        this.agent = agent;
    }

    private synchronized SimpleProfileRegistry getProfileRegistry() {
        if (this.profileRegistry == null) {
            String installArea = EngineActivator.getContext().getProperty(OSGI_INSTALL_AREA);
            try {
                URL registryURL = new URL(new StringBuffer(String.valueOf(installArea)).append(P2_ENGINE_DIR).append("profileRegistry").toString());
                File sharedRegistryDirectory = URIUtil.toFile((URI)URIUtil.toURI((URL)registryURL));
                this.profileRegistry = new SimpleProfileRegistry(this.agent, sharedRegistryDirectory, null, false);
            }
            catch (MalformedURLException malformedURLException) {
            }
            catch (URISyntaxException uRISyntaxException) {}
        }
        return this.profileRegistry;
    }

    private IProfile getSharedProfile(String id) {
        IProfile profile;
        SimpleProfileRegistry registry = this.getProfileRegistry();
        long[] timestamps = registry.listProfileTimestamps(id);
        if (timestamps.length == 0) {
            return null;
        }
        long currentTimestamp = timestamps[timestamps.length - 1];
        if (this.cachedProfile != null && (profile = this.cachedProfile.get()) != null && profile.getProfileId().equals(id) && profile.getTimestamp() == currentTimestamp) {
            return profile;
        }
        profile = registry.getProfile(id, currentTimestamp);
        if (profile != null) {
            this.cachedProfile = new SoftReference<IProfile>(profile);
        }
        return profile;
    }

    @Override
    public IProfile createProfile(String id) {
        IProfile sharedProfile = this.getSharedProfile(id);
        if (sharedProfile == null) {
            return null;
        }
        Profile userProfile = new Profile(this.agent, id, null, sharedProfile.getProperties());
        userProfile.setProperty(PROP_SURROGATE, Boolean.TRUE.toString());
        userProfile.setSurrogateProfileHandler(this);
        SurrogateProfileHandler.updateProperties(sharedProfile, userProfile);
        SurrogateProfileHandler.addSharedProfileBaseIUs(sharedProfile, userProfile);
        return userProfile;
    }

    @Override
    public boolean isSurrogate(IProfile profile) {
        return Boolean.valueOf(profile.getProperty(PROP_SURROGATE));
    }

    @Override
    public IQueryResult<IInstallableUnit> queryProfile(IProfile profile, IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
        IProfile sharedProfile = this.getSharedProfile(profile.getProfileId());
        if (sharedProfile == null) {
            return profile.query(query, monitor);
        }
        Collector result = new Collector();
        result.addAll(sharedProfile.query(query, monitor));
        result.addAll(profile.query(query, monitor));
        return result;
    }

    @Override
    public boolean updateProfile(IProfile userProfile) {
        IProfile sharedProfile = this.getSharedProfile(userProfile.getProfileId());
        if (sharedProfile == null) {
            throw new IllegalStateException(NLS.bind((String)Messages.shared_profile_not_found, (Object)userProfile.getProfileId()));
        }
        String sharedTimeStamp = Long.toString(sharedProfile.getTimestamp());
        String userSharedTimeStamp = userProfile.getProperty(PROP_SHARED_TIMESTAMP);
        if (userSharedTimeStamp != null && userSharedTimeStamp.equals(sharedTimeStamp)) {
            return false;
        }
        Profile writableUserProfile = (Profile)userProfile;
        SurrogateProfileHandler.updateProperties(sharedProfile, writableUserProfile);
        SurrogateProfileHandler.removeUserProfileBaseIUs(writableUserProfile);
        if (!userProfile.query(QueryUtil.createIUAnyQuery(), null).isEmpty()) {
            writableUserProfile.setProperty(PROP_RESOLVE, Boolean.TRUE.toString());
            SurrogateProfileHandler.markRootsOptional(writableUserProfile);
        }
        SurrogateProfileHandler.addSharedProfileBaseIUs(sharedProfile, writableUserProfile);
        return true;
    }
}

