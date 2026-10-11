/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.p2.repository.artifact.spi;

import java.io.OutputStream;
import java.net.URI;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;
import org.eclipse.equinox.p2.repository.spi.AbstractRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractArtifactRepository
extends AbstractRepository<IArtifactKey>
implements IArtifactRepository {
    protected AbstractArtifactRepository(IProvisioningAgent agent, String name, String type, String version, URI location, String description, String provider, Map<String, String> properties) {
        super(agent, name, type, version, location, description, provider, properties);
    }

    @Override
    public abstract boolean contains(IArtifactDescriptor var1);

    @Override
    public abstract boolean contains(IArtifactKey var1);

    @Override
    public abstract IStatus getArtifact(IArtifactDescriptor var1, OutputStream var2, IProgressMonitor var3);

    @Override
    public abstract IArtifactDescriptor[] getArtifactDescriptors(IArtifactKey var1);

    @Override
    public abstract IStatus getArtifacts(IArtifactRequest[] var1, IProgressMonitor var2);

    @Override
    public abstract OutputStream getOutputStream(IArtifactDescriptor var1) throws ProvisionException;

    @Override
    public void addDescriptor(IArtifactDescriptor descriptor, IProgressMonitor monitor) {
        this.assertModifiable();
    }

    @Override
    public void addDescriptor(IArtifactDescriptor descriptor) {
        this.addDescriptor(descriptor, (IProgressMonitor)new NullProgressMonitor());
    }

    @Override
    public void addDescriptors(IArtifactDescriptor[] descriptors, IProgressMonitor monitor) {
        this.assertModifiable();
    }

    @Override
    public void addDescriptors(IArtifactDescriptor[] descriptors) {
        this.addDescriptors(descriptors, (IProgressMonitor)new NullProgressMonitor());
    }

    @Override
    public void removeDescriptor(IArtifactDescriptor descriptor, IProgressMonitor monitor) {
        this.assertModifiable();
    }

    @Override
    public void removeDescriptor(IArtifactDescriptor descriptor) {
        this.removeDescriptor(descriptor, (IProgressMonitor)new NullProgressMonitor());
    }

    @Override
    public void removeDescriptors(IArtifactDescriptor[] descriptors, IProgressMonitor monitor) {
        this.assertModifiable();
    }

    @Override
    public void removeDescriptors(IArtifactDescriptor[] descriptors) {
        this.removeDescriptors(descriptors, (IProgressMonitor)new NullProgressMonitor());
    }

    @Override
    public void removeDescriptor(IArtifactKey key, IProgressMonitor monitor) {
        this.assertModifiable();
    }

    @Override
    public void removeDescriptor(IArtifactKey key) {
        this.removeDescriptor(key, (IProgressMonitor)new NullProgressMonitor());
    }

    @Override
    public void removeDescriptors(IArtifactKey[] keys, IProgressMonitor monitor) {
        this.assertModifiable();
    }

    @Override
    public void removeDescriptors(IArtifactKey[] keys) {
        this.removeDescriptors(keys, (IProgressMonitor)new NullProgressMonitor());
    }

    @Override
    public void removeAll(IProgressMonitor monitor) {
        this.assertModifiable();
    }

    @Override
    public void removeAll() {
        this.removeAll((IProgressMonitor)new NullProgressMonitor());
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof AbstractArtifactRepository)) {
            return false;
        }
        return URIUtil.sameURI((URI)this.getLocation(), (URI)((AbstractArtifactRepository)o).getLocation());
    }

    public int hashCode() {
        return this.getLocation().toString().hashCode() * 87;
    }

    @Override
    public IArtifactDescriptor createArtifactDescriptor(IArtifactKey key) {
        return new ArtifactDescriptor(key);
    }

    @Override
    public IArtifactKey createArtifactKey(String classifier, String id, Version version) {
        return new ArtifactKey(classifier, id, version);
    }

    @Override
    public IStatus executeBatch(IRunnableWithProgress runnable, IProgressMonitor monitor) {
        try {
            runnable.run(monitor);
        }
        catch (OperationCanceledException oce) {
            return new Status(8, "org.eclipse.equinox.p2.repository", oce.getMessage(), (Throwable)oce);
        }
        catch (Exception e) {
            return new Status(4, "org.eclipse.equinox.p2.repository", e.getMessage(), (Throwable)e);
        }
        return Status.OK_STATUS;
    }
}

