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
public class ClassStats {
    private String className;
    private ClassloaderStats classloader;
    private int loadOrder = -1;
    private long timestamp;
    private long timeLoading;
    private long timeLoadingOthers = 0L;
    private ClassStats loadedBy = null;
    private List<ClassStats> loaded = new ArrayList<ClassStats>(2);
    private boolean duringStartup;
    private long traceStart = -1L;
    private long traceEnd = -1L;

    public ClassStats(String name, ClassloaderStats classloader) {
        this.className = name;
        this.timestamp = System.currentTimeMillis();
        this.duringStartup = StatsManager.isBooting();
        this.classloader = classloader;
    }

    public void setLoadOrder(int order) {
        this.loadOrder = order;
    }

    public void loadingDone() {
        this.timeLoading = System.currentTimeMillis() - this.timestamp;
    }

    public long getTimeLoading() {
        return this.timeLoading;
    }

    public long getLocalTimeLoading() {
        return this.timeLoading - this.timeLoadingOthers;
    }

    public void addTimeLoadingOthers(long time) {
        this.timeLoadingOthers += time;
    }

    public long getTraceStart() {
        return this.traceStart;
    }

    public long getTraceEnd() {
        return this.traceEnd;
    }

    public void setTraceStart(long position) {
        this.traceStart = position;
    }

    public void setTraceEnd(long position) {
        this.traceEnd = position;
    }

    public void loaded(ClassStats child) {
        this.loaded.add(child);
    }

    public void setLoadedBy(ClassStats parent) {
        this.loadedBy = parent;
    }

    public ClassStats getLoadedBy() {
        return this.loadedBy;
    }

    public List<ClassStats> getLoadedClasses() {
        return this.loaded;
    }

    public String getClassName() {
        return this.className;
    }

    public boolean isStartupClass() {
        return this.duringStartup;
    }

    public ClassloaderStats getClassloader() {
        return this.classloader;
    }

    public int getLoadOrder() {
        return this.loadOrder;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void toBaseClass() {
        this.duringStartup = true;
        this.loadOrder = -2;
    }
}

