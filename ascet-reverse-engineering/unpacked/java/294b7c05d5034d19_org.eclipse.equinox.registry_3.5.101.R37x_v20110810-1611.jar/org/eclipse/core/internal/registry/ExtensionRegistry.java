/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.storagemanager.StorageManager
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.registry;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.EventListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import org.eclipse.core.internal.registry.CombinedEventDelta;
import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.Contribution;
import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionDelta;
import org.eclipse.core.internal.registry.ExtensionHandle;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionPointHandle;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.KeyedElement;
import org.eclipse.core.internal.registry.ReadWriteMonitor;
import org.eclipse.core.internal.registry.RegistryChangeEvent;
import org.eclipse.core.internal.registry.RegistryDelta;
import org.eclipse.core.internal.registry.RegistryIndexElement;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.internal.registry.RegistryObjectFactory;
import org.eclipse.core.internal.registry.RegistryObjectFactoryMulti;
import org.eclipse.core.internal.registry.RegistryObjectManager;
import org.eclipse.core.internal.registry.RegistryProperties;
import org.eclipse.core.internal.registry.RegistryTimestamp;
import org.eclipse.core.internal.registry.TableReader;
import org.eclipse.core.internal.registry.TableWriter;
import org.eclipse.core.internal.registry.spi.ConfigurationElementAttribute;
import org.eclipse.core.internal.registry.spi.ConfigurationElementDescription;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IRegistryEventListener;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.spi.IDynamicExtensionRegistry;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.core.runtime.spi.RegistryStrategy;
import org.eclipse.osgi.storagemanager.StorageManager;
import org.eclipse.osgi.util.NLS;

public class ExtensionRegistry
implements IExtensionRegistry,
IDynamicExtensionRegistry {
    private ReadWriteMonitor access = new ReadWriteMonitor();
    private transient Map deltas = new HashMap(11);
    protected StorageManager cacheStorageManager;
    private transient ListenerList listeners = new ListenerList();
    private RegistryObjectManager registryObjects = null;
    protected TableReader theTableReader = new TableReader(this);
    private Object masterToken;
    private Object userToken;
    protected RegistryStrategy strategy;
    private RegistryTimestamp aggregatedTimestamp = new RegistryTimestamp();
    private CombinedEventDelta eventDelta = null;
    private static final String notNamespace = "";
    private final boolean isMultiLanguage;
    private boolean mlErrorLogged = false;
    protected RegistryObjectFactory theRegistryObjectFactory = null;
    private RegistryEventThread eventThread = null;
    protected final List queue = new LinkedList();

    public RegistryObjectManager getObjectManager() {
        return this.registryObjects;
    }

    protected void setFileManager(File cacheBase, boolean isCacheReadOnly) {
        if (this.cacheStorageManager != null) {
            this.cacheStorageManager.close();
        }
        if (cacheBase != null) {
            this.cacheStorageManager = new StorageManager(cacheBase, isCacheReadOnly ? "none" : null, isCacheReadOnly);
            try {
                this.cacheStorageManager.open(!isCacheReadOnly);
            }
            catch (IOException iOException) {}
        }
    }

    private void add(Contribution element) {
        this.access.enterWrite();
        try {
            this.eventDelta = CombinedEventDelta.recordAddition();
            this.basicAdd(element, true);
            this.fireRegistryChangeEvent();
            this.eventDelta = null;
        }
        finally {
            this.access.exitWrite();
        }
    }

    static Object concatArrays(Object a, Object b) {
        Object[] result = (Object[])Array.newInstance(a.getClass().getComponentType(), Array.getLength(a) + Array.getLength(b));
        System.arraycopy(a, 0, result, 0, Array.getLength(a));
        System.arraycopy(b, 0, result, Array.getLength(a), Array.getLength(b));
        return result;
    }

    private String addExtension(int extension) {
        Extension addedExtension = (Extension)this.registryObjects.getObject(extension, (byte)2);
        String extensionPointToAddTo = addedExtension.getExtensionPointIdentifier();
        ExtensionPoint extPoint = this.registryObjects.getExtensionPointObject(extensionPointToAddTo);
        if (extPoint == null) {
            this.registryObjects.addOrphan(extensionPointToAddTo, extension);
            return null;
        }
        int[] existingExtensions = extPoint.getRawChildren();
        int[] newExtensions = new int[existingExtensions.length + 1];
        System.arraycopy(existingExtensions, 0, newExtensions, 0, existingExtensions.length);
        newExtensions[newExtensions.length - 1] = extension;
        this.link(extPoint, newExtensions);
        if (this.eventDelta != null) {
            this.eventDelta.rememberExtension(extPoint, extension);
        }
        return this.recordChange(extPoint, extension, 1);
    }

    private String addExtensionPoint(int extPoint) {
        int[] orphans;
        ExtensionPoint extensionPoint = (ExtensionPoint)this.registryObjects.getObject(extPoint, (byte)3);
        if (this.eventDelta != null) {
            this.eventDelta.rememberExtensionPoint(extensionPoint);
        }
        if ((orphans = this.registryObjects.removeOrphans(extensionPoint.getUniqueIdentifier())) == null) {
            return null;
        }
        this.link(extensionPoint, orphans);
        if (this.eventDelta != null) {
            this.eventDelta.rememberExtensions(extensionPoint, orphans);
        }
        return this.recordChange(extensionPoint, orphans, 1);
    }

    private Set addExtensionsAndExtensionPoints(Contribution element) {
        HashSet<String> affectedNamespaces = new HashSet<String>();
        int[] extPoints = element.getExtensionPoints();
        int i = 0;
        while (i < extPoints.length) {
            String namespace = this.addExtensionPoint(extPoints[i]);
            if (namespace != null) {
                affectedNamespaces.add(namespace);
            }
            ++i;
        }
        int[] extensions = element.getExtensions();
        int i2 = 0;
        while (i2 < extensions.length) {
            String namespace = this.addExtension(extensions[i2]);
            if (namespace != null) {
                affectedNamespaces.add(namespace);
            }
            ++i2;
        }
        return affectedNamespaces;
    }

    public void addListener(IRegistryEventListener listener) {
        this.addListenerInternal(listener, null);
    }

    public void addListener(IRegistryEventListener listener, String extensionPointId) {
        this.addListenerInternal(listener, extensionPointId);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void addListenerInternal(EventListener listener, String filter) {
        ListenerList listenerList = this.listeners;
        synchronized (listenerList) {
            this.listeners.add((Object)new ListenerInfo(listener, filter));
        }
    }

    public void addRegistryChangeListener(IRegistryChangeListener listener) {
        this.addListenerInternal(listener, null);
    }

    public void addRegistryChangeListener(IRegistryChangeListener listener, String filter) {
        this.addListenerInternal(listener, filter);
    }

    private void basicAdd(Contribution element, boolean link) {
        this.registryObjects.addContribution(element);
        if (!link) {
            return;
        }
        Set affectedNamespaces = this.addExtensionsAndExtensionPoints(element);
        this.setObjectManagers(affectedNamespaces, this.registryObjects.createDelegatingObjectManager(this.registryObjects.getAssociatedObjects(element.getContributorId())));
    }

    private void setObjectManagers(Set affectedNamespaces, IObjectManager manager) {
        Iterator iter = affectedNamespaces.iterator();
        while (iter.hasNext()) {
            this.getDelta((String)iter.next()).setObjectManager(manager);
        }
        if (this.eventDelta != null) {
            this.eventDelta.setObjectManager(manager);
        }
    }

    private void basicRemove(String contributorId) {
        Set affectedNamespaces = this.removeExtensionsAndExtensionPoints(contributorId);
        Map associatedObjects = this.registryObjects.getAssociatedObjects(contributorId);
        this.registryObjects.removeObjects(associatedObjects);
        this.registryObjects.addNavigableObjects(associatedObjects);
        this.setObjectManagers(affectedNamespaces, this.registryObjects.createDelegatingObjectManager(associatedObjects));
        this.registryObjects.removeContribution(contributorId);
        this.registryObjects.removeContributor(contributorId);
    }

    void enterRead() {
        this.access.enterRead();
    }

    void exitRead() {
        this.access.exitRead();
    }

    private void fireRegistryChangeEvent() {
        this.deltas.put(notNamespace, this.eventDelta);
        if (this.listeners.isEmpty()) {
            this.deltas.clear();
            return;
        }
        Object[] tmpListeners = this.listeners.getListeners();
        HashMap tmpDeltas = new HashMap(this.deltas);
        this.deltas.clear();
        this.strategy.scheduleChangeEvent(tmpListeners, tmpDeltas, this);
    }

    public IConfigurationElement[] getConfigurationElementsFor(String extensionPointId) {
        int lastdot = extensionPointId.lastIndexOf(46);
        if (lastdot == -1) {
            return new IConfigurationElement[0];
        }
        return this.getConfigurationElementsFor(extensionPointId.substring(0, lastdot), extensionPointId.substring(lastdot + 1));
    }

    public IConfigurationElement[] getConfigurationElementsFor(String pluginId, String extensionPointSimpleId) {
        IExtensionPoint extPoint = this.getExtensionPoint(pluginId, extensionPointSimpleId);
        if (extPoint == null) {
            return new IConfigurationElement[0];
        }
        return extPoint.getConfigurationElements();
    }

    public IConfigurationElement[] getConfigurationElementsFor(String pluginId, String extensionPointName, String extensionId) {
        IExtension extension = this.getExtension(pluginId, extensionPointName, extensionId);
        if (extension == null) {
            return new IConfigurationElement[0];
        }
        return extension.getConfigurationElements();
    }

    private RegistryDelta getDelta(String namespace) {
        RegistryDelta existingDelta = (RegistryDelta)this.deltas.get(namespace);
        if (existingDelta != null) {
            return existingDelta;
        }
        RegistryDelta delta = new RegistryDelta();
        this.deltas.put(namespace, delta);
        return delta;
    }

    public IExtension getExtension(String extensionId) {
        ExtensionHandle[] extensions;
        if (extensionId == null) {
            return null;
        }
        int lastdot = extensionId.lastIndexOf(46);
        if (lastdot == -1) {
            return null;
        }
        String namespace = extensionId.substring(0, lastdot);
        this.access.enterRead();
        try {
            extensions = this.registryObjects.getExtensionsFromNamespace(namespace);
        }
        finally {
            this.access.exitRead();
        }
        int i = 0;
        while (i < extensions.length) {
            ExtensionHandle suspect = extensions[i];
            if (extensionId.equals(suspect.getUniqueIdentifier())) {
                return suspect;
            }
            ++i;
        }
        return null;
    }

    public IExtension getExtension(String extensionPointId, String extensionId) {
        int lastdot = extensionPointId.lastIndexOf(46);
        if (lastdot == -1) {
            return null;
        }
        return this.getExtension(extensionPointId.substring(0, lastdot), extensionPointId.substring(lastdot + 1), extensionId);
    }

    public IExtension getExtension(String pluginId, String extensionPointName, String extensionId) {
        IExtensionPoint extPoint = this.getExtensionPoint(pluginId, extensionPointName);
        if (extPoint != null) {
            return extPoint.getExtension(extensionId);
        }
        return null;
    }

    public IExtensionPoint getExtensionPoint(String xptUniqueId) {
        this.access.enterRead();
        try {
            ExtensionPointHandle extensionPointHandle = this.registryObjects.getExtensionPointHandle(xptUniqueId);
            return extensionPointHandle;
        }
        finally {
            this.access.exitRead();
        }
    }

    public IExtensionPoint getExtensionPoint(String elementName, String xpt) {
        this.access.enterRead();
        try {
            ExtensionPointHandle extensionPointHandle = this.registryObjects.getExtensionPointHandle(String.valueOf(elementName) + '.' + xpt);
            return extensionPointHandle;
        }
        finally {
            this.access.exitRead();
        }
    }

    public IExtensionPoint[] getExtensionPoints() {
        this.access.enterRead();
        try {
            IExtensionPoint[] iExtensionPointArray = this.registryObjects.getExtensionPointsHandles();
            return iExtensionPointArray;
        }
        finally {
            this.access.exitRead();
        }
    }

    public IExtensionPoint[] getExtensionPoints(String namespaceName) {
        this.access.enterRead();
        try {
            IExtensionPoint[] iExtensionPointArray = this.registryObjects.getExtensionPointsFromNamespace(namespaceName);
            return iExtensionPointArray;
        }
        finally {
            this.access.exitRead();
        }
    }

    public IExtension[] getExtensions(String namespaceName) {
        this.access.enterRead();
        try {
            IExtension[] iExtensionArray = this.registryObjects.getExtensionsFromNamespace(namespaceName);
            return iExtensionArray;
        }
        finally {
            this.access.exitRead();
        }
    }

    public IExtension[] getExtensions(IContributor contributor) {
        if (!(contributor instanceof RegistryContributor)) {
            throw new IllegalArgumentException();
        }
        String contributorId = ((RegistryContributor)contributor).getActualId();
        this.access.enterRead();
        try {
            IExtension[] iExtensionArray = this.registryObjects.getExtensionsFromContributor(contributorId);
            return iExtensionArray;
        }
        finally {
            this.access.exitRead();
        }
    }

    public IExtensionPoint[] getExtensionPoints(IContributor contributor) {
        if (!(contributor instanceof RegistryContributor)) {
            throw new IllegalArgumentException();
        }
        String contributorId = ((RegistryContributor)contributor).getActualId();
        this.access.enterRead();
        try {
            IExtensionPoint[] iExtensionPointArray = this.registryObjects.getExtensionPointsFromContributor(contributorId);
            return iExtensionPointArray;
        }
        finally {
            this.access.exitRead();
        }
    }

    public String[] getNamespaces() {
        this.access.enterRead();
        try {
            KeyedElement[] namespaceElements = this.registryObjects.getNamespacesIndex().elements();
            String[] namespaceNames = new String[namespaceElements.length];
            int i = 0;
            while (i < namespaceElements.length) {
                namespaceNames[i] = (String)((RegistryIndexElement)namespaceElements[i]).getKey();
                ++i;
            }
            String[] stringArray = namespaceNames;
            return stringArray;
        }
        finally {
            this.access.exitRead();
        }
    }

    public boolean hasContributor(IContributor contributor) {
        if (!(contributor instanceof RegistryContributor)) {
            throw new IllegalArgumentException();
        }
        String contributorId = ((RegistryContributor)contributor).getActualId();
        return this.hasContributor(contributorId);
    }

    public boolean hasContributor(String contributorId) {
        this.access.enterRead();
        try {
            boolean bl = this.registryObjects.hasContribution(contributorId);
            return bl;
        }
        finally {
            this.access.exitRead();
        }
    }

    private void link(ExtensionPoint extPoint, int[] extensions) {
        extPoint.setRawChildren(extensions);
        this.registryObjects.add(extPoint, true);
    }

    private String recordChange(ExtensionPoint extPoint, int extension, int kind) {
        if (this.listeners.isEmpty()) {
            return null;
        }
        ExtensionDelta extensionDelta = new ExtensionDelta();
        extensionDelta.setExtension(extension);
        extensionDelta.setExtensionPoint(extPoint.getObjectId());
        extensionDelta.setKind(kind);
        this.getDelta(extPoint.getNamespace()).addExtensionDelta(extensionDelta);
        return extPoint.getNamespace();
    }

    private String recordChange(ExtensionPoint extPoint, int[] extensions, int kind) {
        if (this.listeners.isEmpty()) {
            return null;
        }
        String namespace = extPoint.getNamespace();
        if (extensions == null || extensions.length == 0) {
            return namespace;
        }
        RegistryDelta pluginDelta = this.getDelta(extPoint.getNamespace());
        int i = 0;
        while (i < extensions.length) {
            ExtensionDelta extensionDelta = new ExtensionDelta();
            extensionDelta.setExtension(extensions[i]);
            extensionDelta.setExtensionPoint(extPoint.getObjectId());
            extensionDelta.setKind(kind);
            pluginDelta.addExtensionDelta(extensionDelta);
            ++i;
        }
        return namespace;
    }

    public void remove(String removedContributorId, long timestamp) {
        this.remove(removedContributorId);
        if (timestamp != 0L) {
            this.aggregatedTimestamp.remove(timestamp);
        }
    }

    public void removeContributor(IContributor contributor, Object key) {
        if (!(contributor instanceof RegistryContributor)) {
            throw new IllegalArgumentException();
        }
        if (!this.checkReadWriteAccess(key, true)) {
            throw new IllegalArgumentException("Unauthorized access to the ExtensionRegistry.removeContributor() method. Check if proper access token is supplied.");
        }
        String contributorId = ((RegistryContributor)contributor).getActualId();
        this.remove(contributorId);
    }

    public void remove(String removedContributorId) {
        this.access.enterWrite();
        try {
            this.eventDelta = CombinedEventDelta.recordRemoval();
            this.basicRemove(removedContributorId);
            this.fireRegistryChangeEvent();
            this.eventDelta = null;
        }
        finally {
            this.access.exitWrite();
        }
    }

    private String removeExtension(int extensionId) {
        Extension extension = (Extension)this.registryObjects.getObject(extensionId, (byte)2);
        this.registryObjects.removeExtensionFromNamespaceIndex(extensionId, extension.getNamespaceIdentifier());
        String xptName = extension.getExtensionPointIdentifier();
        ExtensionPoint extPoint = this.registryObjects.getExtensionPointObject(xptName);
        if (extPoint == null) {
            this.registryObjects.removeOrphan(xptName, extensionId);
            return null;
        }
        int[] existingExtensions = extPoint.getRawChildren();
        int[] newExtensions = RegistryObjectManager.EMPTY_INT_ARRAY;
        if (existingExtensions.length > 1) {
            if (existingExtensions.length == 1) {
                newExtensions = RegistryObjectManager.EMPTY_INT_ARRAY;
            }
            newExtensions = new int[existingExtensions.length - 1];
            int i = 0;
            int j = 0;
            while (i < existingExtensions.length) {
                if (existingExtensions[i] != extension.getObjectId()) {
                    newExtensions[j++] = existingExtensions[i];
                }
                ++i;
            }
        }
        this.link(extPoint, newExtensions);
        if (this.eventDelta != null) {
            this.eventDelta.rememberExtension(extPoint, extensionId);
        }
        return this.recordChange(extPoint, extension.getObjectId(), 2);
    }

    private String removeExtensionPoint(int extPoint) {
        ExtensionPoint extensionPoint = (ExtensionPoint)this.registryObjects.getObject(extPoint, (byte)3);
        this.registryObjects.removeExtensionPointFromNamespaceIndex(extPoint, extensionPoint.getNamespace());
        int[] existingExtensions = extensionPoint.getRawChildren();
        if (existingExtensions != null && existingExtensions.length != 0) {
            this.registryObjects.addOrphans(extensionPoint.getUniqueIdentifier(), existingExtensions);
            this.link(extensionPoint, RegistryObjectManager.EMPTY_INT_ARRAY);
        }
        if (this.eventDelta != null) {
            this.eventDelta.rememberExtensionPoint(extensionPoint);
            this.eventDelta.rememberExtensions(extensionPoint, existingExtensions);
        }
        return this.recordChange(extensionPoint, existingExtensions, 2);
    }

    private Set removeExtensionsAndExtensionPoints(String contributorId) {
        HashSet<String> affectedNamespaces = new HashSet<String>();
        int[] extensions = this.registryObjects.getExtensionsFrom(contributorId);
        int i = 0;
        while (i < extensions.length) {
            String namespace = this.removeExtension(extensions[i]);
            if (namespace != null) {
                affectedNamespaces.add(namespace);
            }
            ++i;
        }
        int[] extPoints = this.registryObjects.getExtensionPointsFrom(contributorId);
        int i2 = 0;
        while (i2 < extPoints.length) {
            String namespace = this.removeExtensionPoint(extPoints[i2]);
            if (namespace != null) {
                affectedNamespaces.add(namespace);
            }
            ++i2;
        }
        return affectedNamespaces;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeRegistryChangeListener(IRegistryChangeListener listener) {
        ListenerList listenerList = this.listeners;
        synchronized (listenerList) {
            this.listeners.remove((Object)new ListenerInfo(listener, null));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeListener(IRegistryEventListener listener) {
        ListenerList listenerList = this.listeners;
        synchronized (listenerList) {
            this.listeners.remove((Object)new ListenerInfo(listener, null));
        }
    }

    public ExtensionRegistry(RegistryStrategy registryStrategy, Object masterToken, Object userToken) {
        this.isMultiLanguage = "true".equals(RegistryProperties.getProperty("eclipse.registry.MultiLanguage"));
        this.strategy = registryStrategy != null ? registryStrategy : new RegistryStrategy(null, null);
        this.masterToken = masterToken;
        this.userToken = userToken;
        this.registryObjects = new RegistryObjectManager(this);
        boolean isRegistryFilledFromCache = false;
        if (this.strategy.cacheUse()) {
            long start = 0L;
            if (this.debug()) {
                start = System.currentTimeMillis();
            }
            if (this.checkCache()) {
                try {
                    this.theTableReader.setTableFile(this.cacheStorageManager.lookup(".table", false));
                    this.theTableReader.setExtraDataFile(this.cacheStorageManager.lookup(".extraData", false));
                    this.theTableReader.setMainDataFile(this.cacheStorageManager.lookup(".mainData", false));
                    this.theTableReader.setContributionsFile(this.cacheStorageManager.lookup(".contributions", false));
                    this.theTableReader.setContributorsFile(this.cacheStorageManager.lookup(".contributors", false));
                    this.theTableReader.setNamespacesFile(this.cacheStorageManager.lookup(".namespaces", false));
                    this.theTableReader.setOrphansFile(this.cacheStorageManager.lookup(".orphans", false));
                    long timestamp = this.strategy.getContributionsTimestamp();
                    isRegistryFilledFromCache = this.registryObjects.init(timestamp);
                    if (isRegistryFilledFromCache) {
                        this.aggregatedTimestamp.set(timestamp);
                    }
                }
                catch (IOException e) {
                    isRegistryFilledFromCache = false;
                    this.clearRegistryCache();
                    this.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.registry_bad_cache, (Throwable)e));
                }
            }
            if (!isRegistryFilledFromCache) {
                int index = 0;
                while (index < this.strategy.getLocationsLength()) {
                    if (!this.strategy.isCacheReadOnly(index)) {
                        this.setFileManager(this.strategy.getStorage(index), false);
                        break;
                    }
                    ++index;
                }
            }
            if (this.debug() && isRegistryFilledFromCache) {
                System.out.println("Reading registry cache: " + (System.currentTimeMillis() - start));
            }
            if (this.debug()) {
                if (!isRegistryFilledFromCache) {
                    System.out.println("Reloading registry from manifest files...");
                } else {
                    System.out.println("Using registry cache...");
                }
            }
        }
        if (this.debugEvents()) {
            this.addRegistryChangeListener(new IRegistryChangeListener(){

                public void registryChanged(IRegistryChangeEvent event) {
                    System.out.println(event);
                }
            });
        }
        this.strategy.onStart(this);
        this.strategy.onStart(this, isRegistryFilledFromCache);
    }

    public void stop(Object key) {
        if (this.masterToken != null && this.masterToken != key) {
            throw new IllegalArgumentException("Unauthorized access to the ExtensionRegistry.stop() method. Check if proper access token is supplied.");
        }
        this.strategy.onStop(this);
        this.stopChangeEventScheduler();
        if (this.cacheStorageManager == null) {
            return;
        }
        if (!this.registryObjects.isDirty() || this.cacheStorageManager.isReadOnly()) {
            this.cacheStorageManager.close();
            this.theTableReader.close();
            return;
        }
        File tableFile = null;
        File mainFile = null;
        File extraFile = null;
        File contributionsFile = null;
        File contributorsFile = null;
        File namespacesFile = null;
        File orphansFile = null;
        TableWriter theTableWriter = new TableWriter(this);
        try {
            this.cacheStorageManager.lookup(".table", true);
            this.cacheStorageManager.lookup(".mainData", true);
            this.cacheStorageManager.lookup(".extraData", true);
            this.cacheStorageManager.lookup(".contributions", true);
            this.cacheStorageManager.lookup(".contributors", true);
            this.cacheStorageManager.lookup(".namespaces", true);
            this.cacheStorageManager.lookup(".orphans", true);
            tableFile = File.createTempFile(".table", ".new", this.cacheStorageManager.getBase());
            mainFile = File.createTempFile(".mainData", ".new", this.cacheStorageManager.getBase());
            extraFile = File.createTempFile(".extraData", ".new", this.cacheStorageManager.getBase());
            contributionsFile = File.createTempFile(".contributions", ".new", this.cacheStorageManager.getBase());
            contributorsFile = File.createTempFile(".contributors", ".new", this.cacheStorageManager.getBase());
            namespacesFile = File.createTempFile(".namespaces", ".new", this.cacheStorageManager.getBase());
            orphansFile = File.createTempFile(".orphans", ".new", this.cacheStorageManager.getBase());
            theTableWriter.setTableFile(tableFile);
            theTableWriter.setExtraDataFile(extraFile);
            theTableWriter.setMainDataFile(mainFile);
            theTableWriter.setContributionsFile(contributionsFile);
            theTableWriter.setContributorsFile(contributorsFile);
            theTableWriter.setNamespacesFile(namespacesFile);
            theTableWriter.setOrphansFile(orphansFile);
        }
        catch (IOException iOException) {
            this.cacheStorageManager.close();
            return;
        }
        try {
            long timestamp = this.aggregatedTimestamp.isModifed() ? this.aggregatedTimestamp.getContentsTimestamp() : this.strategy.getContributionsTimestamp();
            if (theTableWriter.saveCache(this.registryObjects, timestamp)) {
                this.cacheStorageManager.update(new String[]{".table", ".mainData", ".extraData", ".contributions", ".contributors", ".namespaces", ".orphans"}, new String[]{tableFile.getName(), mainFile.getName(), extraFile.getName(), contributionsFile.getName(), contributorsFile.getName(), namespacesFile.getName(), orphansFile.getName()});
            }
        }
        catch (IOException iOException) {}
        this.theTableReader.close();
        this.cacheStorageManager.close();
    }

    public void clearRegistryCache() {
        String[] keys = new String[]{".table", ".mainData", ".extraData", ".contributions", ".orphans"};
        int i = 0;
        while (i < keys.length) {
            try {
                this.cacheStorageManager.remove(keys[i]);
            }
            catch (IOException e) {
                this.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 4, RegistryMessages.meta_registryCacheReadProblems, (Throwable)e));
            }
            ++i;
        }
        this.aggregatedTimestamp.reset();
    }

    protected void setElementFactory() {
        this.theRegistryObjectFactory = this.isMultiLanguage ? new RegistryObjectFactoryMulti(this) : new RegistryObjectFactory(this);
    }

    public RegistryObjectFactory getElementFactory() {
        if (this.theRegistryObjectFactory == null) {
            this.setElementFactory();
        }
        return this.theRegistryObjectFactory;
    }

    TableReader getTableReader() {
        return this.theTableReader;
    }

    public void log(IStatus status) {
        this.strategy.log(status);
    }

    public String translate(String key, ResourceBundle resources) {
        if (this.isMultiLanguage) {
            return key;
        }
        return this.strategy.translate(key, resources);
    }

    public boolean debug() {
        return this.strategy.debug();
    }

    public boolean debugEvents() {
        return this.strategy.debugRegistryEvents();
    }

    public boolean useLazyCacheLoading() {
        return this.strategy.cacheLazyLoading();
    }

    public long computeState() {
        return this.strategy.getContainerTimestamp();
    }

    protected boolean checkCache() {
        int index = 0;
        while (index < this.strategy.getLocationsLength()) {
            File possibleCacheLocation = this.strategy.getStorage(index);
            if (possibleCacheLocation == null) break;
            this.setFileManager(possibleCacheLocation, this.strategy.isCacheReadOnly(index));
            if (this.cacheStorageManager != null) {
                File cacheFile = null;
                try {
                    cacheFile = this.cacheStorageManager.lookup(TableReader.getTestFileName(), false);
                }
                catch (IOException iOException) {}
                if (cacheFile != null && cacheFile.isFile()) {
                    return true;
                }
            }
            ++index;
        }
        return false;
    }

    public Object createExecutableExtension(RegistryContributor defaultContributor, String className, String requestedContributorName) throws CoreException {
        return this.strategy.createExecutableExtension(defaultContributor, className, requestedContributorName);
    }

    public IStatus processChangeEvent(Object[] listenerInfos, final Map scheduledDeltas) {
        CombinedEventDelta extendedDelta = (CombinedEventDelta)scheduledDeltas.remove(notNamespace);
        final MultiStatus result = new MultiStatus("org.eclipse.equinox.registry", 0, RegistryMessages.plugin_eventListenerError, null);
        int i = 0;
        while (i < listenerInfos.length) {
            final ListenerInfo listenerInfo = (ListenerInfo)listenerInfos[i];
            if (listenerInfo.listener instanceof IRegistryChangeListener && scheduledDeltas.size() != 0 && (listenerInfo.filter == null || scheduledDeltas.containsKey(listenerInfo.filter))) {
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void run() throws Exception {
                        ((IRegistryChangeListener)listenerInfo.listener).registryChanged(new RegistryChangeEvent(scheduledDeltas, listenerInfo.filter));
                    }

                    public void handleException(Throwable exception) {
                        result.add((IStatus)new Status(4, "org.eclipse.equinox.registry", RegistryMessages.plugin_eventListenerError, exception));
                    }
                });
            }
            if (listenerInfo.listener instanceof IRegistryEventListener) {
                IRegistryEventListener extensionListener = (IRegistryEventListener)listenerInfo.listener;
                IExtension[] extensions = extendedDelta.getExtensions(listenerInfo.filter);
                IExtensionPoint[] extensionPoints = extendedDelta.getExtensionPoints(listenerInfo.filter);
                if (extendedDelta.isAddition()) {
                    if (extensionPoints != null) {
                        extensionListener.added(extensionPoints);
                    }
                    if (extensions != null) {
                        extensionListener.added(extensions);
                    }
                } else {
                    if (extensions != null) {
                        extensionListener.removed(extensions);
                    }
                    if (extensionPoints != null) {
                        extensionListener.removed(extensionPoints);
                    }
                }
            }
            ++i;
        }
        Iterator iter = scheduledDeltas.values().iterator();
        while (iter.hasNext()) {
            ((RegistryDelta)iter.next()).getObjectManager().close();
        }
        IObjectManager manager = extendedDelta.getObjectManager();
        if (manager != null) {
            manager.close();
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void scheduleChangeEvent(Object[] listenerInfos, Map scheduledDeltas) {
        QueueElement newElement = new QueueElement(listenerInfos, scheduledDeltas);
        if (this.eventThread == null) {
            this.eventThread = new RegistryEventThread(this);
            this.eventThread.start();
        }
        List list = this.queue;
        synchronized (list) {
            this.queue.add(newElement);
            this.queue.notify();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void stopChangeEventScheduler() {
        if (this.eventThread != null) {
            List list = this.queue;
            synchronized (list) {
                this.eventThread.interrupt();
                this.eventThread = null;
            }
        }
    }

    private boolean checkReadWriteAccess(Object key, boolean persist) {
        if (this.masterToken == key) {
            return true;
        }
        return this.userToken == key && !persist;
    }

    public boolean addContribution(InputStream is, IContributor contributor, boolean persist, String contributionName, ResourceBundle translationBundle, Object key, long timestamp) {
        boolean result = this.addContribution(is, contributor, persist, contributionName, translationBundle, key);
        if (timestamp != 0L) {
            this.aggregatedTimestamp.add(timestamp);
        }
        return result;
    }

    /*
     * Exception decompiling
     */
    public boolean addContribution(InputStream is, IContributor contributor, boolean persist, String contributionName, ResourceBundle translationBundle, Object key) {
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

    private void logError(String owner, String contributionName, Exception e) {
        String message = NLS.bind((String)RegistryMessages.parse_failedParsingManifest, (Object)(String.valueOf(owner) + "/" + contributionName));
        this.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, message, (Throwable)e));
    }

    public boolean addExtensionPoint(String identifier, IContributor contributor, boolean persist, String label, String schemaReference, Object token) throws IllegalArgumentException {
        String uniqueId;
        String namespaceName;
        if (!this.checkReadWriteAccess(token, persist)) {
            throw new IllegalArgumentException("Unauthorized access to the ExtensionRegistry.addExtensionPoint() method. Check if proper access token is supplied.");
        }
        RegistryContributor internalContributor = (RegistryContributor)contributor;
        this.registryObjects.addContributor(internalContributor);
        String contributorId = internalContributor.getActualId();
        if (identifier == null) {
            String message = NLS.bind((String)RegistryMessages.create_failedExtensionPoint, (Object)label);
            this.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, message, null));
        }
        if (schemaReference == null) {
            schemaReference = notNamespace;
        }
        Contribution contribution = this.getElementFactory().createContribution(contributorId, persist);
        ExtensionPoint currentExtPoint = this.getElementFactory().createExtensionPoint(persist);
        int simpleIdStart = identifier.lastIndexOf(46);
        if (simpleIdStart == -1) {
            namespaceName = contribution.getDefaultNamespace();
            uniqueId = String.valueOf(namespaceName) + '.' + identifier;
        } else {
            namespaceName = identifier.substring(0, simpleIdStart);
            uniqueId = identifier;
        }
        currentExtPoint.setUniqueIdentifier(uniqueId);
        currentExtPoint.setNamespace(namespaceName);
        String labelNLS = this.translate(label, null);
        currentExtPoint.setLabel(labelNLS);
        currentExtPoint.setSchema(schemaReference);
        if (!this.getObjectManager().addExtensionPoint(currentExtPoint, true)) {
            if (this.debug()) {
                String msg = NLS.bind((String)RegistryMessages.parse_duplicateExtensionPoint, (Object)uniqueId, (Object)contribution.getDefaultNamespace());
                this.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, msg, null));
            }
            return false;
        }
        currentExtPoint.setContributorId(contributorId);
        int[] contributionChildren = new int[]{1, 0, currentExtPoint.getObjectId()};
        contribution.setRawChildren(contributionChildren);
        this.add(contribution);
        return true;
    }

    public boolean addExtension(String identifier, IContributor contributor, boolean persist, String label, String extensionPointId, ConfigurationElementDescription configurationElements, Object token) throws IllegalArgumentException {
        String uniqueId;
        IExtension existingExtension;
        String namespaceName;
        String simpleId;
        if (!this.checkReadWriteAccess(token, persist)) {
            throw new IllegalArgumentException("Unauthorized access to the ExtensionRegistry.addExtensionPoint() method. Check if proper access token is supplied.");
        }
        RegistryContributor internalContributor = (RegistryContributor)contributor;
        this.registryObjects.addContributor(internalContributor);
        String contributorId = internalContributor.getActualId();
        Contribution contribution = this.getElementFactory().createContribution(contributorId, persist);
        Extension currentExtension = this.getElementFactory().createExtension(persist);
        int simpleIdStart = identifier.lastIndexOf(46);
        if (simpleIdStart != -1) {
            simpleId = identifier.substring(simpleIdStart + 1);
            namespaceName = identifier.substring(0, simpleIdStart);
        } else {
            simpleId = identifier;
            namespaceName = contribution.getDefaultNamespace();
        }
        currentExtension.setSimpleIdentifier(simpleId);
        currentExtension.setNamespaceIdentifier(namespaceName);
        String extensionLabelNLS = this.translate(label, null);
        currentExtension.setLabel(extensionLabelNLS);
        String targetExtensionPointId = extensionPointId.indexOf(46) == -1 ? String.valueOf(contribution.getDefaultNamespace()) + '.' + extensionPointId : extensionPointId;
        currentExtension.setExtensionPointIdentifier(targetExtensionPointId);
        if (simpleId != null && this.debug() && (existingExtension = this.getExtension(uniqueId = String.valueOf(namespaceName) + '.' + simpleId)) != null) {
            String currentSupplier = contribution.getDefaultNamespace();
            String existingSupplier = existingExtension.getContributor().getName();
            String msg = NLS.bind((String)RegistryMessages.parse_duplicateExtension, (Object[])new String[]{currentSupplier, existingSupplier, uniqueId});
            this.log((IStatus)new Status(2, "org.eclipse.equinox.registry", 0, msg, null));
            return false;
        }
        this.getObjectManager().add(currentExtension, true);
        this.createExtensionData(contributorId, configurationElements, currentExtension, persist);
        currentExtension.setContributorId(contributorId);
        int[] contributionChildren = new int[]{0, 1, currentExtension.getObjectId()};
        contribution.setRawChildren(contributionChildren);
        this.add(contribution);
        return true;
    }

    private void createExtensionData(String contributorId, ConfigurationElementDescription description, RegistryObject parent, boolean persist) {
        int i;
        ConfigurationElement currentConfigurationElement = this.getElementFactory().createConfigurationElement(persist);
        currentConfigurationElement.setContributorId(contributorId);
        currentConfigurationElement.setName(description.getName());
        ConfigurationElementAttribute[] descriptionProperties = description.getAttributes();
        if (descriptionProperties != null && descriptionProperties.length != 0) {
            int len = descriptionProperties.length;
            String[] properties = new String[len * 2];
            i = 0;
            while (i < len) {
                properties[i * 2] = descriptionProperties[i].getName();
                properties[i * 2 + 1] = this.translate(descriptionProperties[i].getValue(), null);
                ++i;
            }
            currentConfigurationElement.setProperties(properties);
        } else {
            currentConfigurationElement.setProperties(RegistryObjectManager.EMPTY_STRING_ARRAY);
        }
        String value = description.getValue();
        if (value != null) {
            currentConfigurationElement.setValue(value);
        }
        this.getObjectManager().add(currentConfigurationElement, true);
        ConfigurationElementDescription[] children = description.getChildren();
        if (children != null) {
            i = 0;
            while (i < children.length) {
                this.createExtensionData(contributorId, children[i], currentConfigurationElement, persist);
                ++i;
            }
        }
        int[] oldValues = parent.getRawChildren();
        int size = oldValues.length;
        int[] newValues = new int[size + 1];
        int i2 = 0;
        while (i2 < size) {
            newValues[i2] = oldValues[i2];
            ++i2;
        }
        newValues[size] = currentConfigurationElement.getObjectId();
        parent.setRawChildren(newValues);
        currentConfigurationElement.setParentId(parent.getObjectId());
        currentConfigurationElement.setParentType(parent instanceof ConfigurationElement ? (byte)1 : 2);
    }

    public boolean removeExtension(IExtension extension, Object token) throws IllegalArgumentException {
        if (!(extension instanceof ExtensionHandle)) {
            return false;
        }
        return this.removeObject(((ExtensionHandle)extension).getObject(), false, token);
    }

    public boolean removeExtensionPoint(IExtensionPoint extensionPoint, Object token) throws IllegalArgumentException {
        if (!(extensionPoint instanceof ExtensionPointHandle)) {
            return false;
        }
        return this.removeObject(((ExtensionPointHandle)extensionPoint).getObject(), true, token);
    }

    private boolean removeObject(RegistryObject registryObject, boolean isExtensionPoint, Object token) {
        if (!this.checkReadWriteAccess(token, registryObject.shouldPersist())) {
            throw new IllegalArgumentException("Unauthorized access to the ExtensionRegistry.removeExtension() method. Check if proper access token is supplied.");
        }
        int id = registryObject.getObjectId();
        this.access.enterWrite();
        try {
            this.eventDelta = CombinedEventDelta.recordRemoval();
            String namespace = isExtensionPoint ? this.removeExtensionPoint(id) : this.removeExtension(id);
            HashMap<Integer, RegistryObject> removed = new HashMap<Integer, RegistryObject>(1);
            removed.put(new Integer(id), registryObject);
            if (!isExtensionPoint) {
                this.registryObjects.addAssociatedObjects(removed, registryObject);
            }
            this.registryObjects.removeObjects(removed);
            this.registryObjects.addNavigableObjects(removed);
            IObjectManager manager = this.registryObjects.createDelegatingObjectManager(removed);
            this.getDelta(namespace).setObjectManager(manager);
            this.eventDelta.setObjectManager(manager);
            this.registryObjects.unlinkChildFromContributions(id);
            this.fireRegistryChangeEvent();
            this.eventDelta = null;
        }
        finally {
            this.access.exitWrite();
        }
        return true;
    }

    public IContributor[] getAllContributors() {
        this.access.enterRead();
        try {
            Collection contributors = this.registryObjects.getContributors().values();
            IContributor[] iContributorArray = contributors.toArray(new IContributor[contributors.size()]);
            return iContributorArray;
        }
        finally {
            this.access.exitRead();
        }
    }

    public Object getTemporaryUserToken() {
        return this.userToken;
    }

    public boolean isMultiLanguage() {
        return this.isMultiLanguage;
    }

    public String[] translate(String[] nonTranslated, IContributor contributor, String locale) {
        return this.strategy.translate(nonTranslated, contributor, locale);
    }

    public String getLocale() {
        return this.strategy.getLocale();
    }

    public void logMultiLangError() {
        if (this.mlErrorLogged) {
            return;
        }
        this.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.registry_non_multi_lang, (Throwable)new IllegalArgumentException()));
        this.mlErrorLogged = true;
    }

    protected class ListenerInfo {
        public String filter;
        public EventListener listener;

        public ListenerInfo(EventListener listener, String filter) {
            this.listener = listener;
            this.filter = filter;
        }

        public boolean equals(Object another) {
            return another instanceof ListenerInfo && ((ListenerInfo)another).listener == this.listener;
        }

        public int hashCode() {
            return this.listener == null ? 0 : this.listener.hashCode();
        }
    }

    private class QueueElement {
        Object[] listenerInfos;
        Map scheduledDeltas;

        QueueElement(Object[] infos, Map deltas) {
            this.scheduledDeltas = deltas;
            this.listenerInfos = infos;
        }
    }

    private class RegistryEventThread
    extends Thread {
        private ExtensionRegistry registry;

        public RegistryEventThread(ExtensionRegistry registry) {
            super("Extension Registry Event Dispatcher");
            this.setDaemon(true);
            this.registry = registry;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void run() {
            while (true) {
                QueueElement element;
                List list = ExtensionRegistry.this.queue;
                synchronized (list) {
                    try {
                        while (ExtensionRegistry.this.queue.isEmpty()) {
                            ExtensionRegistry.this.queue.wait();
                        }
                    }
                    catch (InterruptedException interruptedException) {
                        return;
                    }
                    element = (QueueElement)ExtensionRegistry.this.queue.remove(0);
                }
                this.registry.processChangeEvent(element.listenerInfos, element.scheduledDeltas);
            }
        }
    }
}

