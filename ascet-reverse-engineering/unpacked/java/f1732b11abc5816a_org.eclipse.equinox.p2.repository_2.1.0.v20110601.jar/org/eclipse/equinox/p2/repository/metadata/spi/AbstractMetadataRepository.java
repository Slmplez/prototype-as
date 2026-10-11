/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.core.IPool
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.p2.repository.metadata.spi;

import java.net.URI;
import java.util.Collection;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.core.IPool;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.spi.AbstractRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractMetadataRepository
extends AbstractRepository<IInstallableUnit>
implements IMetadataRepository {
    public AbstractMetadataRepository(IProvisioningAgent agent) {
        super(agent, "noName", "noType", "noVersion", null, null, null, null);
    }

    public abstract void initialize(RepositoryState var1);

    protected AbstractMetadataRepository(IProvisioningAgent agent, String name, String type, String version, URI location, String description, String provider, Map<String, String> properties) {
        super(agent, name, type, version, location, description, provider, properties);
    }

    @Override
    public void addInstallableUnits(Collection<IInstallableUnit> installableUnits) {
        this.assertModifiable();
    }

    @Override
    public void addReferences(Collection<? extends IRepositoryReference> references) {
        this.assertModifiable();
    }

    @Override
    public void removeAll() {
        this.assertModifiable();
    }

    @Override
    public boolean removeInstallableUnits(Collection<IInstallableUnit> installableUnits) {
        this.assertModifiable();
        return false;
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

    @Override
    public void compress(IPool<IInstallableUnit> iuPool) {
    }

    public static class RepositoryState {
        public String Name;
        public String Type;
        public Version Version;
        public String Provider;
        public String Description;
        public URI Location;
        public Map<String, String> Properties;
        public IInstallableUnit[] Units;
        public IRepositoryReference[] Repositories;
    }
}

