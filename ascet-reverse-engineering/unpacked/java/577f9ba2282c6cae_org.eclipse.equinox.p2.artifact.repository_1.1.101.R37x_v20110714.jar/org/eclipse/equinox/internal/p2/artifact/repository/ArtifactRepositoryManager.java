/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.repository.helpers.AbstractRepositoryManager
 *  org.eclipse.equinox.internal.p2.repository.helpers.LocationProperties
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.repository.IRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactRepositoryFactory
 */
package org.eclipse.equinox.internal.p2.artifact.repository;

import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.artifact.repository.MirrorRequest;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.repository.helpers.AbstractRepositoryManager;
import org.eclipse.equinox.internal.p2.repository.helpers.LocationProperties;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.IRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactRepositoryFactory;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArtifactRepositoryManager
extends AbstractRepositoryManager<IArtifactKey>
implements IArtifactRepositoryManager {
    public ArtifactRepositoryManager(IProvisioningAgent agent) {
        super(agent);
    }

    public void addRepository(IArtifactRepository repository) {
        super.addRepository((IRepository)repository, true, null);
    }

    public IArtifactRequest createMirrorRequest(IArtifactKey key, IArtifactRepository destination, Map<String, String> destinationDescriptorProperties, Map<String, String> destinationRepositoryProperties) {
        return new MirrorRequest(key, destination, destinationDescriptorProperties, destinationRepositoryProperties, this.getTransport());
    }

    public IArtifactRepository createRepository(URI location, String name, String type, Map<String, String> properties) throws ProvisionException {
        return (IArtifactRepository)this.doCreateRepository(location, name, type, properties);
    }

    public IArtifactRepository getRepository(URI location) {
        return (IArtifactRepository)this.basicGetRepository(location);
    }

    protected IRepository<IArtifactKey> factoryCreate(URI location, String name, String type, Map<String, String> properties, IExtension extension) throws ProvisionException {
        ArtifactRepositoryFactory factory = (ArtifactRepositoryFactory)this.createExecutableExtension(extension, "factory");
        if (factory == null) {
            return null;
        }
        factory.setAgent(this.agent);
        return factory.create(location, name, type, properties);
    }

    protected IRepository<IArtifactKey> factoryLoad(URI location, IExtension extension, int flags, SubMonitor monitor) throws ProvisionException {
        ArtifactRepositoryFactory factory = (ArtifactRepositoryFactory)this.createExecutableExtension(extension, "factory");
        if (factory == null) {
            return null;
        }
        factory.setAgent(this.agent);
        return factory.load(location, flags, (IProgressMonitor)monitor);
    }

    protected String getBundleId() {
        return "org.eclipse.equinox.p2.artifact.repository";
    }

    protected String getDefaultSuffix() {
        return "artifacts.xml";
    }

    protected String getRepositoryProviderExtensionPointId() {
        return "org.eclipse.equinox.p2.artifact.repository.artifactRepositories";
    }

    protected String getRepositorySystemProperty() {
        return "eclipse.p2.artifactRepository";
    }

    protected int getRepositoryType() {
        return 1;
    }

    public IArtifactRepository loadRepository(URI location, IProgressMonitor monitor) throws ProvisionException {
        return this.loadRepository(location, 0, monitor);
    }

    public IArtifactRepository loadRepository(URI location, int flags, IProgressMonitor monitor) throws ProvisionException {
        return (IArtifactRepository)this.loadRepository(location, monitor, null, flags);
    }

    public IArtifactRepository refreshRepository(URI location, IProgressMonitor monitor) throws ProvisionException {
        return (IArtifactRepository)this.basicRefreshRepository(location, monitor);
    }

    protected String[] getPreferredRepositorySearchOrder(LocationProperties properties) {
        return properties.getArtifactFactorySearchOrder();
    }

    protected void restoreSpecialRepositories() {
        IAgentLocation location = (IAgentLocation)this.getAgent().getService(IAgentLocation.SERVICE_NAME);
        if (location == null) {
            return;
        }
        URI cacheLocation = URIUtil.append((URI)location.getDataArea("org.eclipse.equinox.p2.core"), (String)"cache/");
        try {
            this.loadRepository(cacheLocation, null);
            return;
        }
        catch (ProvisionException e) {
            if (e.getStatus().getCode() != 1000) {
                LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", "Error occurred while loading download cache.", (Throwable)e));
            }
            try {
                HashMap<String, String> properties = new HashMap<String, String>(1);
                properties.put("p2.system", Boolean.TRUE.toString());
                this.createRepository(cacheLocation, "download cache", "org.eclipse.equinox.p2.artifact.repository.simpleRepository", properties);
            }
            catch (ProvisionException e2) {
                LogHelper.log((ProvisionException)e2);
            }
            return;
        }
    }
}

