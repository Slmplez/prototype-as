/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.team.core;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class TeamException
extends CoreException {
    private static final long serialVersionUID = 1L;
    public static final int OK = 0;
    public static final int NOT_CHECKED_IN = -1;
    public static final int NOT_CHECKED_OUT = -2;
    public static final int NO_REMOTE_RESOURCE = -3;
    public static final int IO_FAILED = -4;
    public static final int NOT_AUTHORIZED = -5;
    public static final int UNABLE = -6;
    public static final int CONFLICT = -7;

    public TeamException(IStatus status) {
        super(status);
    }

    public TeamException(String message, Throwable e) {
        super((IStatus)new Status(4, "org.eclipse.team.core", 0, message, e));
    }

    public TeamException(String message) {
        this(message, null);
    }

    protected TeamException(CoreException e) {
        super((IStatus)TeamException.asStatus(e));
    }

    private static Status asStatus(CoreException e) {
        IStatus status = e.getStatus();
        return new Status(status.getSeverity(), status.getPlugin(), status.getCode(), status.getMessage(), (Throwable)e);
    }

    public static TeamException asTeamException(CoreException e) {
        if (e instanceof TeamException) {
            return (TeamException)e;
        }
        return new TeamException(e);
    }

    public static TeamException asTeamException(InvocationTargetException e) {
        Throwable target = e.getTargetException();
        if (target instanceof TeamException) {
            return (TeamException)((Object)target);
        }
        return new TeamException((IStatus)new Status(4, "org.eclipse.team.core", -6, target.getMessage() != null ? target.getMessage() : "", target));
    }
}

