/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PerformanceStats
 */
package org.eclipse.core.internal.events;

import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.PerformanceStats;

public class ResourceStats {
    private static PerformanceStats currentStats;
    public static final String EVENT_BUILDERS = "org.eclipse.core.resources/perf/builders";
    public static final String EVENT_LISTENERS = "org.eclipse.core.resources/perf/listeners";
    public static final String EVENT_SAVE_PARTICIPANTS = "org.eclipse.core.resources/perf/save.participants";
    public static final String EVENT_SNAPSHOT = "org.eclipse.core.resources/perf/snapshot";
    public static boolean TRACE_BUILDERS;
    public static boolean TRACE_LISTENERS;
    public static boolean TRACE_SAVE_PARTICIPANTS;
    public static boolean TRACE_SNAPSHOT;

    static {
        TRACE_BUILDERS = PerformanceStats.isEnabled((String)EVENT_BUILDERS);
        TRACE_LISTENERS = PerformanceStats.isEnabled((String)EVENT_LISTENERS);
        TRACE_SAVE_PARTICIPANTS = PerformanceStats.isEnabled((String)EVENT_SAVE_PARTICIPANTS);
        TRACE_SNAPSHOT = PerformanceStats.isEnabled((String)EVENT_SNAPSHOT);
    }

    public static void endBuild() {
        if (currentStats != null) {
            currentStats.endRun();
        }
        currentStats = null;
    }

    public static void endNotify() {
        if (currentStats != null) {
            currentStats.endRun();
        }
        currentStats = null;
    }

    public static void endSave() {
        if (currentStats != null) {
            currentStats.endRun();
        }
        currentStats = null;
    }

    public static void endSnapshot() {
        if (currentStats != null) {
            currentStats.endRun();
        }
        currentStats = null;
    }

    public static void listenerAdded(IResourceChangeListener listener) {
        if (listener != null) {
            PerformanceStats.getStats((String)EVENT_LISTENERS, (Object)listener.getClass().getName());
        }
    }

    public static void listenerRemoved(IResourceChangeListener listener) {
        if (listener != null) {
            PerformanceStats.removeStats((String)EVENT_LISTENERS, (Object)listener.getClass().getName());
        }
    }

    public static void startBuild(IncrementalProjectBuilder builder) {
        currentStats = PerformanceStats.getStats((String)EVENT_BUILDERS, (Object)builder);
        currentStats.startRun(builder.getProject().getName());
    }

    public static void startNotify(IResourceChangeListener listener) {
        currentStats = PerformanceStats.getStats((String)EVENT_LISTENERS, (Object)listener);
        currentStats.startRun();
    }

    public static void startSnapshot() {
        currentStats = PerformanceStats.getStats((String)EVENT_SNAPSHOT, (Object)ResourcesPlugin.getWorkspace());
        currentStats.startRun();
    }

    public static void startSave(ISaveParticipant participant) {
        currentStats = PerformanceStats.getStats((String)EVENT_SAVE_PARTICIPANTS, (Object)participant);
        currentStats.startRun();
    }
}

