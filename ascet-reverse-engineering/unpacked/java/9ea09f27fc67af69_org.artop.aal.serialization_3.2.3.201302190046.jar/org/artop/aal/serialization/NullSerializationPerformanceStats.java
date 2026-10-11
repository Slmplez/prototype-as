/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.sphinx.platform.stats.StatsEvent
 */
package org.artop.aal.serialization;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.artop.aal.serialization.ISerializationPerformanceStats;
import org.artop.aal.serialization.SerializationPerformanceStats;
import org.eclipse.sphinx.platform.stats.StatsEvent;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NullSerializationPerformanceStats
implements ISerializationPerformanceStats {
    public static NullSerializationPerformanceStats INSTANCE = new NullSerializationPerformanceStats();

    private NullSerializationPerformanceStats() {
    }

    protected String getPluginId() {
        return "";
    }

    public void closeAllParentContext() {
    }

    public void closeAndLogContext(String context, Object blame) {
    }

    public void closeAndLogContext(String context) {
    }

    public void closeAndLogCurrentContext() {
    }

    public void closeContext(String context) {
    }

    public boolean contextRunningTimeExceedTimeOut(String context, long timeOut) {
        return false;
    }

    public void endEvent(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject) {
    }

    public void endEvent(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject, String context) {
    }

    public Collection<String> getContextNames() {
        return Collections.emptyList();
    }

    public long getContextRunningTime(String context) {
        return 0L;
    }

    public StatsEvent getEventStat(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject, String context) {
        return null;
    }

    public Map<Integer, StatsEvent> getEventStats(SerializationPerformanceStats.SerializationEvent enumerator, String context) {
        return Collections.emptyMap();
    }

    public List<StatsEvent> getEventsTimeFailure() {
        return Collections.emptyList();
    }

    public List<StatsEvent> getTimeFailureEventsInContext(String context) {
        return Collections.emptyList();
    }

    public boolean isContextEventsTimeFailure(String context) {
        return false;
    }

    public boolean isEnabled() {
        return false;
    }

    public boolean isEventTimeFail(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject) {
        return false;
    }

    public boolean isEventTimeFail(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject, String context) {
        return false;
    }

    public boolean isEventTriggered() {
        return false;
    }

    public boolean isEventsTimeFailure() {
        return false;
    }

    public boolean isRegisteredContext(String context) {
        return false;
    }

    public int numberOfContextEventsTimeFailure(String context) {
        return 0;
    }

    public int numberOfEventsTimeFailure(String context) {
        return 0;
    }

    public void openContext(String context, Object blame) {
    }

    public void openContext(String context) {
    }

    public boolean openContextIfFirstOne(String context) {
        return false;
    }

    public String printAllStats() {
        return null;
    }

    public String printContextStats(String context) {
        return null;
    }

    public String printContextTree(String context) {
        return null;
    }

    public String printContextsTree() {
        return null;
    }

    public String printEventStat(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject, String context) {
        return null;
    }

    public String printEventStats(SerializationPerformanceStats.SerializationEvent enumerator, String context) {
        return null;
    }

    public void removeAllStats() {
    }

    public void removeContext(String context) {
    }

    public void removeStat(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject, String context) {
    }

    public void removeStatsForContext(String context) {
    }

    public void removeStatsForEvent(SerializationPerformanceStats.SerializationEvent enumerator, String context) {
    }

    public void startEvent(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject) {
    }

    public void startEvent(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject, String context) {
    }

    public void startNewEvent(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject) {
    }

    public void startNewEvent(SerializationPerformanceStats.SerializationEvent enumerator, Object blameObject, String context) {
    }

    @Override
    public void printToStandardOutput(String s) {
    }

    @Override
    public void printlnToStandardOutput(String s) {
    }

    public static class NullEventTypeEnumerator {
    }
}

