/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.p2.repository.IStateful
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor
 */
package org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing;

import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStepHandler;
import org.eclipse.equinox.internal.provisional.p2.repository.IStateful;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;

public abstract class ProcessingStep
extends OutputStream
implements IStateful {
    private OutputStream destination;
    private IProgressMonitor monitor;
    private IStatus status = Status.OK_STATUS;

    protected ProcessingStep() {
    }

    public void initialize(IProvisioningAgent agent, IProcessingStepDescriptor descriptor, IArtifactDescriptor context) {
    }

    public void link(OutputStream destination, IProgressMonitor monitor) {
        this.destination = destination;
        this.monitor = monitor;
    }

    public void write(int b) throws IOException {
    }

    public void flush() throws IOException {
        super.flush();
        if (this.destination != null) {
            this.destination.flush();
        }
    }

    public void close() throws IOException {
        super.close();
        if (this.destination instanceof ProcessingStep) {
            this.destination.close();
        }
        this.monitor = null;
    }

    public IStatus getStatus() {
        return this.status;
    }

    public void setStatus(IStatus value) {
        if (value == null) {
            value = Status.OK_STATUS;
        }
        if (this.status != null && this.status.getSeverity() >= value.getSeverity()) {
            return;
        }
        this.status = value;
    }

    protected IProgressMonitor getProgressMonitor() {
        return this.monitor;
    }

    protected OutputStream getDestination() {
        return this.destination;
    }

    public IStatus getStatus(boolean deep) {
        return ProcessingStepHandler.getStatus(this, deep);
    }
}

