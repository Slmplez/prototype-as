/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.ConfigurationElementHandle;
import org.eclipse.core.internal.registry.Contribution;
import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionHandle;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionPointHandle;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.Handle;
import org.eclipse.core.internal.registry.HashtableOfStringAndInt;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.KeyedElement;
import org.eclipse.core.internal.registry.KeyedHashSet;
import org.eclipse.core.internal.registry.OffsetTable;
import org.eclipse.core.internal.registry.ReferenceMap;
import org.eclipse.core.internal.registry.RegistryIndexElement;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.internal.registry.RegistryProperties;
import org.eclipse.core.internal.registry.TableReader;
import org.eclipse.core.internal.registry.TemporaryObjectManager;
import org.eclipse.core.internal.registry.ThirdLevelConfigurationElementHandle;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.spi.RegistryContributor;

public class RegistryObjectManager
implements IObjectManager {
    public static final byte CONFIGURATION_ELEMENT = 1;
    public static final byte EXTENSION = 2;
    public static final byte EXTENSION_POINT = 3;
    public static final byte THIRDLEVEL_CONFIGURATION_ELEMENT = 4;
    static final int CACHE_INITIAL_SIZE = 512;
    static final float DEFAULT_LOADFACTOR = 0.75f;
    static final int[] EMPTY_INT_ARRAY = new int[0];
    static final String[] EMPTY_STRING_ARRAY = new String[0];
    static final ExtensionHandle[] EMPTY_EXTENSIONS_ARRAY = new ExtensionHandle[0];
    static int UNKNOWN = -1;
    private HashtableOfStringAndInt extensionPoints;
    private ReferenceMap cache;
    private OffsetTable fileOffsets = null;
    private int nextId = 1;
    private KeyedHashSet newContributions;
    private Object formerContributions;
    private HashMap contributors;
    private HashMap removedContributors;
    private KeyedHashSet namespacesIndex;
    private Object orphanExtensions;
    private KeyedHashSet heldObjects = new KeyedHashSet();
    private boolean isDirty = false;
    private boolean fromCache = false;
    private ExtensionRegistry registry;
    public static final String PROP_NO_REGISTRY_FLUSHING = "eclipse.noRegistryFlushing";

    public RegistryObjectManager(ExtensionRegistry registry) {
        this.extensionPoints = new HashtableOfStringAndInt();
        this.cache = "true".equalsIgnoreCase(RegistryProperties.getProperty(PROP_NO_REGISTRY_FLUSHING)) ? new ReferenceMap(0, 512, 0.75f) : new ReferenceMap(1, 512, 0.75f);
        this.newContributions = new KeyedHashSet();
        this.registry = registry;
    }

    synchronized boolean init(long timeStamp) {
        TableReader reader = this.registry.getTableReader();
        Object[] results = reader.loadTables(timeStamp);
        if (results == null) {
            return false;
        }
        this.fileOffsets = (OffsetTable)results[0];
        this.extensionPoints = (HashtableOfStringAndInt)results[1];
        this.nextId = (Integer)results[2];
        this.fromCache = true;
        if (!this.registry.useLazyCacheLoading()) {
            reader.setHoldObjects(true);
            this.markOrphansHasDirty(this.getOrphans());
            this.fromCache = reader.readAllCache(this);
            this.formerContributions = this.getFormerContributions();
        }
        return this.fromCache;
    }

    synchronized void addContribution(Contribution contribution) {
        this.isDirty = true;
        Object Id = contribution.getKey();
        KeyedElement existingContribution = this.getFormerContributions().getByKey(Id);
        if (existingContribution != null) {
            this.removeContribution(Id);
            this.newContributions.add(existingContribution);
        } else {
            existingContribution = this.newContributions.getByKey(Id);
        }
        if (existingContribution != null) {
            ((Contribution)existingContribution).mergeContribution(contribution);
        } else {
            this.newContributions.add(contribution);
        }
        this.updateNamespaceIndex(contribution, true);
    }

    private String findCommonNamespaceIdentifier(RegistryObject[] registryObjects) {
        String namespaceName = null;
        int i = 0;
        while (i < registryObjects.length) {
            RegistryObject currentObject = registryObjects[i];
            String tmp = null;
            if (currentObject instanceof ExtensionPoint) {
                tmp = ((ExtensionPoint)currentObject).getNamespace();
            } else if (currentObject instanceof Extension) {
                tmp = ((Extension)currentObject).getNamespaceIdentifier();
            }
            if (namespaceName == null) {
                namespaceName = tmp;
            } else if (!namespaceName.equals(tmp)) {
                return null;
            }
            ++i;
        }
        return namespaceName;
    }

    synchronized void removeExtensionPointFromNamespaceIndex(int extensionPoint, String namespaceName) {
        RegistryIndexElement indexElement = this.getNamespaceIndex(namespaceName);
        indexElement.updateExtensionPoint(extensionPoint, false);
    }

    synchronized void removeExtensionFromNamespaceIndex(int extensions, String namespaceName) {
        RegistryIndexElement indexElement = this.getNamespaceIndex(namespaceName);
        indexElement.updateExtension(extensions, false);
    }

    private void updateNamespaceIndex(Contribution contribution, boolean added) {
        int[] contribExtensionPoints = contribution.getExtensionPoints();
        RegistryObject[] extensionPointObjects = this.getObjects(contribExtensionPoints, (byte)3);
        String commonExptsNamespace = null;
        if (contribExtensionPoints.length > 1) {
            commonExptsNamespace = this.findCommonNamespaceIdentifier(extensionPointObjects);
        }
        if (commonExptsNamespace != null) {
            RegistryIndexElement indexElement = this.getNamespaceIndex(commonExptsNamespace);
            indexElement.updateExtensionPoints(contribExtensionPoints, added);
        } else {
            int i = 0;
            while (i < contribExtensionPoints.length) {
                String namespaceName = ((ExtensionPoint)extensionPointObjects[i]).getNamespace();
                RegistryIndexElement indexElement = this.getNamespaceIndex(namespaceName);
                indexElement.updateExtensionPoint(contribExtensionPoints[i], added);
                ++i;
            }
        }
        int[] contrExtensions = contribution.getExtensions();
        RegistryObject[] extensionObjects = this.getObjects(contrExtensions, (byte)2);
        String commonExtNamespace = null;
        if (contrExtensions.length > 1) {
            commonExtNamespace = this.findCommonNamespaceIdentifier(extensionObjects);
        }
        if (commonExtNamespace != null) {
            RegistryIndexElement indexElement = this.getNamespaceIndex(commonExtNamespace);
            indexElement.updateExtensions(contrExtensions, added);
        } else {
            int i = 0;
            while (i < contrExtensions.length) {
                String namespaceName = ((Extension)extensionObjects[i]).getNamespaceIdentifier();
                RegistryIndexElement indexElement = this.getNamespaceIndex(namespaceName);
                indexElement.updateExtension(contrExtensions[i], added);
                ++i;
            }
        }
    }

    synchronized int[] getExtensionPointsFrom(String id) {
        KeyedElement tmp = this.newContributions.getByKey(id);
        if (tmp == null) {
            tmp = this.getFormerContributions().getByKey(id);
        }
        if (tmp == null) {
            return EMPTY_INT_ARRAY;
        }
        return ((Contribution)tmp).getExtensionPoints();
    }

    synchronized boolean hasContribution(String id) {
        KeyedElement result = this.newContributions.getByKey(id);
        if (result == null) {
            result = this.getFormerContributions().getByKey(id);
        }
        return result != null;
    }

    private KeyedHashSet getFormerContributions() {
        KeyedHashSet result;
        if (!this.fromCache) {
            return new KeyedHashSet(0);
        }
        if (this.formerContributions == null || (result = (KeyedHashSet)(this.formerContributions instanceof SoftReference ? ((SoftReference)this.formerContributions).get() : this.formerContributions)) == null) {
            result = this.registry.getTableReader().loadContributions();
            this.formerContributions = new SoftReference<KeyedHashSet>(result);
        }
        return result;
    }

    public synchronized void add(RegistryObject registryObject, boolean hold) {
        if (registryObject.getObjectId() == UNKNOWN) {
            int id = this.nextId++;
            registryObject.setObjectId(id);
        }
        this.cache.put(registryObject.getObjectId(), registryObject);
        if (hold) {
            this.hold(registryObject);
        }
    }

    private void remove(RegistryObject registryObject, boolean release) {
        this.cache.remove(registryObject.getObjectId());
        if (release) {
            this.release(registryObject);
        }
    }

    synchronized void remove(int id, boolean release) {
        RegistryObject toRemove = (RegistryObject)this.cache.get(id);
        if (this.fileOffsets != null) {
            this.fileOffsets.removeKey(id);
        }
        if (toRemove != null) {
            this.remove(toRemove, release);
        }
    }

    private void hold(RegistryObject toHold) {
        this.heldObjects.add(toHold);
    }

    private void release(RegistryObject toRelease) {
        this.heldObjects.remove(toRelease);
    }

    public synchronized Object getObject(int id, byte type) {
        return this.basicGetObject(id, type);
    }

    private Object basicGetObject(int id, byte type) {
        Object result = this.cache.get(id);
        if (result != null) {
            return result;
        }
        if (this.fromCache) {
            result = this.load(id, type);
        }
        if (result == null) {
            throw new InvalidRegistryObjectException();
        }
        this.cache.put(id, result);
        return result;
    }

    public boolean shouldPersist(int id) {
        Object result = this.cache.get(id);
        if (result != null) {
            return ((RegistryObject)result).shouldPersist();
        }
        return true;
    }

    public synchronized RegistryObject[] getObjects(int[] values, byte type) {
        if (values.length == 0) {
            switch (type) {
                case 3: {
                    return ExtensionPoint.EMPTY_ARRAY;
                }
                case 2: {
                    return Extension.EMPTY_ARRAY;
                }
                case 1: 
                case 4: {
                    return ConfigurationElement.EMPTY_ARRAY;
                }
            }
        }
        RegistryObject[] results = null;
        switch (type) {
            case 3: {
                results = new ExtensionPoint[values.length];
                break;
            }
            case 2: {
                results = new Extension[values.length];
                break;
            }
            case 1: 
            case 4: {
                results = new ConfigurationElement[values.length];
            }
        }
        int i = 0;
        while (i < values.length) {
            results[i] = (RegistryObject)this.basicGetObject(values[i], type);
            ++i;
        }
        return results;
    }

    synchronized ExtensionPoint getExtensionPointObject(String xptUniqueId) {
        int id = this.extensionPoints.get(xptUniqueId);
        if (id == Integer.MIN_VALUE) {
            return null;
        }
        return (ExtensionPoint)this.getObject(id, (byte)3);
    }

    public Handle getHandle(int id, byte type) {
        switch (type) {
            case 3: {
                return new ExtensionPointHandle(this, id);
            }
            case 2: {
                return new ExtensionHandle(this, id);
            }
            case 1: {
                return new ConfigurationElementHandle(this, id);
            }
        }
        return new ThirdLevelConfigurationElementHandle(this, id);
    }

    public Handle[] getHandles(int[] ids, byte type) {
        Handle[] results = null;
        int nbrId = ids.length;
        switch (type) {
            case 3: {
                if (nbrId == 0) {
                    return ExtensionPointHandle.EMPTY_ARRAY;
                }
                results = new ExtensionPointHandle[nbrId];
                int i = 0;
                while (i < nbrId) {
                    results[i] = new ExtensionPointHandle(this, ids[i]);
                    ++i;
                }
                break;
            }
            case 2: {
                if (nbrId == 0) {
                    return ExtensionHandle.EMPTY_ARRAY;
                }
                results = new ExtensionHandle[nbrId];
                int i = 0;
                while (i < nbrId) {
                    results[i] = new ExtensionHandle(this, ids[i]);
                    ++i;
                }
                break;
            }
            case 1: {
                if (nbrId == 0) {
                    return ConfigurationElementHandle.EMPTY_ARRAY;
                }
                results = new ConfigurationElementHandle[nbrId];
                int i = 0;
                while (i < nbrId) {
                    results[i] = new ConfigurationElementHandle(this, ids[i]);
                    ++i;
                }
                break;
            }
            case 4: {
                if (nbrId == 0) {
                    return ConfigurationElementHandle.EMPTY_ARRAY;
                }
                results = new ThirdLevelConfigurationElementHandle[nbrId];
                int i = 0;
                while (i < nbrId) {
                    results[i] = new ThirdLevelConfigurationElementHandle(this, ids[i]);
                    ++i;
                }
                break;
            }
        }
        return results;
    }

    synchronized ExtensionPointHandle[] getExtensionPointsHandles() {
        return (ExtensionPointHandle[])this.getHandles(this.extensionPoints.getValues(), (byte)3);
    }

    synchronized ExtensionPointHandle getExtensionPointHandle(String xptUniqueId) {
        int id = this.extensionPoints.get(xptUniqueId);
        if (id == Integer.MIN_VALUE) {
            return null;
        }
        return (ExtensionPointHandle)this.getHandle(id, (byte)3);
    }

    private Object load(int id, byte type) {
        TableReader reader = this.registry.getTableReader();
        if (this.fileOffsets == null) {
            return null;
        }
        int offset = this.fileOffsets.get(id);
        if (offset == Integer.MIN_VALUE) {
            return null;
        }
        switch (type) {
            case 1: {
                return reader.loadConfigurationElement(offset);
            }
            case 4: {
                return reader.loadThirdLevelConfigurationElements(offset, this);
            }
            case 2: {
                return reader.loadExtension(offset);
            }
        }
        return reader.loadExtensionPointTree(offset, this);
    }

    synchronized int[] getExtensionsFrom(String contributorId) {
        KeyedElement tmp = this.newContributions.getByKey(contributorId);
        if (tmp == null) {
            tmp = this.getFormerContributions().getByKey(contributorId);
        }
        if (tmp == null) {
            return EMPTY_INT_ARRAY;
        }
        return ((Contribution)tmp).getExtensions();
    }

    synchronized boolean addExtensionPoint(ExtensionPoint currentExtPoint, boolean hold) {
        String uniqueId = currentExtPoint.getUniqueIdentifier();
        if (this.extensionPoints.get(uniqueId) != Integer.MIN_VALUE) {
            return false;
        }
        this.add(currentExtPoint, hold);
        this.extensionPoints.put(uniqueId, currentExtPoint.getObjectId());
        return true;
    }

    synchronized void removeExtensionPoint(String extensionPointId) {
        int pointId = this.extensionPoints.removeKey(extensionPointId);
        if (pointId == Integer.MIN_VALUE) {
            return;
        }
        this.remove(pointId, true);
    }

    public boolean isDirty() {
        return this.isDirty;
    }

    public void markDirty() {
        this.isDirty = true;
    }

    synchronized void removeContribution(Object contributorId) {
        boolean removed = this.newContributions.removeByKey(contributorId);
        if (!removed && (removed = this.getFormerContributions().removeByKey(contributorId))) {
            this.formerContributions = this.getFormerContributions();
        }
        if (removed) {
            this.isDirty = true;
            return;
        }
    }

    private Map getOrphans() {
        HashMap result = this.orphanExtensions;
        if (this.orphanExtensions == null && !this.fromCache) {
            result = new HashMap();
            this.orphanExtensions = result;
        } else if (this.orphanExtensions == null || (result = (HashMap)(this.orphanExtensions instanceof SoftReference ? ((SoftReference)this.orphanExtensions).get() : this.orphanExtensions)) == null) {
            result = this.registry.getTableReader().loadOrphans();
            this.orphanExtensions = new SoftReference<HashMap>(result);
        }
        return result;
    }

    void addOrphans(String extensionPoint, int[] extensions) {
        Map orphans = this.getOrphans();
        int[] existingOrphanExtensions = (int[])orphans.get(extensionPoint);
        if (existingOrphanExtensions != null) {
            int[] newOrphanExtensions = new int[existingOrphanExtensions.length + extensions.length];
            System.arraycopy(existingOrphanExtensions, 0, newOrphanExtensions, 0, existingOrphanExtensions.length);
            System.arraycopy(extensions, 0, newOrphanExtensions, existingOrphanExtensions.length, extensions.length);
            orphans.put(extensionPoint, newOrphanExtensions);
        } else {
            orphans.put(extensionPoint, extensions);
        }
        this.markOrphansHasDirty(orphans);
    }

    void markOrphansHasDirty(Map orphans) {
        this.orphanExtensions = orphans;
    }

    void addOrphan(String extensionPoint, int extension) {
        Map orphans = this.getOrphans();
        int[] existingOrphanExtensions = (int[])orphans.get(extensionPoint);
        if (existingOrphanExtensions != null) {
            int[] newOrphanExtensions = new int[existingOrphanExtensions.length + 1];
            System.arraycopy(existingOrphanExtensions, 0, newOrphanExtensions, 0, existingOrphanExtensions.length);
            newOrphanExtensions[existingOrphanExtensions.length] = extension;
            orphans.put(extensionPoint, newOrphanExtensions);
        } else {
            orphans.put(extensionPoint, new int[]{extension});
        }
        this.markOrphansHasDirty(orphans);
    }

    int[] removeOrphans(String extensionPoint) {
        Map orphans = this.getOrphans();
        int[] existingOrphanExtensions = (int[])orphans.remove(extensionPoint);
        if (existingOrphanExtensions != null) {
            this.markOrphansHasDirty(orphans);
        }
        return existingOrphanExtensions;
    }

    void removeOrphan(String extensionPoint, int extension) {
        Map orphans = this.getOrphans();
        int[] existingOrphanExtensions = (int[])orphans.get(extensionPoint);
        if (existingOrphanExtensions == null) {
            return;
        }
        this.markOrphansHasDirty(orphans);
        int newSize = existingOrphanExtensions.length - 1;
        if (newSize == 0) {
            orphans.remove(extensionPoint);
            return;
        }
        int[] newOrphanExtensions = new int[existingOrphanExtensions.length - 1];
        int i = 0;
        int j = 0;
        while (i < existingOrphanExtensions.length) {
            if (extension != existingOrphanExtensions[i]) {
                newOrphanExtensions[j++] = existingOrphanExtensions[i];
            }
            ++i;
        }
        orphans.put(extensionPoint, newOrphanExtensions);
    }

    Map getOrphanExtensions() {
        return this.getOrphans();
    }

    int getNextId() {
        return this.nextId;
    }

    HashtableOfStringAndInt getExtensionPoints() {
        return this.extensionPoints;
    }

    KeyedHashSet[] getContributions() {
        return new KeyedHashSet[]{this.newContributions, this.getFormerContributions()};
    }

    HashMap getContributors() {
        if (this.contributors == null) {
            this.contributors = !this.fromCache ? new HashMap() : this.registry.getTableReader().loadContributors();
        }
        return this.contributors;
    }

    synchronized RegistryContributor getContributor(String id) {
        RegistryContributor contributor = (RegistryContributor)this.getContributors().get(id);
        if (contributor != null) {
            return contributor;
        }
        if (this.removedContributors != null) {
            return (RegistryContributor)this.removedContributors.get(id);
        }
        return null;
    }

    synchronized void addContributor(RegistryContributor newContributor) {
        String key = newContributor.getActualId();
        if (!this.getContributors().containsKey(key)) {
            this.isDirty = true;
            if (this.removedContributors != null) {
                this.removedContributors.remove(key);
            }
            this.getContributors().put(key, newContributor);
        }
    }

    synchronized void removeContributor(String id) {
        this.isDirty = true;
        RegistryContributor removed = (RegistryContributor)this.getContributors().remove(id);
        if (removed != null) {
            if (this.removedContributors == null) {
                this.removedContributors = new HashMap();
            }
            this.removedContributors.put(id, removed);
        }
    }

    KeyedHashSet getNamespacesIndex() {
        if (this.namespacesIndex == null) {
            this.namespacesIndex = !this.fromCache ? new KeyedHashSet(0) : this.registry.getTableReader().loadNamespaces();
        }
        return this.namespacesIndex;
    }

    private RegistryIndexElement getNamespaceIndex(String namespaceName) {
        RegistryIndexElement indexElement = (RegistryIndexElement)this.getNamespacesIndex().getByKey(namespaceName);
        if (indexElement == null) {
            indexElement = new RegistryIndexElement(namespaceName);
            this.namespacesIndex.add(indexElement);
        }
        return indexElement;
    }

    synchronized Map getAssociatedObjects(String contributionId) {
        int[] xpts = this.getExtensionPointsFrom(contributionId);
        int[] exts = this.getExtensionsFrom(contributionId);
        HashMap<Integer, RegistryObject> actualObjects = new HashMap<Integer, RegistryObject>(xpts.length + exts.length);
        int i = 0;
        while (i < exts.length) {
            Extension tmp = (Extension)this.basicGetObject(exts[i], (byte)2);
            actualObjects.put(new Integer(exts[i]), tmp);
            this.collectChildren(tmp, 0, actualObjects);
            ++i;
        }
        i = 0;
        while (i < xpts.length) {
            ExtensionPoint xpt = (ExtensionPoint)this.basicGetObject(xpts[i], (byte)3);
            actualObjects.put(new Integer(xpts[i]), xpt);
            ++i;
        }
        return actualObjects;
    }

    synchronized void addAssociatedObjects(Map map, RegistryObject registryObject) {
        this.collectChildren(registryObject, 0, map);
    }

    synchronized void addNavigableObjects(Map associatedObjects) {
        HashMap<Integer, RegistryObject> result = new HashMap<Integer, RegistryObject>();
        Iterator iter = associatedObjects.values().iterator();
        while (iter.hasNext()) {
            String name;
            Map orphans;
            Integer extensionIndex;
            Extension tmp;
            int j;
            int[] extensions;
            RegistryObject object = (RegistryObject)iter.next();
            if (object instanceof Extension) {
                ExtensionPoint extPoint = this.getExtensionPointObject(((Extension)object).getExtensionPointIdentifier());
                if (extPoint == null) continue;
                Integer extPointIndex = new Integer(extPoint.getKeyHashCode());
                if (!associatedObjects.containsKey(extPointIndex)) {
                    result.put(new Integer(extPoint.getKeyHashCode()), extPoint);
                }
                extensions = extPoint.getRawChildren();
                j = 0;
                while (j < extensions.length) {
                    tmp = (Extension)this.basicGetObject(extensions[j], (byte)2);
                    if (tmp != null && !associatedObjects.containsKey(extensionIndex = new Integer(extensions[j]))) {
                        result.put(extensionIndex, tmp);
                        this.collectChildren(tmp, 0, result);
                    }
                    ++j;
                }
                continue;
            }
            if (!(object instanceof ExtensionPoint) || (extensions = (int[])(orphans = this.getOrphans()).get(name = ((ExtensionPoint)object).getUniqueIdentifier())) == null) continue;
            j = 0;
            while (j < extensions.length) {
                tmp = (Extension)this.basicGetObject(extensions[j], (byte)2);
                if (tmp != null && !associatedObjects.containsKey(extensionIndex = new Integer(extensions[j]))) {
                    result.put(extensionIndex, tmp);
                    this.collectChildren(tmp, 0, result);
                }
                ++j;
            }
        }
        associatedObjects.putAll(result);
    }

    synchronized void removeObjects(Map associatedObjects) {
        Collection allValues = associatedObjects.values();
        Iterator iter = allValues.iterator();
        while (iter.hasNext()) {
            RegistryObject toRemove = (RegistryObject)iter.next();
            this.remove(toRemove.getObjectId(), true);
            if (!(toRemove instanceof ExtensionPoint)) continue;
            this.removeExtensionPoint(((ExtensionPoint)toRemove).getUniqueIdentifier());
        }
    }

    IObjectManager createDelegatingObjectManager(Map object) {
        return new TemporaryObjectManager(object, this);
    }

    private void collectChildren(RegistryObject ce, int level, Map collector) {
        ConfigurationElement[] children = (ConfigurationElement[])this.getObjects(ce.getRawChildren(), (byte)(level == 0 || ce.noExtraData() ? 1 : 4));
        int j = 0;
        while (j < children.length) {
            collector.put(new Integer(children[j].getObjectId()), children[j]);
            this.collectChildren(children[j], level + 1, collector);
            ++j;
        }
    }

    public void close() {
    }

    public ExtensionRegistry getRegistry() {
        return this.registry;
    }

    private boolean unlinkChildFromContributions(KeyedElement[] contributions, int id) {
        int i = 0;
        while (i < contributions.length) {
            Contribution candidate = (Contribution)contributions[i];
            if (candidate != null && candidate.hasChild(id)) {
                candidate.unlinkChild(id);
                if (candidate.isEmpty()) {
                    this.removeContribution(candidate.getContributorId());
                }
                return true;
            }
            ++i;
        }
        return false;
    }

    synchronized boolean unlinkChildFromContributions(int id) {
        if (this.unlinkChildFromContributions(this.newContributions.elements, id)) {
            return true;
        }
        return this.unlinkChildFromContributions(this.getFormerContributions().elements, id);
    }

    public synchronized ExtensionPointHandle[] getExtensionPointsFromNamespace(String namespaceName) {
        RegistryIndexElement indexElement = this.getNamespaceIndex(namespaceName);
        int[] namespaceExtensionPoints = indexElement.getExtensionPoints();
        return (ExtensionPointHandle[])this.getHandles(namespaceExtensionPoints, (byte)3);
    }

    public synchronized ExtensionHandle[] getExtensionsFromNamespace(String namespaceName) {
        RegistryIndexElement indexElement = this.getNamespaceIndex(namespaceName);
        int[] namespaceExtensions = indexElement.getExtensions();
        ArrayList<Handle> tmp = new ArrayList<Handle>();
        Extension[] exts = (Extension[])this.getObjects(namespaceExtensions, (byte)2);
        int i = 0;
        while (i < exts.length) {
            if (this.getExtensionPointObject(exts[i].getExtensionPointIdentifier()) != null) {
                tmp.add(this.getHandle(exts[i].getObjectId(), (byte)2));
            }
            ++i;
        }
        if (tmp.size() == 0) {
            return EMPTY_EXTENSIONS_ARRAY;
        }
        ExtensionHandle[] result = new ExtensionHandle[tmp.size()];
        return tmp.toArray(result);
    }

    public ExtensionHandle[] getExtensionsFromContributor(String contributorId) {
        int[] ids = this.getExtensionsFrom(contributorId);
        return (ExtensionHandle[])this.getHandles(ids, (byte)2);
    }

    public ExtensionPointHandle[] getExtensionPointsFromContributor(String contributorId) {
        int[] ids = this.getExtensionPointsFrom(contributorId);
        return (ExtensionPointHandle[])this.getHandles(ids, (byte)3);
    }
}

