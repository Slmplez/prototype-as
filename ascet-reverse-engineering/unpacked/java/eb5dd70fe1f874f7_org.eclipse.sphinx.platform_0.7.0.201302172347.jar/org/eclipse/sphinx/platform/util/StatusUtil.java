/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.sphinx.platform.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.platform.messages.PlatformMessages;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StatusUtil {
    public static IStatus createStatus(int severity, int aCode, String aMessage, String pluginId, Throwable exception) {
        return new Status(severity, pluginId, aCode, aMessage != null ? aMessage : PlatformMessages.message_none, exception);
    }

    public static IStatus createMultiErrorStatus(Plugin plugin, int aCode, String aMessage, List<Throwable> exceptions, Throwable exception) {
        IStatus[] children = new IStatus[exceptions.size()];
        for (Throwable ex : exceptions) {
            children[exceptions.indexOf((Object)ex)] = StatusUtil.createErrorStatus(plugin, (Object)ex);
        }
        return new MultiStatus(plugin.getBundle().getSymbolicName(), aCode, children, aMessage != null ? aMessage : PlatformMessages.message_none, exception);
    }

    public static IStatus createErrorStatus(Plugin plugin, Object object) {
        return StatusUtil.createErrorStatus(plugin != null ? plugin.getBundle() : null, object);
    }

    public static IStatus createErrorStatus(Bundle bundle, Object object) {
        return StatusUtil.createStatus(bundle, Collections.singletonList(object), 4);
    }

    public static IStatus createWarningStatus(Plugin plugin, Object object) {
        return StatusUtil.createWarningStatus(plugin != null ? plugin.getBundle() : null, object);
    }

    public static IStatus createWarningStatus(Bundle bundle, Object object) {
        return StatusUtil.createStatus(bundle, Collections.singletonList(object), 2);
    }

    public static IStatus createInfoStatus(Plugin plugin, Object object) {
        return StatusUtil.createInfoStatus(plugin != null ? plugin.getBundle() : null, object);
    }

    public static IStatus createInfoStatus(Bundle bundle, Object object) {
        return StatusUtil.createStatus(bundle, Collections.singletonList(object), 1);
    }

    public static IStatus getMoreSevereStatus(IStatus firstStatus, IStatus secondStatus) {
        if (firstStatus.getSeverity() > secondStatus.getSeverity()) {
            return firstStatus;
        }
        return secondStatus;
    }

    public static IStatus getMostSevereStatus(IStatus[] status) {
        IStatus max = null;
        IStatus[] iStatusArray = status;
        int n = status.length;
        int n2 = 0;
        while (n2 < n) {
            IStatus curr = iStatusArray[n2];
            if (curr.matches(4)) {
                return curr;
            }
            if (max == null || curr.getSeverity() > max.getSeverity()) {
                max = curr;
            }
            ++n2;
        }
        return max;
    }

    private static IStatus createStatus(Bundle bundle, Collection<Object> objects, int severity) {
        ArrayList<IStatus> statuses = new ArrayList<IStatus>();
        for (Object object : objects) {
            statuses.add(StatusUtil.convertToStatus(bundle, object, severity));
        }
        return StatusUtil.createEnclosingStatus(bundle, statuses);
    }

    private static IStatus convertToStatus(Bundle bundle, Object object, int severity) {
        MultiStatus status;
        String symbolicName;
        String string = symbolicName = bundle != null ? bundle.getSymbolicName() : PlatformMessages.pluginId_unknown;
        if (object instanceof MultiStatus) {
            MultiStatus originalStatus = (MultiStatus)object;
            status = new MultiStatus(originalStatus.getPlugin(), originalStatus.getCode(), originalStatus.getChildren(), originalStatus.getMessage(), originalStatus.getException());
        } else if (object instanceof IStatus) {
            IStatus originalStatus = (IStatus)object;
            status = new Status(severity, originalStatus.getPlugin(), originalStatus.getCode(), originalStatus.getMessage(), originalStatus.getException());
        } else if (object instanceof CoreException) {
            CoreException cex = (CoreException)((Object)object);
            IStatus originalStatus = cex.getStatus();
            status = originalStatus.getException() == null ? new Status(severity, originalStatus.getPlugin(), originalStatus.getCode(), originalStatus.getMessage(), (Throwable)cex) : new Status(severity, originalStatus.getPlugin(), originalStatus.getCode(), originalStatus.getMessage(), originalStatus.getException());
        } else if (object instanceof OperationCanceledException) {
            OperationCanceledException ocex = (OperationCanceledException)((Object)object);
            status = new Status(1, symbolicName, 0, ocex.getLocalizedMessage(), (Throwable)ocex);
        } else if (object instanceof Throwable) {
            Throwable throwable = (Throwable)object;
            if (throwable.getCause() == null) {
                status = new Status(severity, symbolicName, 0, throwable.getLocalizedMessage(), throwable);
            } else {
                status = new MultiStatus(symbolicName, 0, throwable.getLocalizedMessage(), throwable);
                Status causeStatus = new Status(severity, symbolicName, 0, throwable.getCause().getLocalizedMessage(), throwable.getCause());
                status.add((IStatus)causeStatus);
            }
        } else {
            status = object != null ? new Status(severity, symbolicName, 0, object.toString(), null) : new Status(severity, symbolicName, 0, PlatformMessages.message_none, null);
        }
        return status;
    }

    private static IStatus createEnclosingStatus(Bundle bundle, Collection<IStatus> statuses) {
        String msg;
        String symbolicName;
        Assert.isNotNull(statuses);
        Assert.isLegal((statuses.size() > 0 ? 1 : 0) != 0);
        boolean isInfoOnly = true;
        for (IStatus status : statuses) {
            if (status.getSeverity() == 1) continue;
            isInfoOnly = false;
            break;
        }
        String string = symbolicName = bundle != null ? bundle.getSymbolicName() : PlatformMessages.pluginId_unknown;
        if (isInfoOnly) {
            if (statuses.size() > 1) {
                MultiStatus enclosingStatus = new MultiStatus(symbolicName, 0, NLS.bind((String)PlatformMessages.infos_whenInvokingPlugin, (Object)statuses.size(), (Object)symbolicName), null);
                for (IStatus status : statuses) {
                    enclosingStatus.merge(status);
                }
                return enclosingStatus;
            }
            return statuses.iterator().next();
        }
        if (statuses.size() > 1) {
            msg = "";
            MultiStatus enclosingStatus = new MultiStatus(symbolicName, 0, msg, null);
            for (IStatus status : statuses) {
                enclosingStatus.merge(status);
            }
            return enclosingStatus;
        }
        IStatus status = statuses.iterator().next();
        Throwable throwable = status.getException();
        msg = bundle != null ? (throwable != null ? NLS.bind((String)PlatformMessages.error_exceptionWhenInvokingPlugin, (Object[])new Object[]{throwable.getClass().getSimpleName(), symbolicName, throwable.getLocalizedMessage()}) : NLS.bind((String)PlatformMessages.problem_whenInvokingPlugin, (Object)symbolicName, (Object)status.getMessage())) : (throwable != null ? NLS.bind((String)PlatformMessages.error_exceptionWhenInvokingUnknownPlugin, (Object[])new Object[]{throwable.getClass().getSimpleName(), throwable.getLocalizedMessage()}) : NLS.bind((String)PlatformMessages.problem_whenInvokingUnknownPlugin, (Object)status.getMessage()));
        MultiStatus enclosingStatus = new MultiStatus(symbolicName, 0, msg, throwable);
        enclosingStatus.merge(status);
        return enclosingStatus;
    }
}

