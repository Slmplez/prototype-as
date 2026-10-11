/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.spi.MetadataRepositoryFactory
 */
package org.eclipse.equinox.internal.p2.engine;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.internal.p2.engine.ProfileMetadataRepository;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.spi.MetadataRepositoryFactory;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProfileMetadataRepositoryFactory
extends MetadataRepositoryFactory {
    public IMetadataRepository create(URI location, String name, String type, Map<String, String> properties) throws ProvisionException {
        return null;
    }

    public IMetadataRepository load(URI location, int flags, IProgressMonitor monitor) throws ProvisionException {
        if ((flags & 1) > 0) {
            return null;
        }
        return new ProfileMetadataRepository(this.getAgent(), location, monitor);
    }
}

