/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 *  org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.spi.AbstractArtifactRepository
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.io.File;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;
import org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.spi.AbstractArtifactRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AggregatedBundleRepository
extends AbstractArtifactRepository
implements IFileArtifactRepository {
    private static final String REPOSITORY_TYPE;
    private final Collection<IFileArtifactRepository> bundleRepositories;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.touchpoint.eclipse.AggregatedBundleRepository");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        REPOSITORY_TYPE = clazz.getName();
    }

    public AggregatedBundleRepository(IProvisioningAgent agent, Collection<IFileArtifactRepository> bundleRepositories) {
        super(agent, REPOSITORY_TYPE, REPOSITORY_TYPE, "1.0", null, null, null, null);
        this.bundleRepositories = bundleRepositories;
    }

    public File getArtifactFile(IArtifactKey key) {
        for (IFileArtifactRepository repository : this.bundleRepositories) {
            File artifactFile = repository.getArtifactFile(key);
            if (artifactFile == null) continue;
            return artifactFile;
        }
        return null;
    }

    public File getArtifactFile(IArtifactDescriptor descriptor) {
        for (IFileArtifactRepository repository : this.bundleRepositories) {
            File artifactFile = repository.getArtifactFile(descriptor);
            if (artifactFile == null) continue;
            return artifactFile;
        }
        return null;
    }

    public boolean contains(IArtifactDescriptor descriptor) {
        for (IFileArtifactRepository repository : this.bundleRepositories) {
            if (!repository.contains(descriptor)) continue;
            return true;
        }
        return false;
    }

    public boolean contains(IArtifactKey key) {
        for (IFileArtifactRepository repository : this.bundleRepositories) {
            if (!repository.contains(key)) continue;
            return true;
        }
        return false;
    }

    public IArtifactDescriptor[] getArtifactDescriptors(IArtifactKey key) {
        HashSet<IArtifactDescriptor> artifactDescriptors = new HashSet<IArtifactDescriptor>();
        for (IFileArtifactRepository repository : this.bundleRepositories) {
            IArtifactDescriptor[] descriptors = repository.getArtifactDescriptors(key);
            if (descriptors == null) continue;
            artifactDescriptors.addAll(Arrays.asList(descriptors));
        }
        return artifactDescriptors.toArray(new IArtifactDescriptor[artifactDescriptors.size()]);
    }

    public IStatus getArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.artifact_retrieval_unsupported);
    }

    public IStatus getRawArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.artifact_retrieval_unsupported);
    }

    public IStatus getArtifacts(IArtifactRequest[] requests, IProgressMonitor monitor) {
        throw new UnsupportedOperationException(Messages.artifact_retrieval_unsupported);
    }

    public OutputStream getOutputStream(IArtifactDescriptor descriptor) {
        throw new UnsupportedOperationException(Messages.artifact_write_unsupported);
    }

    public Collection<IFileArtifactRepository> testGetBundleRepositories() {
        return this.bundleRepositories;
    }

    public IQueryResult<IArtifactKey> query(IQuery<IArtifactKey> query, IProgressMonitor monitor) {
        IQueryable queryable = QueryUtil.compoundQueryable(this.bundleRepositories);
        return queryable.query(query, monitor);
    }

    public IQueryable<IArtifactDescriptor> descriptorQueryable() {
        ArrayList<IQueryable> descQueryables = new ArrayList<IQueryable>(this.bundleRepositories.size());
        for (IFileArtifactRepository repository : this.bundleRepositories) {
            descQueryables.add(repository.descriptorQueryable());
        }
        return QueryUtil.compoundQueryable(descQueryables);
    }
}

