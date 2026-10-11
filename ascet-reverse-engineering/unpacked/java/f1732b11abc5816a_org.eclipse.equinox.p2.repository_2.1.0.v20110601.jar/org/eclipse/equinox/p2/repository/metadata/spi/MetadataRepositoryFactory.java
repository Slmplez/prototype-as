/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 */
package org.eclipse.equinox.p2.repository.metadata.spi;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class MetadataRepositoryFactory {
    private IProvisioningAgent agent;

    public abstract IMetadataRepository create(URI var1, String var2, String var3, Map<String, String> var4) throws ProvisionException;

    protected IProvisioningAgent getAgent() {
        return this.agent;
    }

    public abstract IMetadataRepository load(URI var1, int var2, IProgressMonitor var3) throws ProvisionException;

    public void setAgent(IProvisioningAgent agent) {
        this.agent = agent;
    }
}

