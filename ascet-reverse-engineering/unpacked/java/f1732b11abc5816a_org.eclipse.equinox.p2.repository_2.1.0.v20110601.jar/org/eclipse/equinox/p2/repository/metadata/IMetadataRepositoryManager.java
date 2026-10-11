/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.p2.repository.metadata;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.repository.IRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IMetadataRepositoryManager
extends IRepositoryManager<IInstallableUnit> {
    public static final String SERVICE_NAME;
    public static final String TYPE_SIMPLE_REPOSITORY = "org.eclipse.equinox.p2.metadata.repository.simpleRepository";
    public static final String TYPE_COMPOSITE_REPOSITORY = "org.eclipse.equinox.p2.metadata.repository.compositeRepository";

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public IMetadataRepository createRepository(URI var1, String var2, String var3, Map<String, String> var4) throws ProvisionException, OperationCanceledException;

    public IMetadataRepository loadRepository(URI var1, IProgressMonitor var2) throws ProvisionException, OperationCanceledException;

    public IMetadataRepository loadRepository(URI var1, int var2, IProgressMonitor var3) throws ProvisionException, OperationCanceledException;

    public IMetadataRepository refreshRepository(URI var1, IProgressMonitor var2) throws ProvisionException, OperationCanceledException;
}

