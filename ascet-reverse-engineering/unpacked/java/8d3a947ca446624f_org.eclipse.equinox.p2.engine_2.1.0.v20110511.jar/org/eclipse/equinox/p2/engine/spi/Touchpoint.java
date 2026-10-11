/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.equinox.p2.engine.spi;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.engine.IProfile;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Touchpoint {
    public String qualifyAction(String actionId) {
        return actionId;
    }

    public IStatus initializePhase(IProgressMonitor monitor, IProfile profile, String phaseId, Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }

    public IStatus completePhase(IProgressMonitor monitor, IProfile profile, String phaseId, Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }

    public IStatus initializeOperand(IProfile profile, Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }

    public IStatus completeOperand(IProfile profile, Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }

    public IStatus prepare(IProfile profile) {
        return Status.OK_STATUS;
    }

    public IStatus commit(IProfile profile) {
        return Status.OK_STATUS;
    }

    public IStatus rollback(IProfile profile) {
        return Status.OK_STATUS;
    }
}

