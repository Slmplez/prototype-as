/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 */
package org.eclipse.equinox.p2.repository.artifact;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;

public interface IArtifactRequest {
    public IArtifactKey getArtifactKey();

    public void perform(IArtifactRepository var1, IProgressMonitor var2);

    public IStatus getResult();
}

