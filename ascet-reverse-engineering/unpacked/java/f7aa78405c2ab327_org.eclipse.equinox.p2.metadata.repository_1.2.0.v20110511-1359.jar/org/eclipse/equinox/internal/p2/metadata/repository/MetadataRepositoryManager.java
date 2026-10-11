/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.internal.p2.repository.helpers.AbstractRepositoryManager
 *  org.eclipse.equinox.internal.p2.repository.helpers.LocationProperties
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.repository.IRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 *  org.eclipse.equinox.p2.repository.metadata.spi.MetadataRepositoryFactory
 */
package org.eclipse.equinox.internal.p2.metadata.repository;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.repository.helpers.AbstractRepositoryManager;
import org.eclipse.equinox.internal.p2.repository.helpers.LocationProperties;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.repository.IRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.spi.MetadataRepositoryFactory;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MetadataRepositoryManager
extends AbstractRepositoryManager<IInstallableUnit>
implements IMetadataRepositoryManager {
    public MetadataRepositoryManager(IProvisioningAgent agent) {
        super(agent);
    }

    public void addRepository(IMetadataRepository repository) {
        super.addRepository((IRepository)repository, true, null);
    }

    public IMetadataRepository createRepository(URI location, String name, String type, Map<String, String> properties) throws ProvisionException {
        return (IMetadataRepository)this.doCreateRepository(location, name, type, properties);
    }

    protected IRepository<IInstallableUnit> factoryCreate(URI location, String name, String type, Map<String, String> properties, IExtension extension) throws ProvisionException {
        MetadataRepositoryFactory factory = (MetadataRepositoryFactory)this.createExecutableExtension(extension, "factory");
        if (factory == null) {
            return null;
        }
        factory.setAgent(this.agent);
        return factory.create(location, name, type, properties);
    }

    protected IRepository<IInstallableUnit> factoryLoad(URI location, IExtension extension, int flags, SubMonitor monitor) throws ProvisionException {
        MetadataRepositoryFactory factory = (MetadataRepositoryFactory)this.createExecutableExtension(extension, "factory");
        if (factory == null) {
            return null;
        }
        factory.setAgent(this.agent);
        return factory.load(location, flags, (IProgressMonitor)monitor);
    }

    protected String getBundleId() {
        return "org.eclipse.equinox.p2.metadata.repository";
    }

    protected String getDefaultSuffix() {
        return "content.xml";
    }

    public IMetadataRepository getRepository(URI location) {
        return (IMetadataRepository)this.basicGetRepository(location);
    }

    protected String getRepositoryProviderExtensionPointId() {
        return "org.eclipse.equinox.p2.metadata.repository.metadataRepositories";
    }

    protected String[] getPreferredRepositorySearchOrder(LocationProperties properties) {
        return properties.getMetadataFactorySearchOrder();
    }

    protected String getRepositorySystemProperty() {
        return "eclipse.p2.metadataRepository";
    }

    protected int getRepositoryType() {
        return 0;
    }

    public IMetadataRepository loadRepository(URI location, IProgressMonitor monitor) throws ProvisionException {
        return this.loadRepository(location, 0, monitor);
    }

    public IMetadataRepository loadRepository(URI location, int flags, IProgressMonitor monitor) throws ProvisionException {
        return (IMetadataRepository)this.loadRepository(location, monitor, null, flags);
    }

    public IMetadataRepository refreshRepository(URI location, IProgressMonitor monitor) throws ProvisionException {
        return (IMetadataRepository)this.basicRefreshRepository(location, monitor);
    }
}

