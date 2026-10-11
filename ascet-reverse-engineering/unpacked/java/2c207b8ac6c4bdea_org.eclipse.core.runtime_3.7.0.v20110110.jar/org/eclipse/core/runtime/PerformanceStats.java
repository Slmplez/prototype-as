/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.io.PrintWriter;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.internal.runtime.InternalPlatform;
import org.eclipse.core.internal.runtime.PerformanceStatsProcessor;
import org.eclipse.core.runtime.Platform;

public class PerformanceStats {
    private static final PerformanceStats EMPTY_STATS = new PerformanceStats("", "");
    public static final boolean ENABLED;
    private static final long NOT_STARTED = -1L;
    private static final Map statMap;
    private static final Map thresholdMap;
    private static final boolean TRACE_SUCCESS;
    private String blame;
    private String blamePluginId;
    private String context;
    private long currentStart = -1L;
    private String event;
    private boolean isFailure;
    private int runCount = 0;
    private long runningTime = 0L;

    static {
        statMap = Collections.synchronizedMap(new HashMap());
        thresholdMap = Collections.synchronizedMap(new HashMap());
        ENABLED = InternalPlatform.getDefault().getBooleanOption("org.eclipse.core.runtime/perf", false);
        TRACE_SUCCESS = InternalPlatform.getDefault().getBooleanOption("org.eclipse.core.runtime/perf/success", ENABLED);
    }

    public static void addListener(PerformanceListener listener) {
        if (ENABLED) {
            PerformanceStatsProcessor.addListener(listener);
        }
    }

    public static void clear() {
        statMap.clear();
    }

    public static PerformanceStats[] getAllStats() {
        return statMap.values().toArray(new PerformanceStats[statMap.values().size()]);
    }

    public static PerformanceStats getStats(String eventName, Object blameObject) {
        if (!ENABLED || eventName == null || blameObject == null) {
            return EMPTY_STATS;
        }
        PerformanceStats newStats = new PerformanceStats(eventName, blameObject);
        if (!TRACE_SUCCESS) {
            return newStats;
        }
        PerformanceStats oldStats = (PerformanceStats)statMap.get(newStats);
        if (oldStats != null) {
            return oldStats;
        }
        statMap.put(newStats, newStats);
        return newStats;
    }

    public static boolean isEnabled(String eventName) {
        if (!ENABLED) {
            return false;
        }
        String option = Platform.getDebugOption(eventName);
        return option != null && !option.equalsIgnoreCase("false") && !option.equalsIgnoreCase("-1");
    }

    public static void printStats() {
        if (!ENABLED) {
            return;
        }
        PrintWriter writer = new PrintWriter(System.out);
        PerformanceStatsProcessor.printStats(writer);
        writer.flush();
    }

    public static void printStats(PrintWriter out) {
        if (!ENABLED) {
            return;
        }
        PerformanceStatsProcessor.printStats(out);
    }

    public static void removeListener(PerformanceListener listener) {
        if (ENABLED) {
            PerformanceStatsProcessor.removeListener(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void removeStats(String eventName, Object blameObject) {
        Map map = statMap;
        synchronized (map) {
            Iterator it = statMap.keySet().iterator();
            while (it.hasNext()) {
                PerformanceStats stats = (PerformanceStats)it.next();
                if (!stats.getEvent().equals(eventName) || !stats.getBlame().equals(blameObject)) continue;
                it.remove();
            }
        }
    }

    private PerformanceStats(String event, Object blame) {
        this(event, blame, null);
    }

    private PerformanceStats(String event, Object blameObject, String context) {
        this.event = event;
        this.blame = blameObject instanceof String ? (String)blameObject : blameObject.getClass().getName();
        this.blamePluginId = InternalPlatform.getDefault().getBundleId(blameObject);
        this.context = context;
    }

    public void addRun(long elapsed, String contextName) {
        if (!ENABLED) {
            return;
        }
        ++this.runCount;
        this.runningTime += elapsed;
        if (elapsed > this.getThreshold(this.event)) {
            PerformanceStatsProcessor.failed(this.createFailureStats(contextName, elapsed), this.blamePluginId, elapsed);
        }
        if (TRACE_SUCCESS) {
            PerformanceStatsProcessor.changed(this);
        }
    }

    private PerformanceStats createFailureStats(String contextName, long elapsed) {
        PerformanceStats failedStat = new PerformanceStats(this.event, this.blame, contextName);
        PerformanceStats old = (PerformanceStats)statMap.get(failedStat);
        if (old == null) {
            statMap.put(failedStat, failedStat);
        } else {
            failedStat = old;
        }
        failedStat.isFailure = true;
        ++failedStat.runCount;
        failedStat.runningTime += elapsed;
        return failedStat;
    }

    public void endRun() {
        if (!ENABLED || this.currentStart == -1L) {
            return;
        }
        this.addRun(System.currentTimeMillis() - this.currentStart, this.context);
        this.currentStart = -1L;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PerformanceStats)) {
            return false;
        }
        PerformanceStats that = (PerformanceStats)obj;
        if (!this.event.equals(that.event)) {
            return false;
        }
        if (!this.getBlameString().equals(that.getBlameString())) {
            return false;
        }
        return this.context == null ? that.context == null : this.context.equals(that.context);
    }

    public Object getBlame() {
        return this.blame;
    }

    public String getBlameString() {
        return this.blame;
    }

    public String getContext() {
        return this.context;
    }

    public String getEvent() {
        return this.event;
    }

    public int getRunCount() {
        return this.runCount;
    }

    public long getRunningTime() {
        return this.runningTime;
    }

    private long getThreshold(String eventName) {
        Long value = (Long)thresholdMap.get(eventName);
        if (value == null) {
            String option = InternalPlatform.getDefault().getOption(eventName);
            if (option != null) {
                try {
                    value = new Long(option);
                }
                catch (NumberFormatException numberFormatException) {}
            }
            if (value == null) {
                value = new Long(Long.MAX_VALUE);
            }
            thresholdMap.put(eventName, value);
        }
        return value;
    }

    public int hashCode() {
        int hash = this.event.hashCode() * 37 + this.getBlameString().hashCode();
        if (this.context != null) {
            hash = hash * 37 + this.context.hashCode();
        }
        return hash;
    }

    public boolean isFailure() {
        return this.isFailure;
    }

    public void reset() {
        this.runningTime = 0L;
        this.runCount = 0;
    }

    public void startRun() {
        if (ENABLED) {
            this.startRun(null);
        }
    }

    public void startRun(String contextName) {
        if (!ENABLED) {
            return;
        }
        this.context = contextName;
        this.currentStart = System.currentTimeMillis();
    }

    public String toString() {
        StringBuffer result = new StringBuffer("PerformanceStats(");
        result.append(this.event);
        result.append(',');
        result.append(this.blame);
        if (this.context != null) {
            result.append(',');
            result.append(this.context);
        }
        result.append(')');
        return result.toString();
    }

    public static abstract class PerformanceListener {
        protected PerformanceListener() {
        }

        public void eventFailed(PerformanceStats event, long duration) {
        }

        public void eventsOccurred(PerformanceStats[] event) {
        }
    }
}

