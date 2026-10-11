/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.p2.repository.artifact;

import java.io.OutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.repository.IRepository;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IArtifactRepository
extends IRepository<IArtifactKey> {
    public static final int CODE_RETRY = 13;

    public IArtifactDescriptor createArtifactDescriptor(IArtifactKey var1);

    public IArtifactKey createArtifactKey(String var1, String var2, Version var3);

    public void addDescriptor(IArtifactDescriptor var1);

    public void addDescriptor(IArtifactDescriptor var1, IProgressMonitor var2);

    public void addDescriptors(IArtifactDescriptor[] var1);

    public void addDescriptors(IArtifactDescriptor[] var1, IProgressMonitor var2);

    public boolean contains(IArtifactDescriptor var1);

    public boolean contains(IArtifactKey var1);

    public IStatus getArtifact(IArtifactDescriptor var1, OutputStream var2, IProgressMonitor var3);

    public IStatus getRawArtifact(IArtifactDescriptor var1, OutputStream var2, IProgressMonitor var3);

    public IArtifactDescriptor[] getArtifactDescriptors(IArtifactKey var1);

    public IStatus getArtifacts(IArtifactRequest[] var1, IProgressMonitor var2);

    public OutputStream getOutputStream(IArtifactDescriptor var1) throws ProvisionException;

    public IQueryable<IArtifactDescriptor> descriptorQueryable();

    public void removeAll();

    public void removeAll(IProgressMonitor var1);

    public void removeDescriptor(IArtifactDescriptor var1);

    public void removeDescriptor(IArtifactDescriptor var1, IProgressMonitor var2);

    public void removeDescriptor(IArtifactKey var1);

    public void removeDescriptor(IArtifactKey var1, IProgressMonitor var2);

    public void removeDescriptors(IArtifactDescriptor[] var1);

    public void removeDescriptors(IArtifactDescriptor[] var1, IProgressMonitor var2);

    public void removeDescriptors(IArtifactKey[] var1);

    public void removeDescriptors(IArtifactKey[] var1, IProgressMonitor var2);

    public IStatus executeBatch(IRunnableWithProgress var1, IProgressMonitor var2);
}

