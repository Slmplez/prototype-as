/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 */
package org.eclipse.equinox.p2.repository.artifact;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.IRepositoryManager;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IArtifactRepositoryManager
extends IRepositoryManager<IArtifactKey> {
    public static final String SERVICE_NAME;
    public static final IArtifactRequest[] NO_ARTIFACT_REQUEST;
    public static final String TYPE_SIMPLE_REPOSITORY = "org.eclipse.equinox.p2.artifact.repository.simpleRepository";
    public static final String TYPE_COMPOSITE_REPOSITORY = "org.eclipse.equinox.p2.artifact.repository.compositeRepository";

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
        NO_ARTIFACT_REQUEST = new IArtifactRequest[0];
    }

    public IArtifactRequest createMirrorRequest(IArtifactKey var1, IArtifactRepository var2, Map<String, String> var3, Map<String, String> var4);

    public IArtifactRepository createRepository(URI var1, String var2, String var3, Map<String, String> var4) throws ProvisionException;

    public IArtifactRepository loadRepository(URI var1, IProgressMonitor var2) throws ProvisionException;

    public IArtifactRepository loadRepository(URI var1, int var2, IProgressMonitor var3) throws ProvisionException;

    public IArtifactRepository refreshRepository(URI var1, IProgressMonitor var2) throws ProvisionException;
}

