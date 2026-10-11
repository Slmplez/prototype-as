/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class WorkbenchException
extends CoreException {
    private static final long serialVersionUID = 3258125864872129078L;

    public WorkbenchException(String message) {
        this((IStatus)new Status(4, "org.eclipse.ui", 0, message, null));
    }

    public WorkbenchException(String message, Throwable nestedException) {
        this((IStatus)new Status(4, "org.eclipse.ui", 0, message, nestedException));
    }

    public WorkbenchException(IStatus status) {
        super(status);
    }
}

