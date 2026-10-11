/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryIO
 *  org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState
 *  org.eclipse.equinox.p2.core.IPool
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.core.WeakPool
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.index.IIndex
 *  org.eclipse.equinox.p2.metadata.index.IIndexProvider
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.ICompositeRepository
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository$RepositoryState
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.metadata.repository;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.metadata.repository.Messages;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryIO;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState;
import org.eclipse.equinox.p2.core.IPool;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.core.WeakPool;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.ICompositeRepository;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositeMetadataRepository
extends AbstractMetadataRepository
implements ICompositeRepository<IInstallableUnit>,
IIndexProvider<IInstallableUnit> {
    public static final String REPOSITORY_TYPE;
    public static final String PI_REPOSITORY_TYPE = "compositeMetadataRepository";
    public static final String PROP_ATOMIC_LOADING = "p2.atomic.composite.loading";
    public static final boolean ATOMIC_LOADING_DEFAULT = false;
    private static final Integer REPOSITORY_VERSION;
    public static final String XML_EXTENSION = ".xml";
    private static final String JAR_EXTENSION = ".jar";
    private List<URI> childrenURIs = new ArrayList<URI>();
    private List<IMetadataRepository> loadedRepos = new ArrayList<IMetadataRepository>();
    private IMetadataRepositoryManager manager;
    private IPool<IInstallableUnit> iuPool = new WeakPool();
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        REPOSITORY_TYPE = clazz.getName();
        REPOSITORY_VERSION = new Integer(1);
    }

    public static CompositeMetadataRepository createMemoryComposite(IProvisioningAgent agent) {
        if (agent == null) {
            return null;
        }
        IMetadataRepositoryManager repoManager = (IMetadataRepositoryManager)agent.getService(IMetadataRepositoryManager.SERVICE_NAME);
        if (repoManager == null) {
            return null;
        }
        try {
            long time = System.currentTimeMillis();
            URI repositoryURI = new URI(new StringBuffer("memory:").append(String.valueOf(time)).toString());
            while (repoManager.contains(repositoryURI)) {
                repositoryURI = new URI(new StringBuffer("memory:").append(String.valueOf(++time)).toString());
            }
            CompositeMetadataRepository result = (CompositeMetadataRepository)repoManager.createRepository(repositoryURI, repositoryURI.toString(), "org.eclipse.equinox.p2.metadata.repository.compositeRepository", null);
            repoManager.removeRepository(repositoryURI);
            return result;
        }
        catch (ProvisionException e) {
            LogHelper.log((ProvisionException)e);
        }
        catch (URISyntaxException uRISyntaxException) {}
        return null;
    }

    private IMetadataRepositoryManager getManager() {
        return this.manager;
    }

    private boolean isLocal() {
        return "file".equalsIgnoreCase(this.getLocation().getScheme());
    }

    public boolean isModifiable() {
        return this.isLocal();
    }

    CompositeMetadataRepository(IMetadataRepositoryManager manager, CompositeRepositoryState state, IProgressMonitor monitor) throws ProvisionException {
        super(manager.getAgent(), state.getName(), state.getType(), state.getVersion(), state.getLocation(), state.getDescription(), state.getProvider(), state.getProperties());
        this.manager = manager;
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)(100 * state.getChildren().length));
        ArrayList<URI> repositoriesToBeRemovedOnFailure = new ArrayList<URI>();
        boolean failOnChildFailure = this.shouldFailOnChildFailure(state);
        URI[] uRIArray = state.getChildren();
        int n = uRIArray.length;
        int n2 = 0;
        while (n2 < n) {
            URI child = uRIArray[n2];
            this.addChild(child, false, (IProgressMonitor)sub.newChild(100), failOnChildFailure, repositoriesToBeRemovedOnFailure);
            ++n2;
        }
    }

    CompositeMetadataRepository(IMetadataRepositoryManager manager, URI location, String name, Map<String, String> properties) {
        super(manager.getAgent(), name == null ? (location != null ? location.toString() : "") : name, REPOSITORY_TYPE, REPOSITORY_VERSION.toString(), location, null, null, properties);
        this.manager = manager;
        this.save();
    }

    public CompositeRepositoryState toState() {
        CompositeRepositoryState result = new CompositeRepositoryState();
        result.setName(this.getName());
        result.setType(this.getType());
        result.setVersion(this.getVersion());
        result.setLocation(this.getLocation());
        result.setDescription(this.getDescription());
        result.setProvider(this.getProvider());
        result.setProperties(this.getProperties());
        result.setChildren(this.childrenURIs.toArray(new URI[this.childrenURIs.size()]));
        return result;
    }

    public IQueryResult<IInstallableUnit> query(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        try {
            IQueryable queryable = QueryUtil.compoundQueryable(this.loadedRepos);
            IQueryResult iQueryResult = queryable.query(query, monitor);
            return iQueryResult;
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    private void addChild(URI childURI, boolean save, IProgressMonitor monitor, boolean propagateException, List<URI> repositoriesToBeRemovedOnFailure) throws ProvisionException {
        block6: {
            SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor);
            URI absolute = URIUtil.makeAbsolute((URI)childURI, (URI)this.getLocation());
            if (this.childrenURIs.contains(childURI) || this.childrenURIs.contains(absolute)) {
                sub.done();
                return;
            }
            this.childrenURIs.add(childURI);
            if (save) {
                this.save();
            }
            try {
                boolean currentLoaded = this.getManager().contains(absolute);
                IMetadataRepository currentRepo = this.getManager().loadRepository(absolute, (IProgressMonitor)sub);
                if (!currentLoaded) {
                    this.getManager().setEnabled(absolute, false);
                    this.getManager().setRepositoryProperty(absolute, "p2.system", String.valueOf(true));
                    if (propagateException) {
                        repositoriesToBeRemovedOnFailure.add(absolute);
                    }
                }
                currentRepo.compress(this.iuPool);
                this.loadedRepos.add(currentRepo);
            }
            catch (ProvisionException e) {
                LogHelper.log((ProvisionException)e);
                if (!propagateException) break block6;
                this.removeFromRepoManager(repositoriesToBeRemovedOnFailure);
                String msg = NLS.bind((String)Messages.io_failedRead, (Object)this.getLocation());
                throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.metadata.repository", 1002, msg, (Throwable)e));
            }
        }
    }

    public void addChild(URI childURI) {
        try {
            this.addChild(childURI, true, null, false, null);
        }
        catch (ProvisionException provisionException) {}
    }

    public void removeChild(URI childURI) {
        URI other;
        boolean removed = this.childrenURIs.remove(childURI);
        URI uRI = other = childURI.isAbsolute() ? URIUtil.makeRelative((URI)childURI, (URI)this.getLocation()) : URIUtil.makeAbsolute((URI)childURI, (URI)this.getLocation());
        if (!removed) {
            removed = this.childrenURIs.remove(other);
        }
        if (removed) {
            IMetadataRepository found = null;
            for (IMetadataRepository current : this.loadedRepos) {
                URI repoLocation = current.getLocation();
                if (!URIUtil.sameURI((URI)childURI, (URI)repoLocation) && !URIUtil.sameURI((URI)other, (URI)repoLocation)) continue;
                found = current;
                break;
            }
            if (found != null) {
                this.loadedRepos.remove(found);
            }
            this.save();
        }
    }

    public void removeAllChildren() {
        this.childrenURIs.clear();
        this.loadedRepos.clear();
        this.save();
    }

    public void addInstallableUnits(Collection<IInstallableUnit> installableUnits) {
        throw new UnsupportedOperationException("Cannot add IUs to a composite repository");
    }

    public synchronized void removeAll() {
        throw new UnsupportedOperationException("Cannot remove IUs from a composite repository");
    }

    public boolean removeInstallableUnits(Collection<IInstallableUnit> installableUnits) {
        throw new UnsupportedOperationException("Cannot remove IUs from a composite repository");
    }

    private static File getActualLocation(URI location, String extension) {
        File spec = URIUtil.toFile((URI)location);
        String path = spec.getAbsolutePath();
        if (path.endsWith(new StringBuffer("compositeContent").append(extension).toString())) {
            return spec;
        }
        path = path.endsWith("/") ? new StringBuffer(String.valueOf(path)).append("compositeContent").toString() : new StringBuffer(String.valueOf(path)).append("/compositeContent").toString();
        return new File(new StringBuffer(String.valueOf(path)).append(extension).toString());
    }

    public static File getActualLocation(URI location) {
        return CompositeMetadataRepository.getActualLocation(location, XML_EXTENSION);
    }

    public synchronized void addReferences(Collection<? extends IRepositoryReference> references) {
        throw new UnsupportedOperationException("Cannot add References to a composite repository");
    }

    public Collection<IRepositoryReference> getReferences() {
        HashSet<IRepositoryReference> allRefs = new HashSet<IRepositoryReference>();
        for (IMetadataRepository child : this.loadedRepos) {
            allRefs.addAll(child.getReferences());
        }
        return allRefs;
    }

    private void save() {
        if (!this.isModifiable()) {
            return;
        }
        File file = CompositeMetadataRepository.getActualLocation(this.getLocation());
        File jarFile = CompositeMetadataRepository.getActualLocation(this.getLocation(), JAR_EXTENSION);
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
            super.setProperty("p2.timestamp", Long.toString(System.currentTimeMillis()));
            new CompositeRepositoryIO().write(this.toState(), output, PI_REPOSITORY_TYPE);
        }
        catch (IOException e) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.metadata.repository", 1003, NLS.bind((String)Messages.io_failedWrite, (Object)this.getLocation()), (Throwable)e));
        }
    }

    public List<URI> getChildren() {
        ArrayList<URI> result = new ArrayList<URI>();
        for (URI childURI : this.childrenURIs) {
            result.add(URIUtil.makeAbsolute((URI)childURI, (URI)this.getLocation()));
        }
        return result;
    }

    public static URI getActualLocationURI(URI base, String extension) {
        if (extension == null) {
            extension = XML_EXTENSION;
        }
        return URIUtil.append((URI)base, (String)new StringBuffer("compositeContent").append(extension).toString());
    }

    public void initialize(AbstractMetadataRepository.RepositoryState state) {
        this.setName(state.Name);
        this.setType(state.Type);
        this.setVersion(state.Version.toString());
        this.setProvider(state.Provider);
        this.setDescription(state.Description);
        this.setLocation(state.Location);
        this.setProperties(state.Properties);
    }

    public IIndex<IInstallableUnit> getIndex(String memberName) {
        IQueryable queryable = QueryUtil.compoundQueryable(this.loadedRepos);
        if (queryable instanceof IIndexProvider) {
            return ((IIndexProvider)queryable).getIndex(memberName);
        }
        return null;
    }

    public Iterator<IInstallableUnit> everything() {
        IQueryable queryable = QueryUtil.compoundQueryable(this.loadedRepos);
        if (queryable instanceof IIndexProvider) {
            return ((IIndexProvider)queryable).everything();
        }
        return Collections.EMPTY_LIST.iterator();
    }

    public Object getManagedProperty(Object client, String memberName, Object key) {
        IQueryable queryable = QueryUtil.compoundQueryable(this.loadedRepos);
        if (queryable instanceof IIndexProvider) {
            return ((IIndexProvider)queryable).getManagedProperty(client, memberName, key);
        }
        return null;
    }

    private void removeFromRepoManager(List<URI> currentLoadedRepositories) {
        if (currentLoadedRepositories == null) {
            return;
        }
        for (URI loadedChild : currentLoadedRepositories) {
            this.manager.removeRepository(loadedChild);
        }
    }

    private boolean shouldFailOnChildFailure(CompositeRepositoryState state) {
        String value;
        Map repoProperties = state.getProperties();
        boolean failOnChildFailure = false;
        if (repoProperties != null && (value = (String)repoProperties.get(PROP_ATOMIC_LOADING)) != null) {
            failOnChildFailure = Boolean.valueOf(value);
        }
        return failOnChildFailure;
    }
}

