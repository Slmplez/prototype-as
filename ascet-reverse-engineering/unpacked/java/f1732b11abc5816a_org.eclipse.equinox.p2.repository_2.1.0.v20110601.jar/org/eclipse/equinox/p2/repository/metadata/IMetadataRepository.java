/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.core.IPool
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.p2.repository.metadata;

import java.util.Collection;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.core.IPool;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.repository.IRepository;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IMetadataRepository
extends IRepository<IInstallableUnit> {
    public void addInstallableUnits(Collection<IInstallableUnit> var1);

    public void addReferences(Collection<? extends IRepositoryReference> var1);

    public Collection<IRepositoryReference> getReferences();

    public boolean removeInstallableUnits(Collection<IInstallableUnit> var1);

    public void removeAll();

    public IStatus executeBatch(IRunnableWithProgress var1, IProgressMonitor var2);

    public void compress(IPool<IInstallableUnit> var1);
}

