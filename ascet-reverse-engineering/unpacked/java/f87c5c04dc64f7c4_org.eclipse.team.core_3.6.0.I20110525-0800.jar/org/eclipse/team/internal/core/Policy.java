/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.team.internal.core.InfiniteSubProgressMonitor;
import org.eclipse.team.internal.core.TeamPlugin;

public class Policy {
    public static boolean DEBUG_STREAMS = false;
    public static boolean DEBUG_REFRESH_JOB = true;
    public static boolean DEBUG_BACKGROUND_EVENTS = false;
    public static boolean DEBUG_THREADING = false;

    static {
        if (TeamPlugin.getPlugin().isDebugging()) {
            DEBUG_STREAMS = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.team.core/streams"));
            DEBUG_REFRESH_JOB = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.team.core/refreshjob"));
            DEBUG_BACKGROUND_EVENTS = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.team.core/backgroundevents"));
            DEBUG_THREADING = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.team.core/threading"));
        }
    }

    public static void checkCanceled(IProgressMonitor monitor) {
        if (monitor != null && monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public static IProgressMonitor monitorFor(IProgressMonitor monitor) {
        if (monitor == null) {
            return new NullProgressMonitor();
        }
        return monitor;
    }

    public static IProgressMonitor subMonitorFor(IProgressMonitor monitor, int ticks) {
        if (monitor == null) {
            return new NullProgressMonitor();
        }
        if (monitor instanceof NullProgressMonitor) {
            return monitor;
        }
        return new SubProgressMonitor(monitor, ticks);
    }

    public static IProgressMonitor infiniteSubMonitorFor(IProgressMonitor monitor, int ticks) {
        if (monitor == null) {
            return new NullProgressMonitor();
        }
        if (monitor instanceof NullProgressMonitor) {
            return monitor;
        }
        return new InfiniteSubProgressMonitor(monitor, ticks);
    }
}

