/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 */
package org.eclipse.equinox.internal.p2.garbagecollector;

import org.eclipse.equinox.internal.p2.garbagecollector.MarkSet;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;

public abstract class MarkSetProvider {
    public abstract MarkSet[] getMarkSets(IProvisioningAgent var1, IProfile var2);

    public abstract IArtifactRepository getRepository(IProvisioningAgent var1, IProfile var2);
}

