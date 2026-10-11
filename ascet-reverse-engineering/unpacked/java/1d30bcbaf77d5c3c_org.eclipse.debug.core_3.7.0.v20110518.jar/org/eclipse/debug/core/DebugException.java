/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;

public class DebugException
extends CoreException {
    private static final long serialVersionUID = 1L;
    public static final int TARGET_REQUEST_FAILED = 5010;
    public static final int NOT_SUPPORTED = 5011;
    public static final int REQUEST_FAILED = 5012;
    public static final int INTERNAL_ERROR = 5013;
    public static final int CONFIGURATION_INVALID = 5014;
    public static final int MISSING_LAUNCH_CONFIGURATION_TYPE = 5020;

    public DebugException(IStatus status) {
        super(status);
    }
}

