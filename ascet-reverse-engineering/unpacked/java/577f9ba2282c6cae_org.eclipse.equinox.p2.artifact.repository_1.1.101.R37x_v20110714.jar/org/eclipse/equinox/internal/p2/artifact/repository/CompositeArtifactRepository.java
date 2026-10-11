/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryIO
 *  org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.ICompositeRepository
 *  org.eclipse.equinox.p2.repository.IRunnableWithProgress
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 *  org.eclipse.equinox.p2.repository.artifact.spi.AbstractArtifactRepository
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.artifact.repository;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.artifact.repository.Messages;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryIO;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.ICompositeRepository;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;
import org.eclipse.equinox.p2.repository.artifact.spi.AbstractArtifactRepository;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositeArtifactRepository
extends AbstractArtifactRepository
implements ICompositeRepository<IArtifactKey> {
    public static final String REPOSITORY_TYPE;
    private static final Integer REPOSITORY_VERSION;
    public static final String XML_EXTENSION = ".xml";
    public static final String JAR_EXTENSION = ".jar";
    public static final String CONTENT_FILENAME = "compositeArtifacts";
    public static final String PI_REPOSITORY_TYPE = "compositeArtifactRepository";
    public static final String PROP_ATOMIC_LOADING = "p2.atomic.composite.loading";
    public static final boolean ATOMIC_LOADING_DEFAULT = false;
    private List<URI> childrenURIs = new ArrayList<URI>();
    private List<ChildInfo> loadedRepos = new ArrayList<ChildInfo>();
    private IArtifactRepositoryManager manager;
    private boolean disableSave;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.artifact.repository.CompositeArtifactRepository");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        REPOSITORY_TYPE = clazz.getName();
        REPOSITORY_VERSION = new Integer(1);
    }

    public static CompositeArtifactRepository createMemoryComposite(IProvisioningAgent agent) {
        if (agent == null) {
            return null;
        }
        IArtifactRepositoryManager manager = (IArtifactRepositoryManager)agent.getService(IArtifactRepositoryManager.SERVICE_NAME);
        if (manager == null) {
            return null;
        }
        try {
            long time = System.currentTimeMillis();
            URI repositoryURI = new URI(new StringBuffer("memory:").append(String.valueOf(time)).toString());
            while (manager.contains(repositoryURI)) {
                repositoryURI = new URI(new StringBuffer("memory:").append(String.valueOf(++time)).toString());
            }
            CompositeArtifactRepository result = (CompositeArtifactRepository)manager.createRepository(repositoryURI, repositoryURI.toString(), "org.eclipse.equinox.p2.artifact.repository.compositeRepository", null);
            manager.removeRepository(repositoryURI);
            return result;
        }
        catch (ProvisionException e) {
            LogHelper.log((ProvisionException)e);
        }
        catch (URISyntaxException uRISyntaxException) {}
        return null;
    }

    private IArtifactRepositoryManager getManager() {
        return this.manager;
    }

    CompositeArtifactRepository(IArtifactRepositoryManager manager, CompositeRepositoryState state, IProgressMonitor monitor) throws ProvisionException {
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

    protected CompositeArtifactRepository(IArtifactRepositoryManager manager, URI location, String repositoryName, Map<String, String> properties) {
        super(manager.getAgent(), repositoryName, REPOSITORY_TYPE, REPOSITORY_VERSION.toString(), location, null, null, properties);
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

    private static <T> boolean add(List<T> list, T obj) {
        return list.contains(obj) ? false : list.add(obj);
    }

    public static URI getActualLocation(URI base, boolean compress) {
        return CompositeArtifactRepository.getActualLocation(base, compress ? JAR_EXTENSION : XML_EXTENSION);
    }

    private static URI getActualLocation(URI base, String extension) {
        return URIUtil.append((URI)base, (String)new StringBuffer(CONTENT_FILENAME).append(extension).toString());
    }

    private boolean isLocal() {
        return "file".equalsIgnoreCase(this.getLocation().getScheme());
    }

    public boolean isModifiable() {
        return this.isLocal();
    }

    public void addChild(URI childURI) {
        try {
            this.addChild(childURI, true, null, false, null);
        }
        catch (ProvisionException provisionException) {}
    }

    private void addChild(URI childURI, boolean save, IProgressMonitor monitor, boolean propagateException, List<URI> repositoriesToBeRemovedOnFailure) throws ProvisionException {
        block5: {
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
                IArtifactRepository repo = this.load(childURI, (IProgressMonitor)sub);
                if (!currentLoaded && propagateException) {
                    repositoriesToBeRemovedOnFailure.add(absolute);
                }
                this.loadedRepos.add(new ChildInfo(repo));
            }
            catch (ProvisionException e) {
                LogHelper.log((ProvisionException)e);
                if (!propagateException) break block5;
                this.removeFromRepoManager(repositoriesToBeRemovedOnFailure);
                String msg = NLS.bind((String)Messages.io_failedRead, (Object)this.getLocation());
                throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1002, msg, (Throwable)e));
            }
        }
    }

    public void removeChild(URI childURI) {
        URI other;
        boolean removed = this.childrenURIs.remove(childURI);
        URI uRI = other = childURI.isAbsolute() ? URIUtil.makeRelative((URI)childURI, (URI)this.getLocation()) : URIUtil.makeAbsolute((URI)childURI, (URI)this.getLocation());
        if (!removed) {
            removed = this.childrenURIs.remove(other);
        }
        if (removed) {
            ChildInfo found = null;
            for (ChildInfo current : this.loadedRepos) {
                URI repoLocation = current.repo.getLocation();
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

    public List<URI> getChildren() {
        ArrayList<URI> result = new ArrayList<URI>();
        for (URI uri : this.childrenURIs) {
            result.add(URIUtil.makeAbsolute((URI)uri, (URI)this.getLocation()));
        }
        return result;
    }

    public List<IArtifactRepository> getLoadedChildren() {
        ArrayList<IArtifactRepository> result = new ArrayList<IArtifactRepository>(this.loadedRepos.size());
        for (ChildInfo info : this.loadedRepos) {
            result.add(info.repo);
        }
        return result;
    }

    public synchronized void addDescriptor(IArtifactDescriptor descriptor, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.exception_unsupportedAddToComposite);
    }

    public void addDescriptors(IArtifactDescriptor[] descriptors, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.exception_unsupportedAddToComposite);
    }

    public void removeDescriptor(IArtifactKey key, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.exception_unsupportedRemoveFromComposite);
    }

    public void removeDescriptors(IArtifactKey[] keys, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.exception_unsupportedRemoveFromComposite);
    }

    public void removeDescriptor(IArtifactDescriptor descriptor, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.exception_unsupportedRemoveFromComposite);
    }

    public void removeDescriptors(IArtifactDescriptor[] descriptors, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.exception_unsupportedRemoveFromComposite);
    }

    public synchronized void removeAll(IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.exception_unsupportedRemoveFromComposite);
    }

    public OutputStream getOutputStream(IArtifactDescriptor descriptor) {
        throw new UnsupportedOperationException(Messages.exception_unsupportedGetOutputStream);
    }

    public boolean contains(IArtifactKey key) {
        for (ChildInfo current : this.loadedRepos) {
            if (!current.isGood() || !current.repo.contains(key)) continue;
            return true;
        }
        return false;
    }

    public boolean contains(IArtifactDescriptor descriptor) {
        for (ChildInfo current : this.loadedRepos) {
            if (!current.isGood() || !current.repo.contains(descriptor)) continue;
            return true;
        }
        return false;
    }

    public IArtifactDescriptor[] getArtifactDescriptors(IArtifactKey key) {
        ArrayList result = new ArrayList();
        for (ChildInfo current : this.loadedRepos) {
            if (!current.isGood()) continue;
            IArtifactDescriptor[] tempResult = current.repo.getArtifactDescriptors(key);
            int i = 0;
            while (i < tempResult.length) {
                CompositeArtifactRepository.add(result, tempResult[i]);
                ++i;
            }
        }
        return result.toArray(new IArtifactDescriptor[result.size()]);
    }

    public IStatus getArtifacts(IArtifactRequest[] requests, IProgressMonitor monitor) {
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)requests.length);
        MultiStatus multiStatus = new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 0, Messages.message_childrenRepos, null);
        for (ChildInfo childInfo : this.loadedRepos) {
            if (requests.length == 0) break;
            IArtifactRepository current = childInfo.repo;
            IArtifactRequest[] applicable = this.getRequestsForRepository(current, requests);
            IStatus dlStatus = current.getArtifacts(applicable, (IProgressMonitor)subMonitor.newChild(requests.length));
            multiStatus.add(dlStatus);
            if (dlStatus.getSeverity() == 8) {
                return multiStatus;
            }
            requests = this.filterUnfetched(requests);
            subMonitor.setWorkRemaining(requests.length);
            if (!monitor.isCanceled()) continue;
            return Status.CANCEL_STATUS;
        }
        return multiStatus;
    }

    public IStatus getArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        return this.getRawOrNormalArtifact(descriptor, destination, monitor, false);
    }

    public IStatus getRawArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        return this.getRawOrNormalArtifact(descriptor, destination, monitor, true);
    }

    private IStatus getRawOrNormalArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor, boolean raw) {
        Iterator<ChildInfo> childIterator = this.loadedRepos.iterator();
        while (childIterator.hasNext()) {
            ChildInfo current = childIterator.next();
            if (current.isGood() && current.repo.contains(descriptor)) {
                IStatus status;
                IStatus iStatus = status = raw ? current.repo.getRawArtifact(descriptor, destination, monitor) : current.repo.getArtifact(descriptor, destination, monitor);
                if (status.isOK()) {
                    this.resetChildFailures();
                    return Status.OK_STATUS;
                }
                if (status.getCode() == 13 || status.getCode() == 8) {
                    return status;
                }
                current.setBad(true);
                if (childIterator.hasNext()) {
                    return new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 13, new IStatus[]{status}, NLS.bind((String)Messages.retryRequest, (Object)current.repo.getLocation(), (Object)descriptor.getArtifactKey()), null);
                }
                this.resetChildFailures();
                return status;
            }
            if (!monitor.isCanceled()) continue;
            return Status.CANCEL_STATUS;
        }
        return new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.artifact_not_found, (Object)descriptor));
    }

    private void resetChildFailures() {
        for (ChildInfo current : this.loadedRepos) {
            current.setBad(false);
        }
    }

    private IArtifactRequest[] filterUnfetched(IArtifactRequest[] requests) {
        ArrayList<IArtifactRequest> filteredRequests = new ArrayList<IArtifactRequest>();
        int i = 0;
        while (i < requests.length) {
            if (requests[i].getResult() == null || !requests[i].getResult().isOK()) {
                filteredRequests.add(requests[i]);
            }
            ++i;
        }
        IArtifactRequest[] filteredArtifactRequests = new IArtifactRequest[filteredRequests.size()];
        filteredRequests.toArray(filteredArtifactRequests);
        return filteredArtifactRequests;
    }

    private IArtifactRequest[] getRequestsForRepository(IArtifactRepository repository, IArtifactRequest[] requests) {
        ArrayList<IArtifactRequest> applicable = new ArrayList<IArtifactRequest>();
        int i = 0;
        while (i < requests.length) {
            if (repository.contains(requests[i].getArtifactKey())) {
                applicable.add(requests[i]);
            }
            ++i;
        }
        return applicable.toArray(new IArtifactRequest[applicable.size()]);
    }

    protected void save() {
        if (this.disableSave) {
            return;
        }
        if (!this.isModifiable()) {
            return;
        }
        boolean compress = "true".equalsIgnoreCase(this.getProperty("p2.compressed"));
        OutputStream os = null;
        try {
            URI actualLocation = CompositeArtifactRepository.getActualLocation(this.getLocation(), false);
            File artifactsFile = URIUtil.toFile((URI)actualLocation);
            File jarFile = URIUtil.toFile((URI)CompositeArtifactRepository.getActualLocation(this.getLocation(), true));
            if (!compress) {
                if (jarFile.exists()) {
                    jarFile.delete();
                }
                if (!artifactsFile.exists()) {
                    artifactsFile.getParentFile().mkdirs();
                }
                os = new FileOutputStream(artifactsFile);
            } else {
                if (artifactsFile.exists()) {
                    artifactsFile.delete();
                }
                if (!jarFile.exists()) {
                    if (!jarFile.getParentFile().exists()) {
                        jarFile.getParentFile().mkdirs();
                    }
                    jarFile.createNewFile();
                }
                JarOutputStream jOs = new JarOutputStream(new FileOutputStream(jarFile));
                jOs.putNextEntry(new JarEntry(new Path(artifactsFile.getAbsolutePath()).lastSegment()));
                os = jOs;
            }
            super.setProperty("p2.timestamp", Long.toString(System.currentTimeMillis()));
            new CompositeRepositoryIO().write(this.toState(), os, PI_REPOSITORY_TYPE);
        }
        catch (IOException e) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1003, NLS.bind((String)Messages.io_failedWrite, (Object)this.getLocation()), (Throwable)e));
        }
    }

    private IArtifactRepository load(URI repoURI, IProgressMonitor monitor) throws ProvisionException {
        repoURI = URIUtil.makeAbsolute((URI)repoURI, (URI)this.getLocation());
        boolean loaded = this.getManager().contains(repoURI);
        IArtifactRepository repo = this.getManager().loadRepository(repoURI, monitor);
        if (!loaded) {
            this.getManager().setEnabled(repoURI, false);
            this.getManager().setRepositoryProperty(repoURI, "p2.system", String.valueOf(true));
        }
        return repo;
    }

    public IQueryResult<IArtifactKey> query(IQuery<IArtifactKey> query, IProgressMonitor monitor) {
        ArrayList<IArtifactRepository> repos = new ArrayList<IArtifactRepository>();
        for (ChildInfo info : this.loadedRepos) {
            if (!info.isGood()) continue;
            repos.add(info.repo);
        }
        IQueryable queryable = QueryUtil.compoundQueryable(repos);
        return queryable.query(query, monitor);
    }

    public IQueryable<IArtifactDescriptor> descriptorQueryable() {
        ArrayList<IQueryable> repos = new ArrayList<IQueryable>();
        for (ChildInfo info : this.loadedRepos) {
            if (!info.isGood()) continue;
            repos.add(info.repo.descriptorQueryable());
        }
        return QueryUtil.compoundQueryable(repos);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive exception aggregation
     */
    public IStatus executeBatch(IRunnableWithProgress runnable, IProgressMonitor monitor) {
        Object result = null;
        CompositeArtifactRepository compositeArtifactRepository = this;
        synchronized (compositeArtifactRepository) {
            block19: {
                try {
                    this.disableSave = true;
                    runnable.run(monitor);
                }
                catch (OperationCanceledException oce) {
                    Status status = new Status(8, "org.eclipse.equinox.p2.artifact.repository", oce.getMessage(), (Throwable)oce);
                    this.disableSave = false;
                    try {
                        this.save();
                    }
                    catch (Exception e) {
                        result = result != null ? new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e.getMessage(), (Throwable)e) : new Status(4, "org.eclipse.equinox.p2.artifact.repository", e.getMessage(), (Throwable)e);
                    }
                    return status;
                }
                catch (Throwable e) {
                    try {
                        result = new Status(4, "org.eclipse.equinox.p2.artifact.repository", e.getMessage(), e);
                        this.disableSave = false;
                    }
                    catch (Throwable throwable) {
                        this.disableSave = false;
                        try {
                            this.save();
                        }
                        catch (Exception e2) {
                            result = result != null ? new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e2.getMessage(), (Throwable)e2) : new Status(4, "org.eclipse.equinox.p2.artifact.repository", e2.getMessage(), (Throwable)e2);
                        }
                        throw throwable;
                    }
                    try {
                        this.save();
                    }
                    catch (Exception e3) {
                        if (result != null) {
                            result = new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e3.getMessage(), (Throwable)e3);
                            break block19;
                        }
                        result = new Status(4, "org.eclipse.equinox.p2.artifact.repository", e3.getMessage(), (Throwable)e3);
                    }
                    break block19;
                }
                this.disableSave = false;
                try {
                    this.save();
                }
                catch (Exception e) {
                    result = result != null ? new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e.getMessage(), (Throwable)e) : new Status(4, "org.eclipse.equinox.p2.artifact.repository", e.getMessage(), (Throwable)e);
                }
            }
        }
        if (result == null) {
            result = Status.OK_STATUS;
        }
        return result;
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

    private static class ChildInfo {
        IArtifactRepository repo;
        boolean good = true;

        ChildInfo(IArtifactRepository IArtifactRepository2) {
            this.repo = IArtifactRepository2;
        }

        void setBad(boolean bad) {
            this.good = !bad;
        }

        boolean isGood() {
            return this.good;
        }
    }
}

