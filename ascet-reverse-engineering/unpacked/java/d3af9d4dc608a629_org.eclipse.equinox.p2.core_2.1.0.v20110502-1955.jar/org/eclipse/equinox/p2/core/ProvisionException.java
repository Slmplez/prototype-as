/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.equinox.p2.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class ProvisionException
extends CoreException {
    private static final long serialVersionUID = 1L;
    public static final int INTERNAL_ERROR = 1;
    public static final int REPOSITORY_NOT_FOUND = 1000;
    public static final int REPOSITORY_EXISTS = 1001;
    public static final int REPOSITORY_FAILED_READ = 1002;
    public static final int REPOSITORY_FAILED_WRITE = 1003;
    public static final int REPOSITORY_READ_ONLY = 1004;
    public static final int REPOSITORY_UNKNOWN_TYPE = 1005;
    public static final int REPOSITORY_INVALID_LOCATION = 1006;
    public static final int REPOSITORY_FAILED_AUTHENTICATION = 1007;
    public static final int ARTIFACT_NOT_FOUND = 1200;
    public static final int ARTIFACT_EXISTS = 1201;
    public static final int ARTIFACT_INCOMPLETE_SIZING = 1202;
    public static final int ARTIFACT_MD5_NOT_MATCH = 1203;

    public ProvisionException(IStatus status) {
        super(status);
    }

    public ProvisionException(String message) {
        super((IStatus)new Status(4, "org.eclipse.equinox.p2.core", message));
    }

    public ProvisionException(String message, Throwable cause) {
        super((IStatus)new Status(4, "org.eclipse.equinox.p2.core", message, cause));
    }
}

