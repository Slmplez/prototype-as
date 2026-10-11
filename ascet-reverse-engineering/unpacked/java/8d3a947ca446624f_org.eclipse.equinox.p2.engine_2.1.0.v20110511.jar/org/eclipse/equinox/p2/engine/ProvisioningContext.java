/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.IRepositoryManager
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 */
package org.eclipse.equinox.p2.engine;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.engine.DebugHelper;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.IRepositoryManager;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProvisioningContext {
    private IProvisioningAgent agent;
    private URI[] artifactRepositories;
    private final List<IInstallableUnit> extraIUs = Collections.synchronizedList(new ArrayList());
    private URI[] metadataRepositories;
    private final Map<String, String> properties = new HashMap<String, String>();
    private Map<String, URI> referencedArtifactRepositories = null;
    private static final String FILE_PROTOCOL = "file";
    private static final Comparator<URI> LOCAL_FIRST_COMPARATOR = new Comparator<URI>(){

        @Override
        public int compare(URI arg0, URI arg1) {
            String protocol0 = arg0.getScheme();
            String protocol1 = arg1.getScheme();
            if (ProvisioningContext.FILE_PROTOCOL.equals(protocol0) && !ProvisioningContext.FILE_PROTOCOL.equals(protocol1)) {
                return -1;
            }
            if (!ProvisioningContext.FILE_PROTOCOL.equals(protocol0) && ProvisioningContext.FILE_PROTOCOL.equals(protocol1)) {
                return 1;
            }
            return 0;
        }
    };
    public static final String FOLLOW_REPOSITORY_REFERENCES = "org.eclipse.equinox.p2.director.followRepositoryReferences";
    private static final String FOLLOW_ARTIFACT_REPOSITORY_REFERENCES = "org.eclipse.equinox.p2.director.followArtifactRepositoryReferences";

    public ProvisioningContext(IProvisioningAgent agent) {
        this.agent = agent;
        this.metadataRepositories = null;
        this.artifactRepositories = null;
        this.setProperty(FOLLOW_ARTIFACT_REPOSITORY_REFERENCES, Boolean.TRUE.toString());
    }

    public IQueryable<IArtifactKey> getArtifactKeys(IProgressMonitor monitor) {
        return QueryUtil.compoundQueryable(this.getLoadedArtifactRepositories(monitor));
    }

    public IQueryable<IArtifactDescriptor> getArtifactDescriptors(IProgressMonitor monitor) {
        List<IArtifactRepository> repos = this.getLoadedArtifactRepositories(monitor);
        ArrayList<IQueryable> descriptorQueryables = new ArrayList<IQueryable>();
        for (IArtifactRepository repo : repos) {
            descriptorQueryables.add(repo.descriptorQueryable());
        }
        return QueryUtil.compoundQueryable(descriptorQueryables);
    }

    public IQueryable<IArtifactRepository> getArtifactRepositories(IProgressMonitor monitor) {
        return new ArtifactRepositoryQueryable(this.getLoadedArtifactRepositories(monitor));
    }

    private List<IArtifactRepository> getLoadedArtifactRepositories(IProgressMonitor monitor) {
        IArtifactRepositoryManager repoManager = (IArtifactRepositoryManager)this.agent.getService(IArtifactRepositoryManager.SERVICE_NAME);
        URI[] repositories = this.artifactRepositories == null ? repoManager.getKnownRepositories(0) : this.artifactRepositories;
        Arrays.sort(repositories, LOCAL_FIRST_COMPARATOR);
        ArrayList<IArtifactRepository> repos = new ArrayList<IArtifactRepository>();
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)((repositories.length + 1) * 100));
        int i = 0;
        while (i < repositories.length) {
            if (sub.isCanceled()) {
                throw new OperationCanceledException();
            }
            try {
                repos.add(repoManager.loadRepository(repositories[i], (IProgressMonitor)sub.newChild(100)));
            }
            catch (ProvisionException provisionException) {}
            if (this.referencedArtifactRepositories != null) {
                this.referencedArtifactRepositories.remove(repositories[i]);
            }
            ++i;
        }
        if (this.referencedArtifactRepositories != null && this.referencedArtifactRepositories.size() > 0 && this.shouldFollowArtifactReferences()) {
            SubMonitor innerSub = SubMonitor.convert((IProgressMonitor)sub.newChild(100), (int)(this.referencedArtifactRepositories.size() * 100));
            for (URI referencedURI : this.referencedArtifactRepositories.values()) {
                try {
                    repos.add(repoManager.loadRepository(referencedURI, (IProgressMonitor)innerSub.newChild(100)));
                }
                catch (ProvisionException provisionException) {}
            }
        }
        return repos;
    }

    private Set<IMetadataRepository> getLoadedMetadataRepositories(IProgressMonitor monitor) {
        IMetadataRepositoryManager repoManager = (IMetadataRepositoryManager)this.agent.getService(IMetadataRepositoryManager.SERVICE_NAME);
        URI[] repositories = this.metadataRepositories == null ? repoManager.getKnownRepositories(0) : this.metadataRepositories;
        HashMap<String, IMetadataRepository> repos = new HashMap<String, IMetadataRepository>();
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)(repositories.length * 100));
        this.referencedArtifactRepositories = new HashMap<String, URI>();
        int i = 0;
        while (i < repositories.length) {
            if (sub.isCanceled()) {
                throw new OperationCanceledException();
            }
            this.loadMetadataRepository(repoManager, repositories[i], repos, this.shouldFollowReferences(), (IProgressMonitor)sub.newChild(100));
            ++i;
        }
        HashSet<IMetadataRepository> set = new HashSet<IMetadataRepository>();
        set.addAll(repos.values());
        return set;
    }

    private void loadMetadataRepository(IMetadataRepositoryManager manager, URI location, HashMap<String, IMetadataRepository> repos, boolean followMetadataRepoReferences, IProgressMonitor monitor) {
        IMetadataRepository repository;
        if (repos.containsKey(location.toString())) {
            return;
        }
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)1000);
        try {
            repository = manager.loadRepository(location, (IProgressMonitor)sub.newChild(500));
        }
        catch (ProvisionException provisionException) {
            return;
        }
        repos.put(location.toString(), repository);
        Collection references = repository.getReferences();
        if (references.size() > 0) {
            IArtifactRepositoryManager artifactManager = (IArtifactRepositoryManager)this.agent.getService(IArtifactRepositoryManager.SERVICE_NAME);
            SubMonitor repoSubMon = SubMonitor.convert((IProgressMonitor)sub.newChild(500), (int)(100 * references.size()));
            for (IRepositoryReference ref : references) {
                try {
                    if (ref.getType() == 0 && followMetadataRepoReferences && this.isEnabled((IRepositoryManager)manager, ref)) {
                        this.loadMetadataRepository(manager, ref.getLocation(), repos, followMetadataRepoReferences, (IProgressMonitor)repoSubMon.newChild(100));
                        continue;
                    }
                    if (ref.getType() != 1 || !this.isEnabled((IRepositoryManager)artifactManager, ref)) continue;
                    this.referencedArtifactRepositories.put(ref.getLocation().toString(), ref.getLocation());
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
        } else {
            sub.done();
        }
    }

    private boolean isEnabled(IRepositoryManager manager, IRepositoryReference reference) {
        return manager.contains(reference.getLocation()) && manager.isEnabled(reference.getLocation()) || !manager.contains(reference.getLocation()) && (reference.getOptions() & 1) == 1;
    }

    private boolean shouldFollowReferences() {
        return Boolean.valueOf(this.getProperty(FOLLOW_REPOSITORY_REFERENCES));
    }

    private boolean shouldFollowArtifactReferences() {
        return Boolean.valueOf(this.getProperty(FOLLOW_ARTIFACT_REPOSITORY_REFERENCES));
    }

    public IQueryable<IInstallableUnit> getMetadata(IProgressMonitor monitor) {
        return QueryUtil.compoundQueryable(this.getLoadedMetadataRepositories(monitor));
    }

    public List<IInstallableUnit> getExtraInstallableUnits() {
        return this.extraIUs;
    }

    public Map<String, String> getProperties() {
        return this.properties;
    }

    public String getProperty(String key) {
        return this.properties.get(key);
    }

    public void setArtifactRepositories(URI[] artifactRepositories) {
        this.artifactRepositories = artifactRepositories;
    }

    public void setMetadataRepositories(URI[] metadataRepositories) {
        this.metadataRepositories = metadataRepositories;
    }

    public void setExtraInstallableUnits(List<IInstallableUnit> extraIUs) {
        this.extraIUs.clear();
        if (extraIUs != null) {
            this.extraIUs.addAll(extraIUs);
        }
    }

    public void setProperty(String key, String value) {
        this.properties.put(key, value);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(new StringBuffer("{artifactRepos=").append(DebugHelper.formatArray(this.artifactRepositories != null ? Arrays.asList(this.artifactRepositories) : null, true, false)).toString());
        buffer.append(new StringBuffer(", metadataRepos=").append(DebugHelper.formatArray(this.metadataRepositories != null ? Arrays.asList(this.metadataRepositories) : null, true, false)).toString());
        buffer.append(new StringBuffer(", properties=").append(this.getProperties()).append("}").toString());
        return buffer.toString();
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class ArtifactRepositoryQueryable
    implements IQueryable<IArtifactRepository> {
        List<IArtifactRepository> repositories;

        ArtifactRepositoryQueryable(List<IArtifactRepository> repositories) {
            this.repositories = repositories;
        }

        public IQueryResult<IArtifactRepository> query(IQuery<IArtifactRepository> query, IProgressMonitor mon) {
            return query.perform(this.repositories.listIterator());
        }
    }
}

