/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.utils;

import java.util.Date;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.osgi.framework.Bundle;

public class Policy {
    public static final boolean buildOnCancel = false;
    public static boolean DEBUG = false;
    public static boolean DEBUG_AUTO_REFRESH = false;
    public static boolean DEBUG_BUILD_DELTA = false;
    public static boolean DEBUG_BUILD_FAILURE = false;
    public static boolean DEBUG_BUILD_INTERRUPT = false;
    public static boolean DEBUG_BUILD_INVOKING = false;
    public static boolean DEBUG_BUILD_NEEDED = false;
    public static boolean DEBUG_BUILD_NEEDED_STACK = false;
    public static boolean DEBUG_BUILD_STACK = false;
    public static boolean DEBUG_CONTENT_TYPE = false;
    public static boolean DEBUG_CONTENT_TYPE_CACHE = false;
    public static boolean DEBUG_HISTORY = false;
    public static boolean DEBUG_NATURES = false;
    public static boolean DEBUG_PREFERENCES = false;
    public static boolean DEBUG_RESTORE = false;
    public static boolean DEBUG_RESTORE_MARKERS = false;
    public static boolean DEBUG_RESTORE_MASTERTABLE = false;
    public static boolean DEBUG_RESTORE_METAINFO = false;
    public static boolean DEBUG_RESTORE_SNAPSHOTS = false;
    public static boolean DEBUG_RESTORE_SYNCINFO = false;
    public static boolean DEBUG_RESTORE_TREE = false;
    public static boolean DEBUG_SAVE = false;
    public static boolean DEBUG_SAVE_MARKERS = false;
    public static boolean DEBUG_SAVE_MASTERTABLE = false;
    public static boolean DEBUG_SAVE_METAINFO = false;
    public static boolean DEBUG_SAVE_SYNCINFO = false;
    public static boolean DEBUG_SAVE_TREE = false;
    public static boolean DEBUG_STRINGS = false;
    public static int endOpWork = 1;
    public static final long MAX_BUILD_DELAY = 1000L;
    public static final long MIN_BUILD_DELAY = 100L;
    public static int opWork = 99;
    public static final int totalWork = 100;

    static {
        if (ResourcesPlugin.getPlugin().isDebugging()) {
            DEBUG = true;
            String sTrue = Boolean.TRUE.toString();
            DEBUG_AUTO_REFRESH = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/refresh"));
            DEBUG_BUILD_DELTA = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/build/delta"));
            DEBUG_BUILD_FAILURE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/build/failure"));
            DEBUG_BUILD_INVOKING = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/build/invoking"));
            DEBUG_BUILD_INTERRUPT = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/build/interrupt"));
            DEBUG_BUILD_NEEDED = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/build/needbuild"));
            DEBUG_BUILD_NEEDED_STACK = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/build/needbuildstack"));
            DEBUG_BUILD_STACK = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/build/stacktrace"));
            DEBUG_CONTENT_TYPE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/contenttype"));
            DEBUG_CONTENT_TYPE_CACHE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/contenttype/cache"));
            DEBUG_HISTORY = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/history"));
            DEBUG_NATURES = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/natures"));
            DEBUG_PREFERENCES = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/preferences"));
            DEBUG_RESTORE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/restore"));
            DEBUG_RESTORE_MARKERS = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/restore/markers"));
            DEBUG_RESTORE_MASTERTABLE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/restore/mastertable"));
            DEBUG_RESTORE_METAINFO = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/restore/metainfo"));
            DEBUG_RESTORE_SNAPSHOTS = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/restore/snapshots"));
            DEBUG_RESTORE_SYNCINFO = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/restore/syncinfo"));
            DEBUG_RESTORE_TREE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/restore/tree"));
            DEBUG_SAVE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/save"));
            DEBUG_SAVE_MARKERS = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/save/markers"));
            DEBUG_SAVE_MASTERTABLE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/save/mastertable"));
            DEBUG_SAVE_METAINFO = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/save/metainfo"));
            DEBUG_SAVE_SYNCINFO = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/save/syncinfo"));
            DEBUG_SAVE_TREE = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/save/tree"));
            DEBUG_STRINGS = sTrue.equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.resources/strings"));
        }
    }

    public static void checkCanceled(IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public static void debug(String message) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append("] ");
        buffer.append(message);
        System.out.println(buffer.toString());
    }

    public static void log(int severity, String message, Throwable t) {
        if (message == null) {
            message = "";
        }
        Policy.log((IStatus)new Status(severity, "org.eclipse.core.resources", 1, message, t));
    }

    public static void log(IStatus status) {
        Bundle bundle = Platform.getBundle((String)"org.eclipse.core.resources");
        if (bundle == null) {
            return;
        }
        Platform.getLog((Bundle)bundle).log(status);
    }

    public static void log(Throwable t) {
        Policy.log(4, "Internal Error", t);
    }

    public static IProgressMonitor monitorFor(IProgressMonitor monitor) {
        return monitor == null ? new NullProgressMonitor() : monitor;
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

    public static IProgressMonitor subMonitorFor(IProgressMonitor monitor, int ticks, int style) {
        if (monitor == null) {
            return new NullProgressMonitor();
        }
        if (monitor instanceof NullProgressMonitor) {
            return monitor;
        }
        return new SubProgressMonitor(monitor, ticks, style);
    }
}

