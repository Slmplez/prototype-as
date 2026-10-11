/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.core.internal.runtime;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.internal.runtime.InternalPlatform;
import org.eclipse.core.internal.runtime.PlatformActivator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public class PerformanceStatsProcessor
extends Job {
    private static final PerformanceStatsProcessor instance = new PerformanceStatsProcessor();
    private static final long SCHEDULE_DELAY = 2000L;
    private final ArrayList changes = new ArrayList();
    private final HashMap failures = new HashMap();
    private final ListenerList listeners = new ListenerList();
    private FrameworkLog log;
    static /* synthetic */ Class class$0;

    public static void addListener(PerformanceStats.PerformanceListener listener) {
        PerformanceStatsProcessor.instance.listeners.add((Object)listener);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void changed(PerformanceStats stats) {
        PerformanceStatsProcessor performanceStatsProcessor = instance;
        synchronized (performanceStatsProcessor) {
            PerformanceStatsProcessor.instance.changes.add(stats);
        }
        instance.schedule(2000L);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void failed(PerformanceStats stats, String pluginId, long elapsed) {
        PerformanceStatsProcessor performanceStatsProcessor = instance;
        synchronized (performanceStatsProcessor) {
            PerformanceStatsProcessor.instance.failures.put(stats, new Long(elapsed));
        }
        instance.schedule(2000L);
        instance.logFailure(stats, pluginId, elapsed);
    }

    public static void printStats(PrintWriter out) {
        PerformanceStats stats;
        long totalTime = 0L;
        int totalCount = 0;
        PerformanceStats[] allStats = PerformanceStats.getAllStats();
        int i = 0;
        while (i < allStats.length) {
            stats = allStats[i];
            totalTime += stats.getRunningTime();
            totalCount += stats.getRunCount();
            ++i;
        }
        out.println("---------------------------------------------------------------");
        i = 0;
        while (i < allStats.length) {
            long runTime;
            stats = allStats[i];
            out.print("Event: ");
            out.print(stats.getEvent());
            out.print(" Blame: ");
            out.print(stats.getBlameString());
            if (stats.getContext() != null) {
                out.print(" Context: ");
                out.print(stats.getContext());
            }
            out.println();
            int runCount = stats.getRunCount();
            if (runCount > 0) {
                out.print("Run count: ");
                out.print(Integer.toString(runCount));
                out.print(" (");
                out.print(Integer.toString((int)((double)runCount * 100.0 / (double)totalCount)));
                out.println(" % of total)");
            }
            if ((runTime = stats.getRunningTime()) > 0L) {
                out.print("Duration (ms): ");
                out.print(Long.toString(runTime));
                out.print(" (");
                out.print(Integer.toString((int)((double)runTime * 100.0 / (double)totalTime)));
                out.println(" % of total)");
            }
            out.println("");
            ++i;
        }
    }

    public static void removeListener(PerformanceStats.PerformanceListener listener) {
        PerformanceStatsProcessor.instance.listeners.remove((Object)listener);
    }

    private PerformanceStatsProcessor() {
        super("Performance Stats");
        this.setSystem(true);
        this.setPriority(50);
        BundleContext context = PlatformActivator.getContext();
        String filter = "(performance=" + Boolean.TRUE.toString() + ')';
        FrameworkLog perfLog = null;
        try {
            ServiceReference[] references;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((references = context.getServiceReferences(clazz.getName(), filter)) != null && references.length > 0) {
                perfLog = (FrameworkLog)context.getService(references[0]);
                IPath logLocation = Platform.getLogFileLocation();
                logLocation = logLocation.removeLastSegments(1).append("performance.log");
                perfLog.setFile(logLocation.toFile(), false);
            }
        }
        catch (Exception e) {
            Status error = new Status(4, "org.eclipse.core.runtime", 1, "Error loading performance log", (Throwable)e);
            InternalPlatform.getDefault().log((IStatus)error);
        }
        if (perfLog == null) {
            perfLog = InternalPlatform.getDefault().getFrameworkLog();
        }
        this.log = perfLog;
    }

    private void logFailure(PerformanceStats stats, String pluginId, long elapsed) {
        if (this.log == null) {
            return;
        }
        if (pluginId == null) {
            pluginId = "org.eclipse.core.runtime";
        }
        String msg = "Performance failure: " + stats.getEvent() + " blame: " + stats.getBlameString() + " context: " + stats.getContext() + " duration: " + elapsed;
        Status status = new Status(2, pluginId, 1, msg, (Throwable)new RuntimeException());
        this.log.log(new FrameworkLogEntry((Object)status, status.getPlugin(), status.getSeverity(), status.getCode(), status.getMessage(), 0, status.getException(), null));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected IStatus run(IProgressMonitor monitor) {
        Long[] failedTimes;
        PerformanceStats[] failedEvents;
        PerformanceStats[] events;
        PerformanceStatsProcessor performanceStatsProcessor = this;
        synchronized (performanceStatsProcessor) {
            events = this.changes.toArray(new PerformanceStats[this.changes.size()]);
            this.changes.clear();
            failedEvents = this.failures.keySet().toArray(new PerformanceStats[this.failures.size()]);
            failedTimes = this.failures.values().toArray(new Long[this.failures.size()]);
            this.failures.clear();
        }
        Object[] toNotify = this.listeners.getListeners();
        int i = 0;
        while (i < toNotify.length) {
            PerformanceStats.PerformanceListener listener = (PerformanceStats.PerformanceListener)toNotify[i];
            if (events.length > 0) {
                listener.eventsOccurred(events);
            }
            int j = 0;
            while (j < failedEvents.length) {
                listener.eventFailed(failedEvents[j], failedTimes[j]);
                ++j;
            }
            ++i;
        }
        this.schedule(2000L);
        return Status.OK_STATUS;
    }

    public boolean shouldRun() {
        return !this.changes.isEmpty() || !this.failures.isEmpty();
    }
}

