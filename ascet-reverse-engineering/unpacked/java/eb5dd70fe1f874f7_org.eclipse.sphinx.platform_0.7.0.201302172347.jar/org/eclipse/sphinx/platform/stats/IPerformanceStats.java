/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.platform.stats;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.eclipse.sphinx.platform.stats.IEventTypeEnumerator;
import org.eclipse.sphinx.platform.stats.StatsEvent;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPerformanceStats<T extends IEventTypeEnumerator> {
    public boolean isEnabled();

    public boolean isEventTriggered();

    public boolean openContextIfFirstOne(String var1);

    public void openContext(String var1, Object var2);

    public void openContext(String var1);

    public void closeAndLogContext(String var1, Object var2);

    public void closeAndLogContext(String var1);

    public void closeAndLogCurrentContext();

    public void closeAllParentContext();

    public void closeContext(String var1);

    public void removeStat(T var1, Object var2, String var3);

    public void removeContext(String var1);

    public void removeStatsForContext(String var1);

    public void removeStatsForEvent(T var1, String var2);

    public void removeAllStats();

    public boolean isEventTimeFail(T var1, Object var2);

    public boolean isEventTimeFail(T var1, Object var2, String var3);

    public void startNewEvent(T var1, Object var2);

    public void startEvent(T var1, Object var2);

    public void startNewEvent(T var1, Object var2, String var3);

    public void startEvent(T var1, Object var2, String var3);

    public void endEvent(T var1, Object var2);

    public void endEvent(T var1, Object var2, String var3);

    public StatsEvent getEventStat(T var1, Object var2, String var3);

    public Map<Integer, StatsEvent> getEventStats(T var1, String var2);

    public Collection<String> getContextNames();

    public boolean contextRunningTimeExceedTimeOut(String var1, long var2);

    public boolean isRegisteredContext(String var1);

    public long getContextRunningTime(String var1);

    public List<StatsEvent> getTimeFailureEventsInContext(String var1);

    public boolean isEventsTimeFailure();

    public int numberOfEventsTimeFailure(String var1);

    public List<StatsEvent> getEventsTimeFailure();

    public boolean isContextEventsTimeFailure(String var1);

    public int numberOfContextEventsTimeFailure(String var1);

    public String printContextTree(String var1);

    public String printContextsTree();

    public String printAllStats();

    public String printContextStats(String var1);

    public String printEventStat(T var1, Object var2, String var3);

    public String printEventStats(T var1, String var2);
}

