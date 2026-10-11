/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;

public class ValidateStateException
extends CoreException {
    private static final long serialVersionUID = 3834309544406233910L;

    public ValidateStateException(IStatus status) {
        super(status);
    }
}

