/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.ProvisioningListener
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.core.spi.IAgentService
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.security.storage.EncodingUtils
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.equinox.internal.p2.repository.helpers;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EventObject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.repository.Activator;
import org.eclipse.equinox.internal.p2.repository.Transport;
import org.eclipse.equinox.internal.p2.repository.helpers.LocationProperties;
import org.eclipse.equinox.internal.p2.repository.helpers.Messages;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.ProvisioningListener;
import org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.core.spi.IAgentService;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.IRepository;
import org.eclipse.equinox.p2.repository.IRepositoryManager;
import org.eclipse.equinox.security.storage.EncodingUtils;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractRepositoryManager<T>
implements IRepositoryManager<T>,
IAgentService,
ProvisioningListener {
    public static final String ATTR_SUFFIX = "suffix";
    public static final String EL_FACTORY = "factory";
    public static final String EL_FILTER = "filter";
    public static final String KEY_DESCRIPTION = "description";
    public static final String KEY_ENABLED = "enabled";
    public static final String KEY_NAME = "name";
    public static final String KEY_NICKNAME = "nickname";
    public static final String KEY_PROVIDER = "provider";
    public static final String KEY_SUFFIX = "suffix";
    public static final String KEY_SYSTEM = "isSystem";
    public static final String KEY_TYPE = "type";
    public static final String KEY_URI = "uri";
    public static final String KEY_URL = "url";
    public static final String KEY_VERSION = "version";
    public static final String NODE_REPOSITORIES = "repositories";
    private static final String INDEX_FILE = "p2.index";
    protected Map<String, RepositoryInfo<T>> repositories = null;
    protected final Object repositoryLock = new Object();
    protected SoftReference<List<URI>> unavailableRepositories;
    private final Map<URI, Thread> loadLocks = new HashMap<URI, Thread>();
    private final IAgentLocation agentLocation;
    protected final IProvisioningEventBus eventBus;
    protected final IProvisioningAgent agent;
    static /* synthetic */ Class class$0;

    protected AbstractRepositoryManager(IProvisioningAgent agent) {
        this.agent = agent;
        this.agentLocation = (IAgentLocation)agent.getService(IAgentLocation.SERVICE_NAME);
        this.eventBus = (IProvisioningEventBus)agent.getService(IProvisioningEventBus.SERVICE_NAME);
        this.eventBus.addListener((ProvisioningListener)this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void addRepository(IRepository<T> repository, boolean signalAdd, String suffix) {
        boolean added = false;
        Object object = this.repositoryLock;
        synchronized (object) {
            String key;
            RepositoryInfo<Object> info;
            if (this.repositories == null) {
                this.restoreRepositories();
            }
            if ((info = this.repositories.get(key = this.getKey(repository.getLocation()))) == null) {
                info = new RepositoryInfo();
                added = true;
                this.repositories.put(key, info);
            }
            info.repository = new SoftReference<IRepository<T>>(repository);
            info.name = repository.getName();
            info.description = repository.getDescription();
            info.location = repository.getLocation();
            String value = repository.getProperties().get("p2.system");
            if (value != null) {
                info.isSystem = Boolean.valueOf(value);
            }
            info.suffix = suffix;
        }
        this.remember(repository, suffix);
        if (added && signalAdd) {
            this.broadcastChangeEvent(repository.getLocation(), this.getRepositoryType(), 0, true);
        }
    }

    @Override
    public void addRepository(URI location) {
        this.checkValidLocation(location);
        if (!this.addRepository(location, true, true)) {
            this.setEnabled(location, true);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private boolean addRepository(URI location, boolean isEnabled, boolean signalAdd) {
        RepositoryInfo info = new RepositoryInfo();
        info.location = location;
        info.isEnabled = isEnabled;
        boolean added = true;
        Object object = this.repositoryLock;
        synchronized (object) {
            block6: {
                if (this.repositories == null) {
                    this.restoreRepositories();
                }
                if (!this.contains(location)) break block6;
                return false;
            }
            added = this.repositories.put(this.getKey(location), info) == null;
            this.remember(info, true);
        }
        if (added && signalAdd) {
            this.broadcastChangeEvent(location, this.getRepositoryType(), 0, isEnabled);
        }
        return added;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected IRepository<T> basicGetRepository(URI location) {
        this.checkValidLocation(location);
        Object object = this.repositoryLock;
        synchronized (object) {
            RepositoryInfo<T> info;
            block6: {
                if (this.repositories == null) {
                    this.restoreRepositories();
                }
                if ((info = this.repositories.get(this.getKey(location))) != null && info.repository != null) break block6;
                return null;
            }
            IRepository repo = info.repository.get();
            if (repo != null) {
                this.addRepository(repo, false, info.suffix);
            }
            return repo;
        }
    }

    public IRepository<T> basicRefreshRepository(URI location, IProgressMonitor monitor) throws ProvisionException {
        this.checkValidLocation(location);
        this.clearNotFound(location);
        boolean wasEnabled = this.isEnabled(location);
        String nick = this.getRepositoryProperty(location, "p2.nickname");
        if (!this.removeRepository(location)) {
            this.fail(location, 1000);
        }
        boolean loaded = false;
        try {
            IRepository<T> result = this.loadRepository(location, monitor, null, 0);
            loaded = true;
            this.setEnabled(location, wasEnabled);
            IRepository<T> iRepository = result;
            return iRepository;
        }
        finally {
            if (!loaded) {
                this.addRepository(location, wasEnabled, true);
            }
            if (nick != null) {
                this.setRepositoryProperty(location, "p2.nickname", nick);
            }
        }
    }

    private void broadcastChangeEvent(URI location, int repositoryType, int kind, boolean isEnabled) {
        if (this.eventBus != null) {
            this.eventBus.publishEvent((EventObject)new RepositoryEvent(location, repositoryType, kind, isEnabled));
        }
    }

    private boolean checkNotFound(URI location) {
        if (this.unavailableRepositories == null) {
            return false;
        }
        List<URI> badRepos = this.unavailableRepositories.get();
        if (badRepos == null) {
            return false;
        }
        return badRepos.contains(location);
    }

    private void clearNotFound(URI location) {
        List<URI> badRepos;
        if (this.unavailableRepositories != null && (badRepos = this.unavailableRepositories.get()) != null) {
            badRepos.remove(location);
            return;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean contains(URI location) {
        this.checkValidLocation(location);
        Object object = this.repositoryLock;
        synchronized (object) {
            if (this.repositories == null) {
                this.restoreRepositories();
            }
            return this.repositories.containsKey(this.getKey(location));
        }
    }

    protected IRepository<T> doCreateRepository(URI location, String name, String type, Map<String, String> properties) throws ProvisionException {
        this.checkValidLocation(location);
        Assert.isNotNull((Object)name);
        Assert.isNotNull((Object)type);
        IRepository<T> result = null;
        try {
            IExtension extension;
            this.enterLoad(location, (IProgressMonitor)new NullProgressMonitor());
            boolean loaded = false;
            try {
                this.loadRepository(location, null, type, 0);
                loaded = true;
            }
            catch (ProvisionException provisionException) {}
            if (loaded) {
                this.fail(location, 1001);
            }
            if ((extension = RegistryFactory.getRegistry().getExtension(this.getRepositoryProviderExtensionPointId(), type)) == null) {
                this.fail(location, 1005);
            }
            if ((result = this.factoryCreate(location, name, type, properties, extension)) == null) {
                this.fail(location, 1002);
            }
            this.clearNotFound(location);
            this.addRepository(result, false, null);
        }
        finally {
            this.exitLoad(location);
        }
        this.broadcastChangeEvent(location, this.getRepositoryType(), 0, true);
        return result;
    }

    protected Object createExecutableExtension(IExtension extension, String element) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            if (elements[i].getName().equals(element)) {
                try {
                    return elements[i].createExecutableExtension("class");
                }
                catch (CoreException e) {
                    this.log(new StringBuffer("Error loading repository extension: ").append(extension.getUniqueIdentifier()).toString(), e);
                    return null;
                }
            }
            ++i;
        }
        this.log(new StringBuffer("Malformed repository extension: ").append(extension.getUniqueIdentifier()).toString(), null);
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void enterLoad(URI location, IProgressMonitor monitor) {
        Thread current = Thread.currentThread();
        Map<URI, Thread> map = this.loadLocks;
        synchronized (map) {
            Thread owner;
            while ((owner = this.loadLocks.get(location)) != null && !current.equals(owner)) {
                if (monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                try {
                    this.loadLocks.wait(1000L);
                }
                catch (InterruptedException interruptedException) {}
            }
            this.loadLocks.put(location, current);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void exitLoad(URI location) {
        Map<URI, Thread> map = this.loadLocks;
        synchronized (map) {
            this.loadLocks.remove(location);
            this.loadLocks.notifyAll();
        }
    }

    protected abstract IRepository<T> factoryCreate(URI var1, String var2, String var3, Map<String, String> var4, IExtension var5) throws ProvisionException;

    protected abstract IRepository<T> factoryLoad(URI var1, IExtension var2, int var3, SubMonitor var4) throws ProvisionException;

    private void fail(URI location, int code) throws ProvisionException {
        String msg = null;
        switch (code) {
            case 1001: {
                msg = NLS.bind((String)Messages.repoMan_exists, (Object)location);
                break;
            }
            case 1005: {
                msg = NLS.bind((String)Messages.repoMan_unknownType, (Object)location);
                break;
            }
            case 1002: {
                msg = NLS.bind((String)Messages.repoMan_failedRead, (Object)location);
                break;
            }
            case 1000: {
                msg = NLS.bind((String)Messages.repoMan_notExists, (Object)location);
                break;
            }
            case 1007: {
                msg = NLS.bind((String)Messages.repoManAuthenticationFailedFor_0, (Object)location);
            }
        }
        if (msg == null) {
            msg = Messages.repoMan_internalError;
        }
        throw new ProvisionException((IStatus)new Status(4, this.getBundleId(), code, msg, null));
    }

    protected IExtension[] findMatchingRepositoryExtensions(String suffix, String type) {
        IExtension ext;
        IConfigurationElement[] elt = null;
        elt = type != null && type.length() > 0 ? ((ext = RegistryFactory.getRegistry().getExtension(this.getRepositoryProviderExtensionPointId(), type)) != null ? ext.getConfigurationElements() : new IConfigurationElement[]{}) : RegistryFactory.getRegistry().getConfigurationElementsFor(this.getRepositoryProviderExtensionPointId());
        int count = 0;
        int i = 0;
        while (i < elt.length) {
            if (EL_FILTER.equals(elt[i].getName())) {
                if (!suffix.equals(elt[i].getAttribute("suffix"))) {
                    elt[i] = null;
                } else {
                    ++count;
                }
            } else {
                elt[i] = null;
            }
            ++i;
        }
        IExtension[] results = new IExtension[count];
        int i2 = 0;
        while (i2 < elt.length) {
            if (elt[i2] != null) {
                results[--count] = elt[i2].getDeclaringExtension();
            }
            ++i2;
        }
        return results;
    }

    protected String[] getAllSuffixes() {
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        if (registry == null) {
            this.log("Extension registry not found", new RuntimeException());
            return new String[0];
        }
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(this.getRepositoryProviderExtensionPointId());
        ArrayList<String> result = new ArrayList<String>(elements.length);
        result.add(this.getDefaultSuffix());
        int i = 0;
        while (i < elements.length) {
            String suffix;
            if (elements[i].getName().equals(EL_FILTER) && !result.contains(suffix = elements[i].getAttribute("suffix"))) {
                result.add(suffix);
            }
            ++i;
        }
        return result.toArray(new String[result.size()]);
    }

    protected abstract String getBundleId();

    protected abstract String getDefaultSuffix();

    private String getKey(URI location) {
        String key = location.toString().replace('/', '_');
        if (key.endsWith("_")) {
            key = key.substring(0, key.length() - 1);
        }
        return key;
    }

    @Override
    public IProvisioningAgent getAgent() {
        return this.agent;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public URI[] getKnownRepositories(int flags) {
        Object object = this.repositoryLock;
        synchronized (object) {
            if (this.repositories == null) {
                this.restoreRepositories();
            }
            ArrayList<URI> result = new ArrayList<URI>();
            for (RepositoryInfo<T> info : this.repositories.values()) {
                if (!this.matchesFlags(info, flags)) continue;
                result.add(info.location);
            }
            return result.toArray(new URI[result.size()]);
        }
    }

    Preferences getPreferences() {
        IPreferencesService prefService;
        if (this.agentLocation == null) {
            return null;
        }
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.preferences.IPreferencesService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((prefService = (IPreferencesService)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName())) == null) {
            return null;
        }
        try {
            String locationString = EncodingUtils.encodeSlashes((String)this.agentLocation.getRootLocation().toString());
            return prefService.getRootNode().node(new StringBuffer("/profile/").append(locationString).append("/_SELF_/").append(this.getBundleId()).append('/').append(NODE_REPOSITORIES).toString());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
    }

    private URI getRepositoryLocation(Preferences node) {
        URI result;
        String locationString = node.get(KEY_URI, null);
        try {
            if (locationString != null) {
                result = new URI(locationString);
                if (result.isAbsolute()) {
                    return result;
                }
                this.log(new StringBuffer("Invalid repository URI: ").append(locationString).toString(), new RuntimeException());
            }
        }
        catch (URISyntaxException e) {
            this.log(new StringBuffer("Error while restoring repository: ").append(locationString).toString(), e);
        }
        locationString = node.get(KEY_URL, null);
        try {
            if (locationString != null) {
                result = URIUtil.toURI((URL)new URL(locationString));
                if (result.isAbsolute()) {
                    return result;
                }
                this.log(new StringBuffer("Invalid repository URL: ").append(locationString).toString(), new RuntimeException());
            }
        }
        catch (MalformedURLException e) {
            this.log(new StringBuffer("Error while restoring repository: ").append(locationString).toString(), e);
        }
        catch (URISyntaxException e) {
            this.log(new StringBuffer("Error while restoring repository: ").append(locationString).toString(), e);
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getRepositoryProperty(URI location, String key) {
        this.checkValidLocation(location);
        Object object = this.repositoryLock;
        synchronized (object) {
            RepositoryInfo<T> info;
            block9: {
                if (this.repositories == null) {
                    this.restoreRepositories();
                }
                if ((info = this.repositories.get(this.getKey(location))) != null) break block9;
                return null;
            }
            if (KEY_DESCRIPTION.equals(key)) {
                return info.description;
            }
            if (KEY_NAME.equals(key)) {
                return info.name;
            }
            if ("p2.system".equals(key)) {
                return Boolean.toString(info.isSystem);
            }
            if ("p2.nickname".equals(key)) {
                return info.nickname;
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setRepositoryProperty(URI location, String key, String value) {
        this.checkValidLocation(location);
        Object object = this.repositoryLock;
        synchronized (object) {
            RepositoryInfo<T> info;
            if (this.repositories == null) {
                this.restoreRepositories();
            }
            if ((info = this.repositories.get(this.getKey(location))) == null) {
                return;
            }
            if (KEY_DESCRIPTION.equals(key)) {
                info.description = value;
            } else if (KEY_NAME.equals(key)) {
                info.name = value;
            } else if ("p2.nickname".equals(key)) {
                info.nickname = value;
            } else if ("p2.system".equals(key)) {
                info.isSystem = Boolean.valueOf(value);
            }
            this.remember(info, true);
        }
    }

    protected abstract String getRepositoryProviderExtensionPointId();

    protected abstract String getRepositorySystemProperty();

    protected abstract int getRepositoryType();

    protected abstract String[] getPreferredRepositorySearchOrder(LocationProperties var1);

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isEnabled(URI location) {
        Object object = this.repositoryLock;
        synchronized (object) {
            RepositoryInfo<T> info;
            if (this.repositories == null) {
                this.restoreRepositories();
            }
            if ((info = this.repositories.get(this.getKey(location))) != null) {
                return info.isEnabled;
            }
            return false;
        }
    }

    protected IRepository<T> loadRepository(URI location, IProgressMonitor monitor, String type, int flags) throws ProvisionException {
        this.checkValidLocation(location);
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)100);
        boolean added = false;
        IRepository<T> result = null;
        try {
            this.enterLoad(location, (IProgressMonitor)sub.newChild(5));
            result = this.basicGetRepository(location);
            if (result != null) {
                IRepository<T> iRepository = result;
                return iRepository;
            }
            if (this.checkNotFound(location)) {
                this.fail(location, 1000);
            }
            added = this.addRepository(location, true, false);
            LocationProperties indexFile = this.loadIndexFile(location, (IProgressMonitor)sub.newChild(15));
            String[] preferredOrder = this.getPreferredRepositorySearchOrder(indexFile);
            String[] suffixes = this.sortSuffixes(this.getAllSuffixes(), location, preferredOrder);
            sub = SubMonitor.convert((IProgressMonitor)sub, (String)NLS.bind((String)Messages.repoMan_adding, (Object)location), (int)(suffixes.length * 100));
            ProvisionException failure = null;
            try {
                int i = 0;
                while (i < suffixes.length) {
                    if (sub.isCanceled()) {
                        throw new OperationCanceledException();
                    }
                    try {
                        result = this.loadRepository(location, suffixes[i], type, flags, sub.newChild(100));
                    }
                    catch (ProvisionException e) {
                        failure = e;
                        break;
                    }
                    if (result != null) {
                        this.addRepository(result, false, suffixes[i]);
                        break;
                    }
                    ++i;
                }
            }
            finally {
                sub.done();
            }
            if (result == null) {
                if (added) {
                    this.removeRepository(location, false);
                }
                if (Boolean.valueOf(this.getRepositoryProperty(location, "p2.system")).booleanValue()) {
                    this.removeRepository(location);
                } else if (failure == null || failure.getStatus().getCode() != 1007 && failure.getStatus().getCode() != 1002) {
                    this.rememberNotFound(location);
                }
                if (failure != null) {
                    throw failure;
                }
                this.fail(location, 1000);
            }
        }
        finally {
            this.exitLoad(location);
        }
        if (added) {
            this.broadcastChangeEvent(location, this.getRepositoryType(), 0, true);
        }
        return result;
    }

    private LocationProperties loadIndexFile(URI location, IProgressMonitor monitor) {
        LocationProperties locationProperties = LocationProperties.createEmptyIndexFile();
        if ("memory".equals(location.getScheme())) {
            return locationProperties;
        }
        if ("file".equals(location.getScheme())) {
            InputStream localStream = null;
            try {
                try {
                    try {
                        File indexFile = URIUtil.toFile((URI)AbstractRepositoryManager.getIndexFileURI(location));
                        if (indexFile != null && indexFile.exists() && indexFile.canRead()) {
                            localStream = new FileInputStream(indexFile);
                            locationProperties = LocationProperties.create(localStream);
                        }
                    }
                    catch (URISyntaxException e) {
                        LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", e.getMessage(), (Throwable)e));
                        if (localStream != null) {
                            localStream.close();
                        }
                    }
                }
                finally {
                    if (localStream != null) {
                        localStream.close();
                    }
                }
            }
            catch (IOException iOException) {}
            return locationProperties;
        }
        ByteArrayOutputStream index = new ByteArrayOutputStream();
        IStatus indexFileStatus = null;
        try {
            indexFileStatus = this.getTransport().download(AbstractRepositoryManager.getIndexFileURI(location), index, monitor);
        }
        catch (URISyntaxException uriSyntaxException) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", uriSyntaxException.getMessage(), (Throwable)uriSyntaxException));
            indexFileStatus = null;
        }
        if (indexFileStatus != null && indexFileStatus.isOK()) {
            locationProperties = LocationProperties.create(new ByteArrayInputStream(index.toByteArray()));
        }
        return locationProperties;
    }

    private URI checkValidLocation(URI location) {
        if (location == null) {
            throw new IllegalArgumentException("Location cannot be null");
        }
        if (!location.isAbsolute()) {
            throw new IllegalArgumentException(new StringBuffer("Location must be absolute: ").append(location).toString());
        }
        return location;
    }

    private IRepository<T> loadRepository(URI location, String suffix, String type, int flags, SubMonitor monitor) throws ProvisionException {
        IExtension[] providers = this.findMatchingRepositoryExtensions(suffix, type);
        monitor.beginTask(null, providers.length * 10);
        int i = 0;
        while (i < providers.length) {
            try {
                IRepository<T> repo = this.factoryLoad(location, providers[i], flags, monitor);
                if (repo != null) {
                    return repo;
                }
            }
            catch (ProvisionException e) {
                if (e.getStatus().getCode() != 1000) {
                    throw e;
                }
            }
            catch (OperationCanceledException e) {
                throw e;
            }
            catch (Exception e) {
                this.log(new StringBuffer("Unexpected error loading extension: ").append(providers[i].getUniqueIdentifier()).toString(), e);
            }
            catch (LinkageError e) {
                this.log(new StringBuffer("Unexpected error loading extension: ").append(providers[i].getUniqueIdentifier()).toString(), e);
            }
            ++i;
        }
        return null;
    }

    protected void log(String message, Throwable t) {
        LogHelper.log((IStatus)new Status(4, this.getBundleId(), message, t));
    }

    private boolean matchesFlags(RepositoryInfo<T> info, int flags) {
        if ((flags & 1) == 1 && !info.isSystem) {
            return false;
        }
        if ((flags & 2) == 2 && info.isSystem) {
            return false;
        }
        if ((flags & 8) == 8 ? info.isEnabled : !info.isEnabled) {
            return false;
        }
        if ((flags & 4) == 4) {
            return "file".equals(info.location.getScheme()) || info.location.toString().startsWith("jar:file");
        }
        if ((flags & 0x10) == 16) {
            return !"file".equals(info.location.getScheme()) && !info.location.toString().startsWith("jar:file");
        }
        return true;
    }

    public void notify(EventObject o) {
        RepositoryEvent event;
        if (o instanceof RepositoryEvent && (event = (RepositoryEvent)o).getKind() == 4 && event.getRepositoryType() == this.getRepositoryType()) {
            this.addRepository(event.getRepositoryLocation(), event.isRepositoryEnabled(), true);
        }
    }

    protected boolean putValue(Preferences node, String key, String newValue) {
        String oldValue = node.get(key, null);
        if (oldValue == newValue || oldValue != null && oldValue.equals(newValue)) {
            return false;
        }
        if (newValue == null) {
            node.remove(key);
        } else {
            node.put(key, newValue);
        }
        return true;
    }

    private void remember(IRepository<T> repository, String suffix) {
        boolean changed = false;
        Preferences node = this.getPreferences();
        if (node == null) {
            return;
        }
        node = node.node(this.getKey(repository.getLocation()));
        try {
            changed |= this.putValue(node, KEY_URI, repository.getLocation().toString());
            changed |= this.putValue(node, KEY_URL, null);
            changed |= this.putValue(node, KEY_DESCRIPTION, repository.getDescription());
            changed |= this.putValue(node, KEY_NAME, repository.getName());
            changed |= this.putValue(node, KEY_PROVIDER, repository.getProvider());
            changed |= this.putValue(node, KEY_TYPE, repository.getType());
            changed |= this.putValue(node, KEY_VERSION, repository.getVersion());
            String value = repository.getProperties().get("p2.system");
            if (value != null) {
                changed |= this.putValue(node, KEY_SYSTEM, value);
            }
            if (changed |= this.putValue(node, "suffix", suffix)) {
                this.saveToPreferences();
            }
        }
        catch (IllegalStateException illegalStateException) {}
    }

    private boolean remember(RepositoryInfo<T> info, boolean flush) {
        boolean changed = false;
        Preferences node = this.getPreferences();
        if (node == null) {
            return changed;
        }
        node = node.node(this.getKey(info.location));
        try {
            changed |= this.putValue(node, KEY_URI, info.location.toString());
            changed |= this.putValue(node, KEY_URL, null);
            changed |= this.putValue(node, KEY_SYSTEM, Boolean.toString(info.isSystem));
            changed |= this.putValue(node, KEY_DESCRIPTION, info.description);
            changed |= this.putValue(node, KEY_NAME, info.name);
            changed |= this.putValue(node, KEY_NICKNAME, info.nickname);
            changed |= this.putValue(node, "suffix", info.suffix);
            if ((changed |= this.putValue(node, KEY_ENABLED, Boolean.toString(info.isEnabled))) && flush) {
                this.saveToPreferences();
            }
            return changed;
        }
        catch (IllegalStateException illegalStateException) {
            return false;
        }
    }

    private void rememberNotFound(URI location) {
        List<Object> badRepos;
        if (this.unavailableRepositories != null && (badRepos = this.unavailableRepositories.get()) != null) {
            badRepos.add(location);
            return;
        }
        badRepos = new ArrayList();
        badRepos.add(location);
        this.unavailableRepositories = new SoftReference<List<Object>>(badRepos);
    }

    @Override
    public boolean removeRepository(URI toRemove) {
        return this.removeRepository(this.checkValidLocation(toRemove), true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean removeRepository(URI toRemove, boolean signalRemove) {
        Assert.isNotNull((Object)toRemove);
        String repoKey = this.getKey(toRemove);
        Object object = this.repositoryLock;
        synchronized (object) {
            if (this.repositories == null) {
                this.restoreRepositories();
            }
            if (this.repositories.remove(repoKey) == null) {
                return false;
            }
        }
        try {
            Preferences node;
            if (Tracing.DEBUG_REMOVE_REPO) {
                String msg = new StringBuffer("Removing repository: ").append(toRemove).toString();
                Tracing.debug((String)msg);
                new Exception(msg).printStackTrace();
            }
            if ((node = this.getPreferences()) != null) {
                node.node(repoKey).removeNode();
                this.saveToPreferences();
            }
            this.clearNotFound(toRemove);
        }
        catch (BackingStoreException e) {
            this.log("Error saving preferences", e);
        }
        if (signalRemove) {
            this.broadcastChangeEvent(toRemove, this.getRepositoryType(), 1, true);
        }
        return true;
    }

    private void restoreFromPreferences() {
        String[] children;
        Preferences node = this.getPreferences();
        if (node == null) {
            return;
        }
        try {
            children = node.childrenNames();
        }
        catch (BackingStoreException e) {
            this.log("Error restoring repositories from preferences", e);
            return;
        }
        int i = 0;
        while (i < children.length) {
            block7: {
                Preferences child = node.node(children[i]);
                URI location = this.getRepositoryLocation(child);
                if (location == null) {
                    try {
                        child.removeNode();
                        break block7;
                    }
                    catch (BackingStoreException e) {
                        this.log("Error removing invalid repository", e);
                    }
                }
                RepositoryInfo info = new RepositoryInfo();
                info.location = location;
                info.name = child.get(KEY_NAME, null);
                info.nickname = child.get(KEY_NICKNAME, null);
                info.description = child.get(KEY_DESCRIPTION, null);
                info.isSystem = child.getBoolean(KEY_SYSTEM, false);
                info.isEnabled = child.getBoolean(KEY_ENABLED, true);
                info.suffix = child.get("suffix", null);
                this.repositories.put(this.getKey(info.location), info);
            }
            ++i;
        }
        this.saveToPreferences();
    }

    private void restoreFromSystemProperty() {
        String locationString = Activator.getContext().getProperty(this.getRepositorySystemProperty());
        if (locationString != null) {
            StringTokenizer tokenizer = new StringTokenizer(locationString, ",");
            while (tokenizer.hasMoreTokens()) {
                try {
                    this.addRepository(new URI(tokenizer.nextToken()), true, true);
                }
                catch (URISyntaxException e) {
                    this.log(new StringBuffer("Error while restoring repository ").append(locationString).toString(), e);
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void restoreRepositories() {
        Object object = this.repositoryLock;
        synchronized (object) {
            this.repositories = new HashMap<String, RepositoryInfo<T>>();
            this.restoreSpecialRepositories();
            this.restoreFromSystemProperty();
            this.restoreFromPreferences();
        }
    }

    protected void restoreSpecialRepositories() {
    }

    private void saveToPreferences() {
        try {
            Preferences node = this.getPreferences();
            if (node != null) {
                node.flush();
            }
        }
        catch (BackingStoreException e) {
            this.log("Error while saving repositories in preferences", e);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setEnabled(URI location, boolean enablement) {
        this.checkValidLocation(location);
        Object object = this.repositoryLock;
        synchronized (object) {
            RepositoryInfo<T> info;
            if (this.repositories == null) {
                this.restoreRepositories();
            }
            if ((info = this.repositories.get(this.getKey(location))) == null || info.isEnabled == enablement) {
                return;
            }
            info.isEnabled = enablement;
            this.remember(info, true);
        }
        this.broadcastChangeEvent(location, this.getRepositoryType(), 8, enablement);
    }

    public void start() {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void stop() {
        this.eventBus.removeListener((ProvisioningListener)this);
        boolean changed = false;
        Object object = this.repositoryLock;
        synchronized (object) {
            if (this.repositories != null) {
                for (RepositoryInfo<T> info : this.repositories.values()) {
                    changed |= this.remember(info, false);
                }
            }
        }
        if (changed) {
            if (Tracing.DEBUG) {
                Tracing.debug((String)new StringBuffer("Unsaved preferences when shutting down ").append(this.getClass().getName()).toString());
            }
            this.saveToPreferences();
        }
        this.repositories = null;
        this.unavailableRepositories = null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected String[] sortSuffixes(String[] suffixes, URI location, String[] preferredOrder) {
        String[] result = new String[suffixes.length];
        System.arraycopy(suffixes, 0, result, 0, suffixes.length);
        Object object = this.repositoryLock;
        synchronized (object) {
            int i;
            RepositoryInfo<T> info;
            if (this.repositories == null) {
                this.restoreRepositories();
            }
            if ((info = this.repositories.get(this.getKey(location))) != null && info.suffix != null) {
                String lastSuffix = info.suffix;
                i = 0;
                while (i < result.length) {
                    if (lastSuffix.equals(result[i])) {
                        System.arraycopy(result, 0, result, 1, i);
                        result[0] = lastSuffix;
                        break;
                    }
                    ++i;
                }
            }
            if (preferredOrder != null) {
                int priority = 0;
                i = 0;
                while (i < preferredOrder.length) {
                    String currentSuffix = preferredOrder[i];
                    if ("!".equals(currentSuffix.trim())) {
                        String[] tmp = new String[priority];
                        System.arraycopy(result, 0, tmp, 0, priority);
                        return tmp;
                    }
                    int j = priority;
                    while (j < result.length) {
                        if (result[j].equalsIgnoreCase(currentSuffix.trim())) {
                            String tmp = result[j];
                            System.arraycopy(result, priority, result, priority + 1, j - priority);
                            result[priority] = tmp;
                            ++priority;
                            break;
                        }
                        ++j;
                    }
                    ++i;
                }
            }
        }
        return result;
    }

    public IQueryResult<T> query(IQuery<T> query, IProgressMonitor monitor) {
        URI[] locations = this.getKnownRepositories(0);
        ArrayList<IRepository<T>> queryables = new ArrayList<IRepository<T>>(locations.length);
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)(locations.length * 10));
        int i = 0;
        while (i < locations.length) {
            try {
                if (sub.isCanceled()) {
                    throw new OperationCanceledException();
                }
                queryables.add(this.loadRepository(locations[i], (IProgressMonitor)sub.newChild(9), null, 0));
            }
            catch (ProvisionException provisionException) {}
            ++i;
        }
        try {
            IQueryable compoundQueryable = QueryUtil.compoundQueryable(queryables);
            IQueryResult iQueryResult = compoundQueryable.query(query, (IProgressMonitor)sub.newChild(locations.length * 1));
            return iQueryResult;
        }
        finally {
            sub.done();
        }
    }

    private static URI getIndexFileURI(URI base) throws URISyntaxException {
        String spec = base.toString();
        if (spec.endsWith(INDEX_FILE)) {
            return base;
        }
        spec = spec.endsWith("/") ? new StringBuffer(String.valueOf(spec)).append(INDEX_FILE).toString() : new StringBuffer(String.valueOf(spec)).append("/p2.index").toString();
        return new URI(spec);
    }

    protected Transport getTransport() {
        return (Transport)this.agent.getService(Transport.SERVICE_NAME);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void flushCache() {
        Map<String, RepositoryInfo<T>> map = this.repositories;
        synchronized (map) {
            Collection<RepositoryInfo<T>> repos = this.repositories.values();
            for (RepositoryInfo<T> repositoryInfo : repos) {
                repositoryInfo.repository = null;
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class RepositoryInfo<R> {
        public String description;
        public boolean isEnabled = true;
        public boolean isSystem = false;
        public URI location;
        public String name;
        public String nickname;
        public SoftReference<IRepository<R>> repository;
        public String suffix;
    }
}

