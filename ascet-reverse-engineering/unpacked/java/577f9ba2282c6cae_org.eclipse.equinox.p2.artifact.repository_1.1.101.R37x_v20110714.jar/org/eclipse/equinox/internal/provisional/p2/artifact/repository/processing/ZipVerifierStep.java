/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing;

import java.io.IOException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.Messages;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStep;

public class ZipVerifierStep
extends ProcessingStep {
    static final int[] ZIP_HEADER = new int[]{80, 75, 3, 4};
    private int valid = 0;

    public void write(int b) throws IOException {
        this.getDestination().write(b);
        if (this.valid > 3) {
            return;
        }
        if (this.valid == -1) {
            return;
        }
        if (b != ZIP_HEADER[this.valid++]) {
            this.valid = -1;
            this.setStatus((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", Messages.ZipVerifierStep_invalid_archive));
            return;
        }
    }

    public void close() throws IOException {
        if (this.valid > 3) {
            this.setStatus(Status.OK_STATUS);
        } else {
            this.setStatus((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", Messages.ZipVerifierStep_invalid_archive));
        }
        super.close();
    }
}

