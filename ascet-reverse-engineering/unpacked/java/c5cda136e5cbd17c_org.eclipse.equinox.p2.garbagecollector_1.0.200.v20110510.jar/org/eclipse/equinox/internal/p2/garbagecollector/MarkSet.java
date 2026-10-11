/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 */
package org.eclipse.equinox.internal.p2.garbagecollector;

import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;

public class MarkSet {
    private IArtifactKey[] keys;
    private IArtifactRepository repo;

    public MarkSet(IArtifactKey[] inKeys, IArtifactRepository inRepo) {
        Assert.isNotNull((Object)inKeys);
        Assert.isNotNull((Object)inRepo);
        this.keys = inKeys;
        this.repo = inRepo;
    }

    public IArtifactKey[] getKeys() {
        return this.keys;
    }

    public IArtifactRepository getRepo() {
        return this.repo;
    }
}

