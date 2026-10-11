/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.InputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.equinox.internal.p2.jarprocessor.StreamProcessor;

public class StreamProcessorJob
extends Job {
    private InputStream inputStream = null;
    private String name = null;
    private boolean verbose = false;

    public StreamProcessorJob(InputStream stream, String name, boolean verbose) {
        super("Stream Processor : " + name);
        this.setPriority(20);
        this.setSystem(true);
        this.inputStream = stream;
        this.name = name;
        this.verbose = verbose;
    }

    protected IStatus run(IProgressMonitor monitor) {
        StreamProcessor.run(this.inputStream, this.name, this.verbose);
        this.inputStream = null;
        return Status.OK_STATUS;
    }
}

