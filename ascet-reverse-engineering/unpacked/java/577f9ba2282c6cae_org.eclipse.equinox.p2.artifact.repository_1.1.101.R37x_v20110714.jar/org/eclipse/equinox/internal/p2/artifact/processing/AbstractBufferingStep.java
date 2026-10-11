/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.artifact.processing;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.artifact.processing.Messages;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStep;
import org.eclipse.osgi.util.NLS;

public abstract class AbstractBufferingStep
extends ProcessingStep {
    private static final String WORK_DIR_PREFIX = "work";
    private static final String WORK_DIR_SUFFIX = "";
    protected static final String JAR_SUFFIX = ".jar";
    protected static final String INCOMING_ROOT = "p2.optimizers.incoming";
    protected static final String RESULT_ROOT = "p2.optimizers.result";
    protected static final String PREDECESSOR_ROOT = "p2.optimizers.predecessor";
    protected OutputStream incomingStream;
    private File workDir;

    protected AbstractBufferingStep() {
    }

    public void write(int b) throws IOException {
        OutputStream stream = this.getOutputStream();
        stream.write(b);
    }

    protected OutputStream getOutputStream() throws IOException {
        if (this.incomingStream != null) {
            return this.incomingStream;
        }
        this.incomingStream = this.createIncomingStream();
        return this.incomingStream;
    }

    protected abstract OutputStream createIncomingStream() throws IOException;

    public void close() throws IOException {
        try {
            if (this.incomingStream != null) {
                this.incomingStream.close();
                if (this.getStatus() != null && this.getStatus().getSeverity() != 8) {
                    this.performProcessing();
                }
            } else {
                this.setStatus((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", Messages.Empty_stream));
            }
        }
        finally {
            this.incomingStream = null;
            this.cleanupTempFiles();
            this.cleanupWorkDir();
        }
        super.close();
    }

    protected abstract void performProcessing() throws IOException;

    protected void cleanupTempFiles() {
    }

    private void cleanupWorkDir() throws IOException {
        if (this.workDir != null) {
            FileUtils.deleteAll((File)this.workDir);
            FileUtils.deleteAll((File)this.workDir);
        }
    }

    protected File getWorkDir() throws IOException {
        if (this.workDir != null) {
            return this.workDir;
        }
        this.workDir = File.createTempFile(WORK_DIR_PREFIX, WORK_DIR_SUFFIX);
        if (!this.workDir.delete()) {
            throw new IOException(NLS.bind((String)Messages.Can_not_delete_temp_dir, (Object)this.workDir));
        }
        if (!this.workDir.mkdirs()) {
            throw new IOException(NLS.bind((String)Messages.Can_not_create_temp_dir, (Object)this.workDir));
        }
        return this.workDir;
    }
}

