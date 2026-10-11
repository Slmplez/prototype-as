/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.stats;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.internal.stats.ClassloaderStats;
import org.eclipse.core.runtime.internal.stats.StatsManager;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundleStats {
    public String symbolicName;
    public long id;
    public int activationOrder;
    private long timestamp;
    private boolean duringStartup;
    private long startupTime;
    private long startupMethodTime;
    private long traceStart = -1L;
    private long traceEnd = -1L;
    private List<BundleStats> bundlesActivated = new ArrayList<BundleStats>(3);
    private BundleStats activatedBy = null;

    public BundleStats(String name, long id) {
        this.symbolicName = name;
        this.id = id;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int getActivationOrder() {
        return this.activationOrder;
    }

    protected void activated(BundleStats info) {
        this.bundlesActivated.add(info);
    }

    public BundleStats getActivatedBy() {
        return this.activatedBy;
    }

    public long getId() {
        return this.id;
    }

    public String getSymbolicName() {
        return this.symbolicName;
    }

    public long getStartupTime() {
        return this.startupTime;
    }

    public long getStartupMethodTime() {
        return this.startupMethodTime;
    }

    public boolean isStartupBundle() {
        return this.duringStartup;
    }

    public int getClassLoadCount() {
        if (!StatsManager.MONITOR_CLASSES) {
            return 0;
        }
        ClassloaderStats loader = ClassloaderStats.getLoader(this.symbolicName);
        return loader == null ? 0 : loader.getClassLoadCount();
    }

    public long getClassLoadTime() {
        if (!StatsManager.MONITOR_CLASSES) {
            return 0L;
        }
        ClassloaderStats loader = ClassloaderStats.getLoader(this.symbolicName);
        return loader == null ? 0L : loader.getClassLoadTime();
    }

    public List<BundleStats> getBundlesActivated() {
        return this.bundlesActivated;
    }

    public long getTraceStart() {
        return this.traceStart;
    }

    public long getTraceEnd() {
        return this.traceEnd;
    }

    protected void setTimestamp(long value) {
        this.timestamp = value;
    }

    protected void setActivationOrder(int value) {
        this.activationOrder = value;
    }

    protected void setTraceStart(long time) {
        this.traceStart = time;
    }

    protected void setDuringStartup(boolean value) {
        this.duringStartup = value;
    }

    protected void endActivation() {
        this.startupTime = System.currentTimeMillis() - this.timestamp;
    }

    protected void setTraceEnd(long position) {
        this.traceEnd = position;
    }

    protected void setActivatedBy(BundleStats value) {
        this.activatedBy = value;
    }
}

