/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.misc;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.statushandlers.StatusManager;

public class StatusUtil {
    protected static List flatten(IStatus aStatus) {
        ArrayList result = new ArrayList();
        if (aStatus.isMultiStatus()) {
            IStatus[] children = aStatus.getChildren();
            int i = 0;
            while (i < children.length) {
                IStatus currentChild = children[i];
                if (currentChild.isMultiStatus()) {
                    Iterator childStatiiEnum = StatusUtil.flatten(currentChild).iterator();
                    while (childStatiiEnum.hasNext()) {
                        result.add(childStatiiEnum.next());
                    }
                } else {
                    result.add(currentChild);
                }
                ++i;
            }
        } else {
            result.add(aStatus);
        }
        return result;
    }

    protected static IStatus newStatus(IStatus[] stati, String message, Throwable exception) {
        Assert.isTrue((message != null ? 1 : 0) != 0);
        Assert.isTrue((message.trim().length() != 0 ? 1 : 0) != 0);
        return new MultiStatus(WorkbenchPlugin.PI_WORKBENCH, 4, stati, message, exception);
    }

    public static IStatus newStatus(String pluginId, Throwable exception) {
        return StatusUtil.newStatus(pluginId, StatusUtil.getLocalizedMessage(exception), exception);
    }

    public static String getLocalizedMessage(Throwable exception) {
        String message = exception.getLocalizedMessage();
        if (message != null) {
            return message;
        }
        if (exception instanceof CoreException) {
            CoreException ce = (CoreException)exception;
            return ce.getStatus().getMessage();
        }
        return WorkbenchMessages.StatusUtil_errorOccurred;
    }

    public static IStatus newStatus(IStatus originalStatus, String newMessage) {
        return new Status(originalStatus.getSeverity(), originalStatus.getPlugin(), originalStatus.getCode(), newMessage, originalStatus.getException());
    }

    public static IStatus newStatus(String pluginId, String message, Throwable exception) {
        return new Status(4, pluginId, 0, message, StatusUtil.getCause(exception));
    }

    public static Throwable getCause(Throwable exception) {
        Throwable cause = null;
        if (exception != null) {
            if (exception instanceof CoreException) {
                CoreException ce = (CoreException)exception;
                cause = ce.getStatus().getException();
            } else {
                try {
                    Method causeMethod = exception.getClass().getMethod("getCause", new Class[0]);
                    Object o = causeMethod.invoke(exception, new Object[0]);
                    if (o instanceof Throwable) {
                        cause = (Throwable)o;
                    }
                }
                catch (NoSuchMethodException noSuchMethodException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (InvocationTargetException invocationTargetException) {}
            }
            if (cause == null) {
                cause = exception;
            }
        }
        return cause;
    }

    public static IStatus newStatus(int severity, String message, Throwable exception) {
        String statusMessage = message;
        if (message == null || message.trim().length() == 0) {
            statusMessage = exception.getMessage() == null ? exception.toString() : exception.getMessage();
        }
        return new Status(severity, WorkbenchPlugin.PI_WORKBENCH, severity, statusMessage, StatusUtil.getCause(exception));
    }

    public static IStatus newStatus(List children, String message, Throwable exception) {
        ArrayList flatStatusCollection = new ArrayList();
        Iterator iter = children.iterator();
        while (iter.hasNext()) {
            IStatus currentStatus = (IStatus)iter.next();
            Iterator childrenIter = StatusUtil.flatten(currentStatus).iterator();
            while (childrenIter.hasNext()) {
                flatStatusCollection.add(childrenIter.next());
            }
        }
        IStatus[] stati = new IStatus[flatStatusCollection.size()];
        flatStatusCollection.toArray(stati);
        return StatusUtil.newStatus(stati, message, exception);
    }

    public static void handleStatus(IStatus status, int hint, Shell shell) {
        StatusManager.getManager().handle(status, hint);
    }

    public static void handleStatus(Throwable e, int hint) {
        StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, e), hint);
    }

    public static void handleStatus(String message, Throwable e, int hint) {
        StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, message, e), hint);
    }

    public static void handleStatus(String message, Throwable e, int hint, Shell shell) {
        StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, message, e), hint);
    }

    public static void handleStatus(IStatus status, String message, int hint) {
        StatusManager.getManager().handle(StatusUtil.newStatus(status, message), hint);
    }

    public static void handleStatus(IStatus status, String message, int hint, Shell shell) {
        StatusManager.getManager().handle(StatusUtil.newStatus(status, message), hint);
    }

    public static void handleStatus(String message, int hint) {
        StatusUtil.handleStatus(message, null, hint);
    }

    public static void handleStatus(String message, int hint, Shell shell) {
        StatusUtil.handleStatus(message, null, hint);
    }
}

