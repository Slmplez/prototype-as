/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.metadata.TranslationSupport
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$DocHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$RootHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLWriter$ProcessingInstruction
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.core.spi.IAgentService
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.equinox.internal.p2.engine;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.net.URI;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.EventObject;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.engine.DebugHelper;
import org.eclipse.equinox.internal.p2.engine.EngineActivator;
import org.eclipse.equinox.internal.p2.engine.ISurrogateProfileHandler;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.Profile;
import org.eclipse.equinox.internal.p2.engine.ProfileEvent;
import org.eclipse.equinox.internal.p2.engine.ProfileLock;
import org.eclipse.equinox.internal.p2.engine.ProfileParser;
import org.eclipse.equinox.internal.p2.engine.ProfilePreferences;
import org.eclipse.equinox.internal.p2.engine.ProfileWriter;
import org.eclipse.equinox.internal.p2.engine.ProfileXMLConstants;
import org.eclipse.equinox.internal.p2.engine.SurrogateProfileHandler;
import org.eclipse.equinox.internal.p2.metadata.TranslationSupport;
import org.eclipse.equinox.internal.p2.persistence.XMLParser;
import org.eclipse.equinox.internal.p2.persistence.XMLWriter;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.core.spi.IAgentService;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SimpleProfileRegistry
implements IProfileRegistry,
IAgentService {
    private static final String PROFILE_REGISTRY = "profile registry";
    private static final String PROFILE_PROPERTIES_FILE = "state.properties";
    private static final String PROFILE_EXT = ".profile";
    private static final String PROFILE_GZ_EXT = ".profile.gz";
    public static final String DEFAULT_STORAGE_DIR = "profileRegistry";
    private static final String DATA_EXT = ".data";
    protected final IProvisioningAgent agent;
    private SoftReference<Map<String, Profile>> profiles;
    private Map<String, ProfileLock> profileLocks = new HashMap<String, ProfileLock>();
    private String self;
    private boolean updateSelfProfile;
    private File store;
    ISurrogateProfileHandler surrogateProfileHandler;
    private IProvisioningEventBus eventBus;
    private ProfileStateProperties lastAccessedProperties;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public SimpleProfileRegistry(IProvisioningAgent agent, File registryDirectory) {
        this(agent, registryDirectory, new SurrogateProfileHandler(agent), true);
    }

    public SimpleProfileRegistry(IProvisioningAgent agent, File registryDirectory, ISurrogateProfileHandler handler, boolean updateSelfProfile) {
        this.agent = agent;
        this.store = registryDirectory;
        this.surrogateProfileHandler = handler;
        Assert.isNotNull((Object)this.store, (String)"Profile registry requires a directory");
        this.findSelf();
        this.updateSelfProfile = updateSelfProfile;
    }

    private void findSelf() {
        ServiceReference ref;
        BundleContext context = EngineActivator.getContext();
        if (context == null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.core.IAgentLocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((ref = context.getServiceReference((Class)clazz)) == null) {
            return;
        }
        IAgentLocation location = (IAgentLocation)context.getService(ref);
        if (location == null) {
            return;
        }
        if (this.store.equals(SimpleProfileRegistry.getDefaultRegistryDirectory(location))) {
            this.self = context.getProperty("eclipse.p2.profile");
        }
        context.ungetService(ref);
    }

    public static File getDefaultRegistryDirectory(IAgentLocation agent) {
        File registryDirectory = null;
        if (agent == null) {
            throw new IllegalStateException("Profile Registry inialization failed: Agent Location is not available");
        }
        URI engineDataArea = agent.getDataArea("org.eclipse.equinox.p2.engine");
        URI registryURL = URIUtil.append((URI)engineDataArea, (String)DEFAULT_STORAGE_DIR);
        registryDirectory = new File(registryURL);
        registryDirectory.mkdirs();
        return registryDirectory;
    }

    private void updateSelfProfile(Map<String, Profile> profileMap) {
        if (profileMap == null) {
            return;
        }
        Profile selfProfile = profileMap.get(this.self);
        if (selfProfile == null) {
            return;
        }
        TranslationSupport.getInstance().setTranslationSource((IQueryable)selfProfile);
        if (DebugHelper.DEBUG_PROFILE_REGISTRY) {
            DebugHelper.debug(PROFILE_REGISTRY, "SimpleProfileRegistry.updateSelfProfile");
        }
        boolean changed = false;
        if (Boolean.valueOf(selfProfile.getProperty("org.eclipse.equinox.p2.roaming")).booleanValue()) {
            changed = this.updateRoamingProfile(selfProfile);
        }
        if (this.surrogateProfileHandler != null && this.surrogateProfileHandler.isSurrogate(selfProfile)) {
            boolean bl = changed = changed || this.surrogateProfileHandler.updateProfile(selfProfile);
        }
        if (changed) {
            this.saveProfile(selfProfile);
        }
    }

    private boolean updateRoamingProfile(Profile selfProfile) {
        String propCache;
        if (DebugHelper.DEBUG_PROFILE_REGISTRY) {
            DebugHelper.debug(PROFILE_REGISTRY, "SimpleProfileRegistry.updateRoamingProfile");
        }
        BundleContext bundleContext = EngineActivator.getContext();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Location installLocation = (Location)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName(), (String)Location.INSTALL_FILTER);
        File location = new File(installLocation.getURL().getPath());
        boolean changed = false;
        if (!location.equals(new File(selfProfile.getProperty("org.eclipse.equinox.p2.installFolder")))) {
            selfProfile.setProperty("org.eclipse.equinox.p2.installFolder", location.getAbsolutePath());
            changed = true;
        }
        if ((propCache = selfProfile.getProperty("org.eclipse.equinox.p2.cache")) != null && !location.equals(new File(propCache))) {
            selfProfile.setProperty("org.eclipse.equinox.p2.cache", location.getAbsolutePath());
            changed = true;
        }
        if (DebugHelper.DEBUG_PROFILE_REGISTRY) {
            DebugHelper.debug(PROFILE_REGISTRY, new StringBuffer("SimpleProfileRegistry.updateRoamingProfile(changed=").append(changed).append(')').toString());
        }
        return changed;
    }

    public synchronized String toString() {
        return this.getProfileMap().toString();
    }

    @Override
    public synchronized IProfile getProfile(String id) {
        Profile profile = this.internalGetProfile(id);
        if (profile == null) {
            return null;
        }
        return profile.snapshot();
    }

    @Override
    public synchronized IProfile getProfile(String id, long timestamp) {
        IProfile profile;
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        if (this.profiles != null && (profile = this.getProfile(id)) != null && profile.getTimestamp() == timestamp) {
            return profile;
        }
        File profileDirectory = this.getProfileFolder(id);
        if (!profileDirectory.isDirectory()) {
            return null;
        }
        File profileFile = new File(profileDirectory, new StringBuffer(String.valueOf(Long.toString(timestamp))).append(PROFILE_GZ_EXT).toString());
        if (!profileFile.exists() && !(profileFile = new File(profileDirectory, new StringBuffer(String.valueOf(Long.toString(timestamp))).append(PROFILE_EXT).toString())).exists()) {
            return null;
        }
        Parser parser = new Parser(EngineActivator.getContext(), "org.eclipse.equinox.p2.engine");
        try {
            parser.parse(profileFile);
        }
        catch (IOException e) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.error_parsing_profile, (Object)profileFile), (Throwable)e));
        }
        return parser.getProfileMap().get(id);
    }

    @Override
    public synchronized long[] listProfileTimestamps(String id) {
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        if (id == null) {
            return new long[0];
        }
        File profileDirectory = this.getProfileFolder(id);
        if (!profileDirectory.isDirectory()) {
            return new long[0];
        }
        File[] profileFiles = profileDirectory.listFiles(new FileFilter(){

            public boolean accept(File pathname) {
                return (pathname.getName().endsWith(SimpleProfileRegistry.PROFILE_EXT) || pathname.getName().endsWith(SimpleProfileRegistry.PROFILE_GZ_EXT)) && pathname.isFile();
            }
        });
        long[] timestamps = new long[profileFiles.length];
        int i = 0;
        while (i < profileFiles.length) {
            String filename = profileFiles[i].getName();
            int extensionIndex = filename.lastIndexOf(PROFILE_EXT);
            try {
                timestamps[i] = Long.parseLong(filename.substring(0, extensionIndex));
            }
            catch (NumberFormatException numberFormatException) {
                throw new IllegalStateException(new StringBuffer("Incompatible profile file name. Expected format is {timestamp}.profile.gz (or {timestamp}.profile) but was ").append(filename).append(".").toString());
            }
            ++i;
        }
        Arrays.sort(timestamps);
        return timestamps;
    }

    private Profile internalGetProfile(String id) {
        Profile profile;
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        if ((profile = this.getProfileMap().get(id)) == null && this.self != null && this.self.equals(id)) {
            profile = this.createSurrogateProfile(id);
        }
        return profile;
    }

    private Profile createSurrogateProfile(String id) {
        if (this.surrogateProfileHandler == null) {
            return null;
        }
        Profile profile = (Profile)this.surrogateProfileHandler.createProfile(id);
        if (profile == null) {
            return null;
        }
        this.saveProfile(profile);
        this.resetProfiles();
        return this.getProfileMap().get(id);
    }

    @Override
    public synchronized IProfile[] getProfiles() {
        Map<String, Profile> profileMap = this.getProfileMap();
        IProfile[] result = new Profile[profileMap.size()];
        int i = 0;
        for (Profile profile : profileMap.values()) {
            result[i++] = profile.snapshot();
        }
        return result;
    }

    protected Map<String, Profile> getProfileMap() {
        Map<String, Profile> result;
        if (this.profiles != null && (result = this.profiles.get()) != null) {
            return result;
        }
        result = this.restore();
        if (result == null) {
            result = new LinkedHashMap<String, Profile>(8);
        }
        this.profiles = new SoftReference<Map<String, Profile>>(result);
        if (this.updateSelfProfile) {
            this.updateSelfProfile(result);
        }
        return result;
    }

    public synchronized void updateProfile(Profile profile) {
        String id = profile.getProfileId();
        Profile current = this.internalGetProfile(id);
        if (current == null) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.profile_does_not_exist, (Object)id));
        }
        ProfileLock lock = this.profileLocks.get(id);
        lock.checkLocked();
        current.clearLocalProperties();
        current.clearInstallableUnits();
        current.addProperties(profile.getLocalProperties());
        IQueryResult queryResult = profile.query(QueryUtil.createIUAnyQuery(), null);
        for (IInstallableUnit iu : queryResult) {
            current.addInstallableUnit(iu);
            Map<String, String> iuProperties = profile.getInstallableUnitProperties(iu);
            if (iuProperties == null) continue;
            current.addInstallableUnitProperties(iu, iuProperties);
        }
        this.saveProfile(current);
        profile.clearOrphanedInstallableUnitProperties();
        profile.setTimestamp(current.getTimestamp());
        this.broadcastChangeEvent(id, 2);
    }

    @Override
    public IProfile addProfile(String id) throws ProvisionException {
        return this.addProfile(id, null, null);
    }

    @Override
    public IProfile addProfile(String id, Map<String, String> profileProperties) throws ProvisionException {
        return this.addProfile(id, profileProperties, null);
    }

    public synchronized IProfile addProfile(String id, Map<String, String> profileProperties, String parentId) throws ProvisionException {
        Map<String, Profile> profileMap;
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        if ((profileMap = this.getProfileMap()).get(id) != null) {
            throw new ProvisionException(NLS.bind((String)Messages.Profile_Duplicate_Root_Profile_Id, (Object)id));
        }
        Profile parent = null;
        if (parentId != null) {
            if ("_SELF_".equals(parentId)) {
                parentId = this.self;
            }
            if ((parent = profileMap.get(parentId)) == null) {
                throw new ProvisionException(NLS.bind((String)Messages.Profile_Parent_Not_Found, (Object)parentId));
            }
        }
        Profile profile = new Profile(this.agent, id, parent, profileProperties);
        if (this.surrogateProfileHandler != null && this.surrogateProfileHandler.isSurrogate(profile)) {
            profile.setSurrogateProfileHandler(this.surrogateProfileHandler);
        }
        profileMap.put(id, profile);
        this.saveProfile(profile);
        this.broadcastChangeEvent(id, 0);
        return profile.snapshot();
    }

    @Override
    public synchronized void removeProfile(String profileId) {
        Map<String, Profile> profileMap;
        Profile profile;
        if ("_SELF_".equals(profileId)) {
            profileId = this.self;
        }
        if ((profile = (profileMap = this.getProfileMap()).get(profileId)) == null) {
            return;
        }
        List<String> subProfileIds = profile.getSubProfileIds();
        int i = 0;
        while (i < subProfileIds.size()) {
            this.removeProfile(subProfileIds.get(i));
            ++i;
        }
        this.internalLockProfile(profile);
        IProfile savedParent = profile.getParentProfile();
        try {
            profile.setParent(null);
        }
        finally {
            this.internalUnlockProfile(profile);
            if (savedParent != null) {
                this.internalUnlockProfile(savedParent);
            }
        }
        profileMap.remove(profileId);
        this.profileLocks.remove(profileId);
        this.deleteProfile(profileId);
        this.broadcastChangeEvent(profileId, 1);
    }

    @Override
    public synchronized void removeProfile(String id, long timestamp) throws ProvisionException {
        IProfile profile;
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        if (this.profiles != null && (profile = this.getProfile(id)) != null && profile.getTimestamp() == timestamp) {
            throw new ProvisionException(Messages.SimpleProfileRegistry_CannotRemoveCurrentSnapshot);
        }
        File profileDirectory = this.getProfileFolder(id);
        if (!profileDirectory.isDirectory()) {
            return;
        }
        File profileFile = new File(profileDirectory, new StringBuffer(String.valueOf(Long.toString(timestamp))).append(PROFILE_GZ_EXT).toString());
        if (!profileFile.exists() && !(profileFile = new File(profileDirectory, new StringBuffer(String.valueOf(Long.toString(timestamp))).append(PROFILE_EXT).toString())).exists()) {
            return;
        }
        FileUtils.deleteAll((File)profileFile);
        this.removeProfileStateProperties(id, timestamp, null);
    }

    private void broadcastChangeEvent(String profileId, int reason) {
        if (this.eventBus != null) {
            this.eventBus.publishEvent((EventObject)new ProfileEvent(profileId, reason));
        }
    }

    /*
     * Unable to fully structure code
     */
    private Map<String, Profile> restore() {
        if (this.store == null || !this.store.isDirectory()) {
            throw new IllegalStateException(NLS.bind((String)Messages.reg_dir_not_available, (Object)this.store));
        }
        parser = new Parser(EngineActivator.getContext(), "org.eclipse.equinox.p2.engine");
        profileDirectories = this.store.listFiles(new FileFilter(){

            public boolean accept(File pathname) {
                return pathname.getName().endsWith(SimpleProfileRegistry.PROFILE_EXT) && pathname.isDirectory();
            }
        });
        if (profileDirectories == null) {
            parser.getProfileMap();
        }
        i = 0;
        while (i < profileDirectories.length) {
            directoryName = profileDirectories[i].getName();
            profileId = SimpleProfileRegistry.unescape(directoryName.substring(0, directoryName.lastIndexOf(".profile")));
            lock = this.profileLocks.get(profileId);
            if (lock == null) {
                lock = new ProfileLock(this, profileDirectories[i]);
                this.profileLocks.put(profileId, lock);
            }
            locked = false;
            if (lock.processHoldsLock() || (locked = lock.lock())) {
                try {
                    profileFile = this.findLatestProfileFile(profileDirectories[i]);
                    if (profileFile == null) ** GOTO lbl33
                    try {
                        parser.parse(profileFile);
                    }
                    catch (IOException e) {
                        LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.error_parsing_profile, (Object)profileFile), (Throwable)e));
                    }
                }
                finally {
                    if (locked) {
                        lock.unlock();
                    }
                }
            } else {
                parser.addProfilePlaceHolder(profileId);
            }
lbl33:
            // 4 sources

            ++i;
        }
        return parser.getProfileMap();
    }

    private File findLatestProfileFile(File profileDirectory) {
        File latest = null;
        long latestTimestamp = 0L;
        File[] profileFiles = profileDirectory.listFiles(new FileFilter(){

            public boolean accept(File pathname) {
                return (pathname.getName().endsWith(SimpleProfileRegistry.PROFILE_GZ_EXT) || pathname.getName().endsWith(SimpleProfileRegistry.PROFILE_EXT)) && !pathname.isDirectory();
            }
        });
        if (profileFiles == null) {
            return null;
        }
        int i = 0;
        while (i < profileFiles.length) {
            File profileFile = profileFiles[i];
            String fileName = profileFile.getName();
            try {
                long timestamp = Long.parseLong(fileName.substring(0, fileName.indexOf(PROFILE_EXT)));
                if (timestamp > latestTimestamp) {
                    latestTimestamp = timestamp;
                    latest = profileFile;
                }
            }
            catch (NumberFormatException numberFormatException) {}
            ++i;
        }
        return latest;
    }

    private void saveProfile(Profile profile) {
        block16: {
            File profileDirectory = this.getProfileFolder(profile.getProfileId());
            profileDirectory.mkdir();
            long previousTimestamp = profile.getTimestamp();
            long currentTimestamp = System.currentTimeMillis();
            if (currentTimestamp <= previousTimestamp) {
                currentTimestamp = previousTimestamp + 1L;
            }
            boolean shouldGzipFile = this.shouldGzipFile(profile);
            File profileFile = new File(profileDirectory, new StringBuffer(String.valueOf(Long.toString(currentTimestamp))).append(shouldGzipFile ? PROFILE_GZ_EXT : PROFILE_EXT).toString());
            if (DebugHelper.DEBUG_PROFILE_REGISTRY) {
                DebugHelper.debug(PROFILE_REGISTRY, new StringBuffer("Saving profile to: ").append(profileFile.getAbsolutePath()).toString());
            }
            profile.setTimestamp(currentTimestamp);
            profile.setChanged(false);
            OutputStream os = null;
            try {
                try {
                    os = shouldGzipFile ? new BufferedOutputStream(new GZIPOutputStream(new FileOutputStream(profileFile))) : new BufferedOutputStream(new FileOutputStream(profileFile));
                    Writer writer = new Writer(os);
                    writer.writeProfile(profile);
                }
                catch (IOException e) {
                    profile.setTimestamp(previousTimestamp);
                    profileFile.delete();
                    LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.error_persisting_profile, (Object)profile.getProfileId()), (Throwable)e));
                    try {
                        if (os != null) {
                            os.close();
                        }
                        break block16;
                    }
                    catch (IOException iOException) {}
                    break block16;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (os != null) {
                        os.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (os != null) {
                    os.close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    public void setEventBus(IProvisioningEventBus bus) {
        this.eventBus = bus;
    }

    private boolean shouldGzipFile(Profile profile) {
        String format = EngineActivator.getContext().getProperty("eclipse.p2.profileFormat");
        if (format != null && format.equals("uncompressed")) {
            return false;
        }
        return profile.available((IQuery<IInstallableUnit>)QueryUtil.createIUQuery((String)"org.eclipse.equinox.p2.engine", (VersionRange)new VersionRange("[0.0.0, 1.0.101)")), null).isEmpty();
    }

    private void deleteProfile(String profileId) {
        File profileDirectory = this.getProfileFolder(profileId);
        FileUtils.deleteAll((File)profileDirectory);
    }

    public static String escape(String toEscape) {
        StringBuffer buffer = new StringBuffer();
        int length = toEscape.length();
        int i = 0;
        while (i < length) {
            char ch = toEscape.charAt(i);
            switch (ch) {
                case '\"': 
                case '%': 
                case '*': 
                case '/': 
                case ':': 
                case '<': 
                case '>': 
                case '?': 
                case '\\': 
                case '|': {
                    buffer.append(new StringBuffer("%").append((int)ch).append(";").toString());
                    break;
                }
                default: {
                    buffer.append(ch);
                }
            }
            ++i;
        }
        return buffer.toString();
    }

    public static String unescape(String text) {
        if (text.indexOf(37) == -1) {
            return text;
        }
        StringBuffer buffer = new StringBuffer();
        int length = text.length();
        int i = 0;
        while (i < length) {
            char ch = text.charAt(i);
            if (ch == '%') {
                int colon = text.indexOf(59, i);
                if (colon == -1) {
                    throw new IllegalStateException(new StringBuffer("error unescaping the sequence at character (").append(i).append(") for ").append(text).append(". Expected %{int};.").toString());
                }
                ch = (char)Integer.parseInt(text.substring(i + 1, colon));
                i = colon;
            }
            buffer.append(ch);
            ++i;
        }
        return buffer.toString();
    }

    @Override
    public synchronized boolean isCurrent(IProfile profile) {
        Profile internalProfile = this.internalGetProfile(profile.getProfileId());
        if (internalProfile == null) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.profile_not_registered, (Object)profile.getProfileId()));
        }
        if (!this.internalLockProfile(internalProfile)) {
            throw new IllegalStateException(Messages.SimpleProfileRegistry_Profile_in_use);
        }
        try {
            boolean bl = !((Profile)profile).isChanged() && this.checkTimestamps(profile, internalProfile);
            return bl;
        }
        finally {
            this.internalUnlockProfile(internalProfile);
        }
    }

    public synchronized void lockProfile(Profile profile) {
        Profile internalProfile = this.internalGetProfile(profile.getProfileId());
        if (internalProfile == null) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.profile_not_registered, (Object)profile.getProfileId()));
        }
        if (!this.internalLockProfile(internalProfile)) {
            throw new IllegalStateException(Messages.SimpleProfileRegistry_Profile_in_use);
        }
        boolean isCurrent = false;
        try {
            if (profile.isChanged()) {
                if (DebugHelper.DEBUG_PROFILE_REGISTRY) {
                    DebugHelper.debug(PROFILE_REGISTRY, "Profile is marked as changed.");
                }
                throw new IllegalStateException(NLS.bind((String)Messages.profile_changed, (Object)profile.getProfileId()));
            }
            if (!this.checkTimestamps(profile, internalProfile)) {
                if (DebugHelper.DEBUG_PROFILE_REGISTRY) {
                    DebugHelper.debug(PROFILE_REGISTRY, "Unexpected timestamp difference in profile.");
                }
                throw new IllegalStateException(NLS.bind((String)Messages.profile_not_current, (Object[])new String[]{profile.getProfileId(), Long.toString(internalProfile.getTimestamp()), Long.toString(profile.getTimestamp())}));
            }
            isCurrent = true;
        }
        finally {
            if (!isCurrent) {
                this.internalUnlockProfile(internalProfile);
            }
        }
    }

    private boolean internalLockProfile(IProfile profile) {
        ProfileLock lock = this.profileLocks.get(profile.getProfileId());
        if (lock == null) {
            lock = new ProfileLock(this, this.getProfileFolder(profile.getProfileId()));
            this.profileLocks.put(profile.getProfileId(), lock);
        }
        return lock.lock();
    }

    private boolean checkTimestamps(IProfile profile, IProfile internalProfile) {
        long currentTimestamp;
        long[] timestamps = this.listProfileTimestamps(profile.getProfileId());
        if (timestamps.length == 0) {
            if (DebugHelper.DEBUG_PROFILE_REGISTRY) {
                DebugHelper.debug(PROFILE_REGISTRY, new StringBuffer("check timestamp: expected ").append(profile.getTimestamp()).append(" but no profiles were found").toString());
            }
            this.resetProfiles();
            return false;
        }
        long l = currentTimestamp = timestamps.length == 0 ? -1L : timestamps[timestamps.length - 1];
        if (profile.getTimestamp() != currentTimestamp) {
            if (DebugHelper.DEBUG_PROFILE_REGISTRY) {
                DebugHelper.debug(PROFILE_REGISTRY, new StringBuffer("check timestamp: expected ").append(profile.getTimestamp()).append(" but was ").append(currentTimestamp).toString());
            }
            if (internalProfile.getTimestamp() != currentTimestamp) {
                this.resetProfiles();
            }
            return false;
        }
        return true;
    }

    @Override
    public synchronized boolean containsProfile(String id) {
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        if (id == null) {
            return false;
        }
        if (this.profiles != null && this.getProfile(id) != null) {
            return true;
        }
        File profileDirectory = this.getProfileFolder(id);
        if (!profileDirectory.isDirectory()) {
            return false;
        }
        File[] profileFiles = profileDirectory.listFiles(new FileFilter(){

            public boolean accept(File pathname) {
                return (pathname.getName().endsWith(SimpleProfileRegistry.PROFILE_GZ_EXT) || pathname.getName().endsWith(SimpleProfileRegistry.PROFILE_EXT)) && pathname.isFile();
            }
        });
        return profileFiles.length > 0;
    }

    public synchronized void resetProfiles() {
        this.profiles = null;
    }

    public synchronized void unlockProfile(IProfile profile) {
        Profile internalProfile = this.internalGetProfile(profile.getProfileId());
        if (internalProfile == null) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.profile_not_registered, (Object)profile.getProfileId()));
        }
        this.internalUnlockProfile(internalProfile);
    }

    private void internalUnlockProfile(IProfile profile) {
        ProfileLock lock = this.profileLocks.get(profile.getProfileId());
        lock.unlock();
    }

    public Profile validate(IProfile candidate) {
        if (candidate instanceof Profile) {
            return (Profile)candidate;
        }
        StringBuffer stringBuffer = new StringBuffer("Profile incompatible: expected ");
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.internal.p2.engine.Profile");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        throw new IllegalArgumentException(stringBuffer.append(clazz.getName()).append(" but was ").append(candidate != null ? candidate.getClass().getName() : "null").append(".").toString());
    }

    public synchronized File getProfileDataDirectory(String id) {
        File profileDirectory;
        File profileDataArea;
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        if (!(profileDataArea = new File(profileDirectory = this.getProfileFolder(id), DATA_EXT)).isDirectory() && !profileDataArea.mkdir()) {
            throw new IllegalStateException(new StringBuffer("Could not create profile data area ").append(profileDataArea.getAbsolutePath()).append("for: ").append(id).toString());
        }
        return profileDataArea;
    }

    public void start() {
    }

    public void stop() {
        try {
            Job.getJobManager().join(ProfilePreferences.PROFILE_SAVE_JOB_FAMILY, null);
        }
        catch (InterruptedException interruptedException) {}
    }

    private File getProfileFolder(String id) {
        return new File(this.store, new StringBuffer(String.valueOf(SimpleProfileRegistry.escape(id))).append(PROFILE_EXT).toString());
    }

    private Properties readStateProperties(String id) throws ProvisionException {
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        if (this.lastAccessedProperties != null && id.equals(this.lastAccessedProperties.getId()) && this.lastAccessedProperties.isCurrent()) {
            return this.lastAccessedProperties.getProperties();
        }
        File profileDirectory = this.getProfileFolder(id);
        if (!profileDirectory.isDirectory()) {
            throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.SimpleProfileRegistry_Bad_profile_location, (Object)profileDirectory.getPath())));
        }
        File file = new File(profileDirectory, PROFILE_PROPERTIES_FILE);
        Properties properties = new Properties();
        if (!file.exists()) {
            return properties;
        }
        InputStream input = null;
        try {
            try {
                input = new BufferedInputStream(new FileInputStream(file));
                properties.load(input);
            }
            catch (IOException e) {
                throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", Messages.SimpleProfileRegistry_States_Error_Reading_File, (Throwable)e));
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
        this.lastAccessedProperties = new ProfileStateProperties(id, file, properties);
        return properties;
    }

    private IStatus writeStateProperties(String id, Properties properties) {
        if ("_SELF_".equals(id)) {
            id = this.self;
        }
        File profileDirectory = this.getProfileFolder(id);
        File file = new File(profileDirectory, PROFILE_PROPERTIES_FILE);
        OutputStream output = null;
        Properties prunedProperties = properties;
        try {
            try {
                output = new BufferedOutputStream(new FileOutputStream(file));
                prunedProperties = this.pruneStateProperties(id, properties);
                prunedProperties.store(output, null);
                output.flush();
            }
            catch (IOException e) {
                Status status = new Status(4, "org.eclipse.equinox.p2.engine", Messages.SimpleProfileRegistry_States_Error_Writing_File, (Throwable)e);
                try {
                    if (output != null) {
                        output.close();
                    }
                }
                catch (IOException iOException) {}
                return status;
            }
        }
        catch (Throwable throwable) {
            try {
                if (output != null) {
                    output.close();
                }
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            if (output != null) {
                output.close();
            }
        }
        catch (IOException iOException) {}
        this.lastAccessedProperties = new ProfileStateProperties(id, file, prunedProperties);
        return Status.OK_STATUS;
    }

    private Properties pruneStateProperties(String id, Properties properties) {
        Properties result = new Properties();
        long[] timestamps = this.listProfileTimestamps(id);
        HashSet<String> timestampsSet = new HashSet<String>(timestamps.length);
        int i = 0;
        while (i < timestamps.length) {
            timestampsSet.add(String.valueOf(timestamps[i]));
            ++i;
        }
        Enumeration keys = properties.keys();
        while (keys.hasMoreElements()) {
            String timestamp;
            String key = (String)keys.nextElement();
            int index = key.indexOf(46);
            if (index <= -1 || !timestampsSet.contains(timestamp = key.substring(0, index))) continue;
            result.put(key, properties.get(key));
        }
        return result;
    }

    private IStatus validateState(String id, long timestamp) {
        long[] states;
        long[] lArray = states = this.listProfileTimestamps(id);
        int n = states.length;
        int n2 = 0;
        while (n2 < n) {
            long ts = lArray[n2];
            if (ts == timestamp) {
                return Status.OK_STATUS;
            }
            ++n2;
        }
        return new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.SimpleProfileRegistry_state_not_found, (Object)new Long(timestamp), (Object)id));
    }

    @Override
    public IStatus setProfileStateProperties(String id, long timestamp, Map<String, String> propertiesToAdd) {
        if (id == null || propertiesToAdd == null) {
            throw new NullPointerException();
        }
        IStatus result = this.validateState(id, timestamp);
        if (!result.isOK()) {
            return result;
        }
        Profile internalProfile = this.internalGetProfile(id);
        this.lockProfile(internalProfile);
        try {
            try {
                Properties properties = this.readStateProperties(id);
                for (Map.Entry<String, String> entry : propertiesToAdd.entrySet()) {
                    properties.put(new StringBuffer(String.valueOf(timestamp)).append(".").append(entry.getKey()).toString(), entry.getValue());
                }
                this.writeStateProperties(id, properties);
            }
            catch (ProvisionException e) {
                IStatus iStatus = e.getStatus();
                this.unlockProfile(internalProfile);
                return iStatus;
            }
        }
        finally {
            this.unlockProfile(internalProfile);
        }
        return Status.OK_STATUS;
    }

    @Override
    public IStatus setProfileStateProperty(String id, long timestamp, String key, String value) {
        if (id == null || key == null || value == null) {
            throw new NullPointerException();
        }
        HashMap<String, String> properties = new HashMap<String, String>();
        properties.put(key, value);
        return this.setProfileStateProperties(id, timestamp, properties);
    }

    @Override
    public Map<String, String> getProfileStateProperties(String id, long timestamp) {
        if (id == null) {
            throw new NullPointerException();
        }
        HashMap<String, String> result = new HashMap<String, String>();
        String timestampString = String.valueOf(timestamp);
        int keyOffset = timestampString.length() + 1;
        Profile internalProfile = this.internalGetProfile(id);
        this.lockProfile(internalProfile);
        try {
            try {
                Properties properties = this.readStateProperties(id);
                for (String key : properties.keySet()) {
                    if (key.indexOf(timestampString) != 0) continue;
                    result.put(key.substring(keyOffset), properties.getProperty(key));
                }
            }
            catch (ProvisionException e) {
                LogHelper.log((ProvisionException)e);
                this.unlockProfile(internalProfile);
            }
        }
        finally {
            this.unlockProfile(internalProfile);
        }
        return result;
    }

    @Override
    public Map<String, String> getProfileStateProperties(String id, String userKey) {
        if (id == null || userKey == null) {
            throw new NullPointerException();
        }
        HashMap<String, String> result = new HashMap<String, String>();
        Profile internalProfile = this.internalGetProfile(id);
        this.lockProfile(internalProfile);
        try {
            try {
                Properties properties = this.readStateProperties(id);
                for (String key : properties.keySet()) {
                    int index = key.indexOf(46);
                    if (index == -1 || index + 1 == key.length() || !key.substring(index + 1).equals(userKey)) continue;
                    result.put(key.substring(0, index), properties.getProperty(key));
                }
            }
            catch (ProvisionException e) {
                LogHelper.log((ProvisionException)e);
                this.unlockProfile(internalProfile);
            }
        }
        finally {
            this.unlockProfile(internalProfile);
        }
        return result;
    }

    @Override
    public IStatus removeProfileStateProperties(String id, long timestamp, Collection<String> keys) {
        if (id == null) {
            throw new NullPointerException();
        }
        if (keys != null && keys.size() == 0) {
            return Status.OK_STATUS;
        }
        Profile internalProfile = this.internalGetProfile(id);
        this.lockProfile(internalProfile);
        try {
            try {
                Properties properties = this.readStateProperties(id);
                String timestampString = String.valueOf(timestamp);
                if (keys == null) {
                    Iterator already = properties.keySet().iterator();
                    while (already.hasNext()) {
                        String key = (String)already.next();
                        if (key.indexOf(timestampString) != 0) continue;
                        already.remove();
                    }
                } else {
                    for (String key : keys) {
                        if (key == null) continue;
                        properties.remove(new StringBuffer(String.valueOf(timestampString)).append(".").append(key).toString());
                    }
                }
                this.writeStateProperties(id, properties);
            }
            catch (ProvisionException e) {
                IStatus iStatus = e.getStatus();
                this.unlockProfile(internalProfile);
                return iStatus;
            }
        }
        finally {
            this.unlockProfile(internalProfile);
        }
        return Status.OK_STATUS;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class Parser
    extends ProfileParser {
        private final Map<String, ProfileParser.ProfileHandler> profileHandlers;

        public Parser(BundleContext context, String bundleId) {
            super(context, bundleId);
            this.profileHandlers = new HashMap<String, ProfileParser.ProfileHandler>();
        }

        public void addProfilePlaceHolder(String profileId) {
            this.profileHandlers.put(profileId, new ProfileParser.ProfileHandler(profileId));
        }

        public void parse(File file) throws IOException {
            BufferedInputStream is = file.getName().endsWith(SimpleProfileRegistry.PROFILE_GZ_EXT) ? new BufferedInputStream(new GZIPInputStream(new FileInputStream(file))) : new BufferedInputStream(new FileInputStream(file));
            this.parse(is);
        }

        public synchronized void parse(InputStream stream) throws IOException {
            this.status = null;
            try {
                try {
                    this.getParser();
                    ProfileParser.ProfileHandler profileHandler = new ProfileParser.ProfileHandler();
                    this.xmlReader.setContentHandler((ContentHandler)((Object)new ProfileDocHandler("profile", profileHandler)));
                    this.xmlReader.parse(new InputSource(stream));
                    this.profileHandlers.put(profileHandler.getProfileId(), profileHandler);
                }
                catch (SAXException e) {
                    throw new IOException(e.getMessage());
                }
                catch (ParserConfigurationException e) {
                    throw new IOException(e.getMessage());
                }
            }
            finally {
                stream.close();
            }
        }

        protected Object getRootObject() {
            return this;
        }

        public Map<String, Profile> getProfileMap() {
            HashMap<String, Profile> profileMap = new HashMap<String, Profile>();
            for (String profileId : this.profileHandlers.keySet()) {
                this.addProfile(profileId, profileMap);
            }
            return profileMap;
        }

        private void addProfile(String profileId, Map<String, Profile> profileMap) {
            if (profileMap.containsKey(profileId)) {
                return;
            }
            ProfileParser.ProfileHandler profileHandler = this.profileHandlers.get(profileId);
            Profile parentProfile = null;
            String parentId = profileHandler.getParentId();
            if (parentId != null) {
                this.addProfile(parentId, profileMap);
                parentProfile = profileMap.get(parentId);
            }
            Profile profile = new Profile(SimpleProfileRegistry.this.agent, profileId, parentProfile, profileHandler.getProperties());
            if (SimpleProfileRegistry.this.surrogateProfileHandler != null && SimpleProfileRegistry.this.surrogateProfileHandler.isSurrogate(profile)) {
                profile.setSurrogateProfileHandler(SimpleProfileRegistry.this.surrogateProfileHandler);
            }
            profile.setTimestamp(profileHandler.getTimestamp());
            IInstallableUnit[] ius = profileHandler.getInstallableUnits();
            if (ius != null) {
                int i = 0;
                while (i < ius.length) {
                    IInstallableUnit iu = ius[i];
                    profile.addInstallableUnit(iu);
                    Map<String, String> iuProperties = profileHandler.getIUProperties(iu);
                    if (iuProperties != null) {
                        for (Map.Entry<String, String> entry : iuProperties.entrySet()) {
                            profile.setInstallableUnitProperty(iu, entry.getKey(), entry.getValue());
                        }
                    }
                    ++i;
                }
            }
            profile.setChanged(false);
            profileMap.put(profileId, profile);
        }

        protected String getErrorMessage() {
            return Messages.SimpleProfileRegistry_Parser_Error_Parsing_Registry;
        }

        public String toString() {
            return null;
        }

        private final class ProfileDocHandler
        extends XMLParser.DocHandler {
            public ProfileDocHandler(String rootName, XMLParser.RootHandler rootHandler) {
                super((XMLParser)Parser.this, rootName, rootHandler);
            }

            public void processingInstruction(String target, String data) throws SAXException {
                Version repositoryVersion;
                if ("profile".equals(target) && !ProfileXMLConstants.XML_TOLERANCE.isIncluded(repositoryVersion = Parser.this.extractPIVersion(target, data))) {
                    throw new SAXException(NLS.bind((String)Messages.SimpleProfileRegistry_Parser_Has_Incompatible_Version, (Object)repositoryVersion, (Object)ProfileXMLConstants.XML_TOLERANCE));
                }
            }
        }
    }

    class ProfileStateProperties {
        private String id;
        private File file;
        private long timestamp;
        private Properties properties;

        ProfileStateProperties(String id, File file, Properties properties) {
            this.id = id;
            this.file = file;
            this.properties = properties;
            this.timestamp = file.lastModified();
        }

        boolean isCurrent() {
            return this.file.lastModified() == this.timestamp;
        }

        String getId() {
            return this.id;
        }

        Properties getProperties() {
            return this.properties;
        }
    }

    static class Writer
    extends ProfileWriter {
        public Writer(OutputStream output) throws IOException {
            super(output, new XMLWriter.ProcessingInstruction[]{XMLWriter.ProcessingInstruction.makeTargetVersionInstruction((String)"profile", (Version)ProfileXMLConstants.CURRENT_VERSION)});
        }
    }
}

