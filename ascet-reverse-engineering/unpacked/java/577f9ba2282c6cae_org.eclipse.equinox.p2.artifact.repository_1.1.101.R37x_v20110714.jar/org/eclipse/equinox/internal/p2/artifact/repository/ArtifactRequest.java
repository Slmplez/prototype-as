/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.repository.Transport
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 */
package org.eclipse.equinox.internal.p2.artifact.repository;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.repository.Transport;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;

public abstract class ArtifactRequest
implements IArtifactRequest {
    private static final Status DEFAULT_STATUS = new Status(4, "org.eclipse.equinox.p2.artifact.repository", "default");
    protected IArtifactKey artifact;
    protected String resolvedKey;
    protected IArtifactRepository source;
    protected IStatus result = DEFAULT_STATUS;
    protected Transport transport = null;

    public ArtifactRequest(IArtifactKey key, Transport transport) {
        this.artifact = key;
        this.transport = transport;
    }

    public IArtifactKey getArtifactKey() {
        return this.artifact;
    }

    public IStatus getResult() {
        if (this.result == DEFAULT_STATUS) {
            return new Status(4, "org.eclipse.equinox.p2.artifact.repository", "No repository found containing: " + this.getArtifactKey().toString());
        }
        return this.result;
    }

    protected IArtifactRepository getSourceRepository() {
        return this.source;
    }

    public abstract void perform(IArtifactRepository var1, IProgressMonitor var2);

    protected void setResult(IStatus value) {
        this.result = value;
    }

    protected void setSourceRepository(IArtifactRepository value) {
        this.source = value;
    }
}

