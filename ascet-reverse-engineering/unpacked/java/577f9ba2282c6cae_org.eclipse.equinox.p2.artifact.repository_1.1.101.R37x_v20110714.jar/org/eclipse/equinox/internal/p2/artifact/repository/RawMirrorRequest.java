/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.repository.Transport
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.artifact.repository;

import java.io.OutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.artifact.processors.md5.MD5Verifier;
import org.eclipse.equinox.internal.p2.artifact.repository.Messages;
import org.eclipse.equinox.internal.p2.artifact.repository.MirrorRequest;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactRepository;
import org.eclipse.equinox.internal.p2.repository.Transport;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStep;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStepHandler;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.osgi.util.NLS;

public class RawMirrorRequest
extends MirrorRequest {
    protected IArtifactDescriptor sourceDescriptor;
    protected IArtifactDescriptor targetDescriptor;

    public RawMirrorRequest(IArtifactDescriptor sourceDescriptor, IArtifactDescriptor targetDescriptor, IArtifactRepository targetRepository, Transport transport) {
        super(sourceDescriptor.getArtifactKey(), targetRepository, null, null, transport);
        this.sourceDescriptor = sourceDescriptor;
        this.targetDescriptor = targetDescriptor;
    }

    public void perform(IArtifactRepository sourceRepository, IProgressMonitor monitor) {
        monitor.subTask(NLS.bind((String)Messages.downloading, (Object)this.getArtifactKey().getId()));
        this.setSourceRepository(sourceRepository);
        if (this.target.contains(this.targetDescriptor)) {
            this.setResult((IStatus)new Status(1, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.mirror_alreadyExists, (Object)this.targetDescriptor, (Object)this.target)));
            return;
        }
        if (!this.source.contains(this.getArtifactDescriptor())) {
            this.setResult((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.artifact_not_found, (Object)this.getArtifactKey())));
            return;
        }
        IStatus status = this.transfer(this.targetDescriptor, this.sourceDescriptor, monitor);
        if (status.getSeverity() == 8) {
            this.setResult(status);
            return;
        }
        if (monitor.isCanceled()) {
            this.setResult(Status.CANCEL_STATUS);
            return;
        }
        if (status.isOK()) {
            this.setResult(status);
            return;
        }
        if (this.target.contains(this.targetDescriptor)) {
            this.target.removeDescriptor(this.targetDescriptor);
        }
        this.setResult(status);
    }

    public IArtifactDescriptor getArtifactDescriptor() {
        return this.sourceDescriptor;
    }

    protected IStatus getArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        ProcessingStepHandler handler = new ProcessingStepHandler();
        if (SimpleArtifactRepository.MD5_CHECK_ENABLED && descriptor.getProperty("download.md5") != null) {
            destination = handler.link(new ProcessingStep[]{new MD5Verifier(descriptor.getProperty("download.md5"))}, destination, monitor);
        }
        return this.getSourceRepository().getRawArtifact(descriptor, destination, monitor);
    }
}

