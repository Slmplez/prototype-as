/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.util.LinkedList;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DownloadJob
extends Job {
    static final Object FAMILY = new Object();
    private LinkedList<IArtifactRequest> requestsPending;
    private SimpleArtifactRepository repository;
    private IProgressMonitor masterMonitor;
    private MultiStatus overallStatus;

    DownloadJob(String name) {
        super(name);
        this.setSystem(true);
    }

    void initialize(SimpleArtifactRepository repository, LinkedList<IArtifactRequest> requestsPending, IProgressMonitor masterMonitor, MultiStatus overallStatus) {
        this.repository = repository;
        this.requestsPending = requestsPending;
        this.masterMonitor = masterMonitor;
        this.overallStatus = overallStatus;
    }

    public boolean belongsTo(Object family) {
        return family == FAMILY;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected IStatus run(IProgressMonitor jobMonitor) {
        jobMonitor.beginTask("Downloading software", -1);
        while (true) {
            IArtifactRequest request;
            LinkedList<IArtifactRequest> linkedList = this.requestsPending;
            synchronized (linkedList) {
                if (this.requestsPending.isEmpty()) {
                    break;
                }
                request = this.requestsPending.removeFirst();
            }
            if (this.masterMonitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            SubProgressMonitor subMonitor = new SubProgressMonitor(this.masterMonitor, 1);
            subMonitor.beginTask("", 1);
            try {
                IStatus status = this.repository.getArtifact(request, (IProgressMonitor)subMonitor);
                if (status.isOK()) continue;
                MultiStatus multiStatus = this.overallStatus;
                synchronized (multiStatus) {
                    this.overallStatus.add(status);
                    continue;
                }
            }
            finally {
                subMonitor.done();
                continue;
            }
            break;
        }
        jobMonitor.done();
        return Status.OK_STATUS;
    }
}

