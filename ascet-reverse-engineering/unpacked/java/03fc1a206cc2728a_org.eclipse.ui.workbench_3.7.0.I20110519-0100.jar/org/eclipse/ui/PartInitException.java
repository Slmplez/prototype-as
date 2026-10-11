/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.ui.WorkbenchException;

public class PartInitException
extends WorkbenchException {
    private static final long serialVersionUID = 3257284721296684850L;

    public PartInitException(String message) {
        super(message);
    }

    public PartInitException(String message, Throwable nestedException) {
        super(message, nestedException);
    }

    public PartInitException(IStatus status) {
        super(status);
    }
}

