/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.metadata.IUMap
 *  org.eclipse.equinox.internal.p2.metadata.TranslationSupport
 *  org.eclipse.equinox.internal.p2.metadata.index.CapabilityIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IdIndex
 *  org.eclipse.equinox.internal.p2.metadata.index.IndexProvider
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent
 *  org.eclipse.equinox.p2.core.IPool
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.KeyWithLocale
 *  org.eclipse.equinox.p2.metadata.index.IIndex
 *  org.eclipse.equinox.p2.metadata.index.IIndexProvider
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.IRunnableWithProgress
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository$RepositoryState
 */
package org.eclipse.equinox.internal.p2.metadata.repository;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EventObject;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.metadata.IUMap;
import org.eclipse.equinox.internal.p2.metadata.TranslationSupport;
import org.eclipse.equinox.internal.p2.metadata.index.CapabilityIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IdIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IndexProvider;
import org.eclipse.equinox.internal.p2.metadata.repository.MetadataRepositoryIO;
import org.eclipse.equinox.internal.p2.metadata.repository.MetadataRepositoryManager;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent;
import org.eclipse.equinox.p2.core.IPool;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.KeyWithLocale;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LocalMetadataRepository
extends AbstractMetadataRepository
implements IIndexProvider<IInstallableUnit> {
    private static final String CONTENT_FILENAME = "content";
    private static final String REPOSITORY_TYPE;
    private static final Integer REPOSITORY_VERSION;
    private static final String JAR_EXTENSION = ".jar";
    private static final String XML_EXTENSION = ".xml";
    protected IUMap units = new IUMap();
    protected HashSet<IRepositoryReference> repositories = new HashSet();
    private IIndex<IInstallableUnit> idIndex;
    private IIndex<IInstallableUnit> capabilityIndex;
    private TranslationSupport translationSupport;
    private boolean snapshotNeeded = false;
    private boolean disableSave = false;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.metadata.repository.LocalMetadataRepository");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        REPOSITORY_TYPE = clazz.getName();
        REPOSITORY_VERSION = new Integer(1);
    }

    private static File getActualLocation(URI location, String extension) {
        File spec = URIUtil.toFile((URI)location);
        String path = spec.getAbsolutePath();
        if (path.endsWith(new StringBuffer(CONTENT_FILENAME).append(extension).toString())) {
            return spec;
        }
        path = path.endsWith("/") ? new StringBuffer(String.valueOf(path)).append(CONTENT_FILENAME).toString() : new StringBuffer(String.valueOf(path)).append("/content").toString();
        return new File(new StringBuffer(String.valueOf(path)).append(extension).toString());
    }

    public static File getActualLocation(URI location) {
        return LocalMetadataRepository.getActualLocation(location, XML_EXTENSION);
    }

    public LocalMetadataRepository(IProvisioningAgent agent) {
        super(agent);
    }

    public LocalMetadataRepository(IProvisioningAgent agent, URI location, String name, Map<String, String> properties) {
        super(agent, name == null ? (location != null ? location.toString() : "") : name, REPOSITORY_TYPE, REPOSITORY_VERSION.toString(), location, null, null, properties);
        if (!location.getScheme().equals("file")) {
            throw new IllegalArgumentException(new StringBuffer("Invalid local repository location: ").append(location).toString());
        }
        this.save();
    }

    public synchronized void addInstallableUnits(Collection<IInstallableUnit> installableUnits) {
        if (installableUnits == null || installableUnits.isEmpty()) {
            return;
        }
        if (this.snapshotNeeded) {
            this.units = this.units.clone();
            this.idIndex = null;
            this.snapshotNeeded = false;
        }
        this.units.addAll(installableUnits);
        this.capabilityIndex = null;
        this.save();
    }

    public void addReferences(Collection<? extends IRepositoryReference> references) {
        this.assertModifiable();
        if (this.repositories.addAll(references)) {
            this.save();
        }
    }

    public Collection<IRepositoryReference> getReferences() {
        return Collections.unmodifiableCollection(this.repositories);
    }

    public synchronized IIndex<IInstallableUnit> getIndex(String memberName) {
        if ("id".equals(memberName)) {
            this.snapshotNeeded = true;
            if (this.idIndex == null) {
                this.idIndex = new IdIndex(this.units);
            }
            return this.idIndex;
        }
        if ("providedCapabilities".equals(memberName)) {
            this.snapshotNeeded = true;
            if (this.capabilityIndex == null) {
                this.capabilityIndex = new CapabilityIndex(this.units.iterator());
            }
            return this.capabilityIndex;
        }
        return null;
    }

    public synchronized Object getManagedProperty(Object client, String memberName, Object key) {
        if (!(client instanceof IInstallableUnit)) {
            return null;
        }
        IInstallableUnit iu = (IInstallableUnit)client;
        if ("translatedProperties".equals(memberName)) {
            if (this.translationSupport == null) {
                this.translationSupport = new TranslationSupport((IQueryable)this);
            }
            return key instanceof KeyWithLocale ? this.translationSupport.getIUProperty(iu, (KeyWithLocale)key) : this.translationSupport.getIUProperty(iu, key.toString());
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void initialize(AbstractMetadataRepository.RepositoryState state) {
        LocalMetadataRepository localMetadataRepository = this;
        synchronized (localMetadataRepository) {
            this.setName(state.Name);
            this.setType(state.Type);
            this.setVersion(state.Version.toString());
            this.setProvider(state.Provider);
            this.setDescription(state.Description);
            this.setLocation(state.Location);
            this.setProperties(state.Properties);
            this.units.addAll(state.Units);
            this.repositories.addAll(Arrays.asList(state.Repositories));
        }
        this.publishRepositoryReferences();
    }

    public void publishRepositoryReferences() {
        IProvisioningEventBus bus = (IProvisioningEventBus)this.getProvisioningAgent().getService(IProvisioningEventBus.SERVICE_NAME);
        if (bus == null) {
            return;
        }
        List<IRepositoryReference> repositoriesSnapshot = this.createRepositoriesSnapshot();
        for (IRepositoryReference reference : repositoriesSnapshot) {
            boolean isEnabled = (reference.getOptions() & 1) != 0;
            bus.publishEvent((EventObject)new RepositoryEvent(reference.getLocation(), reference.getType(), 4, isEnabled));
        }
    }

    private synchronized List<IRepositoryReference> createRepositoriesSnapshot() {
        if (this.repositories.isEmpty()) {
            return CollectionUtils.emptyList();
        }
        return new ArrayList<IRepositoryReference>(this.repositories);
    }

    public synchronized void initializeAfterLoad(URI aLocation) {
        this.setLocation(aLocation);
    }

    public boolean isModifiable() {
        return true;
    }

    public IQueryResult<IInstallableUnit> query(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
        return IndexProvider.query((IIndexProvider)this, query, (IProgressMonitor)monitor);
    }

    public synchronized Iterator<IInstallableUnit> everything() {
        this.snapshotNeeded = true;
        return this.units.iterator();
    }

    public synchronized void removeAll() {
        if (this.snapshotNeeded) {
            this.units = new IUMap();
            this.idIndex = null;
            this.snapshotNeeded = false;
        } else {
            this.units.clear();
        }
        this.capabilityIndex = null;
        this.save();
    }

    public synchronized boolean removeInstallableUnits(Collection<IInstallableUnit> installableUnits) {
        boolean changed = false;
        if (installableUnits != null && !installableUnits.isEmpty()) {
            changed = true;
            if (this.snapshotNeeded) {
                this.units = this.units.clone();
                this.idIndex = null;
                this.snapshotNeeded = false;
            }
            this.units.removeAll(installableUnits);
            this.capabilityIndex = null;
        }
        if (changed) {
            this.save();
        }
        return changed;
    }

    protected void save() {
        if (this.disableSave) {
            return;
        }
        File file = LocalMetadataRepository.getActualLocation(this.getLocation());
        File jarFile = LocalMetadataRepository.getActualLocation(this.getLocation(), JAR_EXTENSION);
        boolean compress = "true".equalsIgnoreCase(this.getProperty("p2.compressed"));
        try {
            OutputStream output = null;
            if (!compress) {
                if (jarFile.exists()) {
                    jarFile.delete();
                }
                if (!file.exists()) {
                    if (!file.getParentFile().exists()) {
                        file.getParentFile().mkdirs();
                    }
                    file.createNewFile();
                }
                output = new FileOutputStream(file);
            } else {
                if (file.exists()) {
                    file.delete();
                }
                if (!jarFile.exists()) {
                    if (!jarFile.getParentFile().exists()) {
                        jarFile.getParentFile().mkdirs();
                    }
                    jarFile.createNewFile();
                }
                JarEntry jarEntry = new JarEntry(file.getName());
                JarOutputStream jOutput = new JarOutputStream(new FileOutputStream(jarFile));
                jOutput.putNextEntry(jarEntry);
                output = jOutput;
            }
            super.setProperty("p2.timestamp", Long.toString(System.currentTimeMillis()), (IProgressMonitor)new NullProgressMonitor());
            new MetadataRepositoryIO(this.getProvisioningAgent()).write((IMetadataRepository)this, output);
        }
        catch (IOException e) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.metadata.repository", 1003, new StringBuffer("Error saving metadata repository: ").append(this.getLocation()).toString(), (Throwable)e));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String setProperty(String key, String newValue, IProgressMonitor monitor) {
        try {
            String oldValue = null;
            LocalMetadataRepository localMetadataRepository = this;
            synchronized (localMetadataRepository) {
                block10: {
                    oldValue = super.setProperty(key, newValue, monitor);
                    if (oldValue != newValue && (oldValue == null || !oldValue.equals(newValue))) break block10;
                    String string = oldValue;
                    return string;
                }
                this.save();
            }
            MetadataRepositoryManager manager = (MetadataRepositoryManager)((Object)this.getProvisioningAgent().getService(IMetadataRepositoryManager.SERVICE_NAME));
            if (manager.removeRepository(this.getLocation())) {
                manager.addRepository((IMetadataRepository)this);
            }
            String string = oldValue;
            return string;
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive exception aggregation
     */
    public IStatus executeBatch(IRunnableWithProgress runnable, IProgressMonitor monitor) {
        Object result = null;
        LocalMetadataRepository localMetadataRepository = this;
        synchronized (localMetadataRepository) {
            block19: {
                try {
                    this.disableSave = true;
                    runnable.run(monitor);
                }
                catch (OperationCanceledException oce) {
                    Status status = new Status(8, "org.eclipse.equinox.p2.metadata.repository", oce.getMessage(), (Throwable)oce);
                    this.disableSave = false;
                    try {
                        this.save();
                    }
                    catch (Exception e) {
                        result = result != null ? new MultiStatus("org.eclipse.equinox.p2.metadata.repository", 4, new IStatus[]{result}, e.getMessage(), (Throwable)e) : new Status(4, "org.eclipse.equinox.p2.metadata.repository", e.getMessage(), (Throwable)e);
                    }
                    return status;
                }
                catch (Throwable e) {
                    try {
                        result = new Status(4, "org.eclipse.equinox.p2.metadata.repository", e.getMessage(), e);
                        this.disableSave = false;
                    }
                    catch (Throwable throwable) {
                        this.disableSave = false;
                        try {
                            this.save();
                        }
                        catch (Exception e2) {
                            result = result != null ? new MultiStatus("org.eclipse.equinox.p2.metadata.repository", 4, new IStatus[]{result}, e2.getMessage(), (Throwable)e2) : new Status(4, "org.eclipse.equinox.p2.metadata.repository", e2.getMessage(), (Throwable)e2);
                        }
                        throw throwable;
                    }
                    try {
                        this.save();
                    }
                    catch (Exception e3) {
                        if (result != null) {
                            result = new MultiStatus("org.eclipse.equinox.p2.metadata.repository", 4, new IStatus[]{result}, e3.getMessage(), (Throwable)e3);
                            break block19;
                        }
                        result = new Status(4, "org.eclipse.equinox.p2.metadata.repository", e3.getMessage(), (Throwable)e3);
                    }
                    break block19;
                }
                this.disableSave = false;
                try {
                    this.save();
                }
                catch (Exception e) {
                    result = result != null ? new MultiStatus("org.eclipse.equinox.p2.metadata.repository", 4, new IStatus[]{result}, e.getMessage(), (Throwable)e) : new Status(4, "org.eclipse.equinox.p2.metadata.repository", e.getMessage(), (Throwable)e);
                }
            }
        }
        if (result == null) {
            result = Status.OK_STATUS;
        }
        return result;
    }

    public void compress(IPool<IInstallableUnit> iuPool) {
        this.units.compress(iuPool);
    }
}

