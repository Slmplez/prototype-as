/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 */
package org.eclipse.equinox.p2.repository.artifact;

import java.io.File;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;

public interface IFileArtifactRepository
extends IArtifactRepository {
    public File getArtifactFile(IArtifactKey var1);

    public File getArtifactFile(IArtifactDescriptor var1);
}

