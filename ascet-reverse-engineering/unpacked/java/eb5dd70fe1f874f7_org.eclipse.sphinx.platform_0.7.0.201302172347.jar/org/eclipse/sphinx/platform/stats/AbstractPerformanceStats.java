/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.sphinx.platform.stats;

import java.io.File;
import java.lang.management.ManagementFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.internal.messages.Messages;
import org.eclipse.sphinx.platform.messages.PlatformMessages;
import org.eclipse.sphinx.platform.stats.IEventTypeEnumerator;
import org.eclipse.sphinx.platform.stats.IPerformanceStats;
import org.eclipse.sphinx.platform.stats.PerformanceStatsLog;
import org.eclipse.sphinx.platform.stats.PlatformLogWriter;
import org.eclipse.sphinx.platform.stats.StatsEvent;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractPerformanceStats<T extends IEventTypeEnumerator>
implements IPerformanceStats<T> {
    private Map<Integer, String> contextNames = new HashMap<Integer, String>();
    private Map<Integer, long[]> contextUserTimes;
    private Map<Integer, String> eventNames = new HashMap<Integer, String>();
    private Map<Integer, ArrayList<Integer>> contextArborescence = new HashMap<Integer, ArrayList<Integer>>();
    private Map<Integer, Map<Integer, Map<Integer, StatsEvent>>> eventStatsMap = new HashMap<Integer, Map<Integer, Map<Integer, StatsEvent>>>();
    private LinkedList<String> contextStackCall = new LinkedList();
    private LinkedList<String> contextPrinted = new LinkedList();
    private PlatformLogWriter outLog;
    private static final String PERF = "/perf";
    private static final String JUNIT_OPTIONS = "/jUnitOptions";
    private static final String LOG_OPTIONS = "/logOptions";
    private static final String EVENT_OPTIONS = "/eventOptions";
    private static final String TIMEOUT_VALUE = "/timeOutValue";
    private static final String PERF_ID = "org.eclipse.sphinx.platform/perf";
    private static final String RESET_EVENT_BASE_ID = "org.eclipse.sphinx.platform/perf/jUnitOptions/keepEventInfoAfterLogging";
    private static final String LOG_IN_SEPARATE_LOG_FILE_ID = "org.eclipse.sphinx.platform/perf/logOptions/logInSeparateLogFile";
    private static final String LOG_ERROR_ON_TIMEOUT_ID = "org.eclipse.sphinx.platform/perf/logOptions/logErrorOnTimeout";
    private static final String LOG_WARNING_ON_NO_TIME_ID = "org.eclipse.sphinx.platform/perf/logOptions/logWarningOnNoTime";
    private static final String CLEAR_LOG_FILES_ON_STARTUP_ID = "org.eclipse.sphinx.platform/perf/logOptions/clearLogFilesOnStartup";
    private static final String LOG_EVENTS_DETAILS = "org.eclipse.sphinx.platform/perf/logOptions/logEventsDetails";
    private static boolean logEventDetails;
    private static boolean enabled;
    private static boolean resetEventBase;
    private static boolean logInSeparateLogFile;
    private static boolean logErrorOnTimeOut;
    private static boolean logWarningOnNoTime;
    private static boolean clearLogFilesOnStartup;
    public static String DEFAULT_CONTEXT;

    static {
        DEFAULT_CONTEXT = "Global";
        enabled = AbstractPerformanceStats.getBooleanOption(PERF_ID, false);
        resetEventBase = AbstractPerformanceStats.getBooleanOption(RESET_EVENT_BASE_ID, false);
        logInSeparateLogFile = !AbstractPerformanceStats.getBooleanOption(LOG_IN_SEPARATE_LOG_FILE_ID, true);
        logErrorOnTimeOut = AbstractPerformanceStats.getBooleanOption(LOG_ERROR_ON_TIMEOUT_ID, true);
        logWarningOnNoTime = AbstractPerformanceStats.getBooleanOption(LOG_WARNING_ON_NO_TIME_ID, true);
        clearLogFilesOnStartup = AbstractPerformanceStats.getBooleanOption(CLEAR_LOG_FILES_ON_STARTUP_ID, true);
        logEventDetails = AbstractPerformanceStats.getBooleanOption(LOG_EVENTS_DETAILS, false);
    }

    public AbstractPerformanceStats() {
        this.contextUserTimes = new HashMap<Integer, long[]>();
        this.outLog = this.createLog(String.valueOf(this.getClass().getSimpleName()) + ".log");
    }

    @Override
    public boolean isEnabled() {
        return enabled;
    }

    private PlatformLogWriter createLog(String logOutFileName) {
        PerformanceStatsLog perfLog = new PerformanceStatsLog(new File(logOutFileName));
        IPath logLocation = Platform.getLogFileLocation();
        logLocation = logLocation.removeLastSegments(1).append(logOutFileName);
        try {
            perfLog.setFile(logLocation.toFile(), false);
            if (perfLog.getFile() != null && perfLog.getFile().exists() && clearLogFilesOnStartup) {
                perfLog.getFile().delete();
            }
            perfLog.setFile(logLocation.toFile(), false);
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsError(Activator.getDefault(), ex);
        }
        return new PlatformLogWriter(perfLog);
    }

    private void addEventName(String eventName) {
        if (!this.eventNames.containsKey(eventName.hashCode())) {
            this.eventNames.put(eventName.hashCode(), eventName);
        }
    }

    private String getEventName(Integer eventId) {
        if (this.eventNames.containsKey(eventId)) {
            return this.eventNames.get(eventId);
        }
        return "Not referenced Event";
    }

    @Override
    public boolean isEventTriggered() {
        return true;
    }

    @Override
    public boolean openContextIfFirstOne(String context) {
        if (this.contextStackCall.isEmpty()) {
            this.openContext(context);
            return true;
        }
        return false;
    }

    @Override
    public void openContext(String context, Object blame) {
        if (blame != null) {
            this.openContext(String.valueOf(context) + blame.toString());
        } else {
            this.openContext(context);
        }
    }

    @Override
    public void openContext(String context) {
        if (context != null) {
            if (this.isEnabled() && this.contextStackCall != null) {
                if (this.contextStackCall.size() == 0) {
                    this.addContextName(context);
                    this.contextStackCall.addLast(context);
                } else {
                    this.addChildContext(this.contextStackCall.getLast(), context);
                    this.contextStackCall.addLast(context);
                }
                long[] userTimeForContext = this.contextUserTimes.get(context.hashCode());
                if (userTimeForContext != null) {
                    if (userTimeForContext[0] <= 0L) {
                        userTimeForContext[0] = System.currentTimeMillis();
                    }
                } else if (userTimeForContext[0] <= 0L) {
                    userTimeForContext[0] = System.currentTimeMillis();
                }
            }
        } else {
            String arg = "context";
            String msg = NLS.bind((String)PlatformMessages.error_mustNotBeNull, (Object)arg);
            PlatformLogUtil.logAsWarning(Activator.getDefault(), new IllegalArgumentException(msg));
        }
    }

    @Override
    public void closeAndLogContext(String context, Object blame) {
        this.closeAndLogContext(String.valueOf(context) + blame.toString());
    }

    @Override
    public void closeAndLogContext(String context) {
        if (this.isEnabled() && this.contextStackCall != null && !this.contextStackCall.isEmpty() && context.equals(this.contextStackCall.getLast())) {
            if (context.equals(this.contextStackCall.getFirst())) {
                long[] userTimeForContext = this.contextUserTimes.get(context.hashCode());
                if (userTimeForContext != null) {
                    userTimeForContext[0] = System.currentTimeMillis() - userTimeForContext[0];
                }
                if (this.getLongContextRunningTime(context.hashCode()) != 0L) {
                    this.logContext(context);
                }
                if (!resetEventBase) {
                    this.removeContext(context);
                }
                this.contextStackCall.remove(context);
            } else {
                long[] userTimeForContext = this.contextUserTimes.get(context.hashCode());
                if (userTimeForContext != null) {
                    userTimeForContext[0] = System.currentTimeMillis() - userTimeForContext[0];
                }
                this.contextStackCall.remove(context);
            }
        }
    }

    @Override
    public void closeAndLogCurrentContext() {
        if (this.isEnabled() && this.contextStackCall != null && !this.contextStackCall.isEmpty()) {
            String context = this.contextStackCall.getLast();
            if (context != null) {
                this.closeAndLogContext(context);
            } else {
                this.closeAndLogContext(DEFAULT_CONTEXT);
            }
        }
    }

    @Override
    public void closeAllParentContext() {
        if (this.isEnabled()) {
            while (!this.contextStackCall.isEmpty()) {
                this.closeAndLogCurrentContext();
            }
        }
    }

    @Override
    public void closeContext(String context) {
        if (this.contextStackCall != null && !this.contextStackCall.isEmpty() && context.equals(this.contextStackCall.getLast())) {
            this.contextStackCall.remove(context);
        }
    }

    private boolean isParentContext(String contextTested, String SupposedParentContext) {
        ArrayList<Integer> childs;
        if (contextTested != null && SupposedParentContext != null && (childs = this.getContextChilds(SupposedParentContext)) != null) {
            if (childs.contains(contextTested.hashCode())) {
                return true;
            }
            for (Integer childId : childs) {
                if (!this.isParentContext(contextTested, this.getContextName(childId))) continue;
                return true;
            }
        }
        return false;
    }

    private synchronized ArrayList<Integer> getContextChilds(String context) {
        return context != null ? this.getContextChilds(context.hashCode()) : null;
    }

    private synchronized ArrayList<Integer> getContextChilds(Integer context) {
        return this.contextArborescence != null ? this.contextArborescence.get(context) : null;
    }

    private boolean addContextName(String context) {
        if (context != null && !this.contextNames.containsKey(context.hashCode())) {
            long[] temp = new long[1];
            this.contextUserTimes.put(context.hashCode(), temp);
            this.contextNames.put(context.hashCode(), context);
            return true;
        }
        return false;
    }

    private String getContextName(Integer contextId) {
        return this.contextNames.get(contextId);
    }

    private boolean addChildContext(String parentContextName, String childContext) {
        if (parentContextName != null && childContext != null) {
            this.addContextName(parentContextName);
            this.addContextName(childContext);
            if (!parentContextName.equals(childContext) && this.contextArborescence != null) {
                ArrayList<Integer> contextChilds = this.contextArborescence.get(parentContextName.hashCode());
                if (contextChilds == null) {
                    contextChilds = new ArrayList();
                    this.contextArborescence.put(parentContextName.hashCode(), contextChilds);
                }
                if (!this.isParentContext(parentContextName, childContext) && !contextChilds.contains(childContext.hashCode())) {
                    contextChilds.add(childContext.hashCode());
                    return true;
                }
            }
        }
        return false;
    }

    protected static boolean getBooleanOption(String optionName, boolean defaultValue) {
        String optionValue = Platform.getDebugOption((String)optionName);
        if (optionValue != null) {
            Boolean value = Boolean.parseBoolean(optionValue);
            return value;
        }
        return defaultValue;
    }

    protected int getIntOption(String optionName, int defaultValue) {
        String optionValue = Platform.getDebugOption((String)optionName);
        if (optionValue != null) {
            int value = Integer.parseInt(optionValue);
            return value;
        }
        return defaultValue;
    }

    private int getTimeOutForEvent(StatsEvent event) {
        return event == null ? -1 : this.getIntOption(String.valueOf(this.getPerformanceStatsId()) + "/" + event.getEvent() + TIMEOUT_VALUE, -1);
    }

    protected abstract String getPluginId();

    @Override
    public void removeStat(T enumerator, Object blameObject, String context) {
        Map<Integer, StatsEvent> eventMap;
        if (enumerator != null && blameObject != null && context != null && (eventMap = this.getEventStats(enumerator, context)) != null) {
            eventMap.remove(blameObject.hashCode());
        }
    }

    @Override
    public void removeContext(String context) {
        if (context != null && this.contextNames != null) {
            this.contextNames.remove(context.hashCode());
            this.removeStatsForContext(context);
        }
    }

    @Override
    public void removeStatsForContext(String context) {
        Map<Integer, Map<Integer, StatsEvent>> mapEventStats;
        if (context != null && this.eventStatsMap != null && (mapEventStats = this.eventStatsMap.get(context.hashCode())) != null) {
            ArrayList<Integer> childList;
            mapEventStats.clear();
            if (!this.contextArborescence.isEmpty() && this.contextArborescence.containsKey(context.hashCode()) && (childList = this.contextArborescence.get(context.hashCode())) != null) {
                for (Integer contextChildsToEraseID : childList) {
                    this.removeStatsForContext(this.contextNames.get(contextChildsToEraseID));
                    this.contextNames.remove(contextChildsToEraseID);
                }
                childList.clear();
            }
        }
    }

    @Override
    public void removeStatsForEvent(T enumerator, String context) {
        Map<Integer, Map<Integer, StatsEvent>> mapEventStats;
        if (enumerator != null && this.eventStatsMap != null && (mapEventStats = this.eventStatsMap.get(context.hashCode())) != null) {
            mapEventStats.remove(enumerator.getName().hashCode());
        }
    }

    @Override
    public void removeAllStats() {
        if (this.eventStatsMap != null && this.eventStatsMap != null && this.contextArborescence != null) {
            this.eventStatsMap.clear();
            this.contextNames.clear();
            this.contextArborescence.clear();
        }
    }

    @Override
    public boolean isEventTimeFail(T enumerator, Object blameObject) {
        return this.isEventTimeFail(enumerator, blameObject, DEFAULT_CONTEXT);
    }

    @Override
    public boolean isEventTimeFail(T enumerator, Object blameObject, String context) {
        if (blameObject != null && enumerator != null) {
            return this.isEventTimeFailure(this.getEventStat(enumerator, blameObject, context));
        }
        String arg = "";
        if (blameObject == null) {
            arg = "blameObject";
        } else if (enumerator == null) {
            arg = "eventId";
        } else if (context == null) {
            arg = "context";
        }
        String msg = NLS.bind((String)PlatformMessages.error_mustNotBeNull, (Object)arg);
        PlatformLogUtil.logAsWarning(Activator.getDefault(), new IllegalArgumentException(msg));
        return false;
    }

    private boolean isEventTimeFailure(StatsEvent event) {
        int timeOut;
        if (event != null && (timeOut = this.getTimeOutForEvent(event)) != -1) {
            return event.getRunningTime() >= (long)timeOut;
        }
        return false;
    }

    private String getPerformanceStatsId() {
        return String.valueOf(this.getPluginId()) + PERF + EVENT_OPTIONS + "/" + this.getClass().getSimpleName();
    }

    private boolean isEventTracingActive(String eventName) {
        return eventName != null ? AbstractPerformanceStats.getBooleanOption(String.valueOf(this.getPerformanceStatsId()) + "/" + eventName, false) : false;
    }

    @Override
    public void startNewEvent(T enumerator, Object blameObject) {
        if (blameObject != null && enumerator != null) {
            if (this.contextStackCall != null) {
                if (this.contextStackCall.isEmpty()) {
                    this.addContextName(DEFAULT_CONTEXT);
                    this.startEvent(enumerator, blameObject, DEFAULT_CONTEXT, true);
                } else {
                    this.startEvent(enumerator, blameObject, this.contextStackCall.getLast(), true);
                }
            } else {
                this.addContextName(DEFAULT_CONTEXT);
                this.startEvent(enumerator, blameObject, DEFAULT_CONTEXT, true);
            }
        } else {
            String arg = "";
            if (blameObject == null) {
                arg = "blameObject";
            } else if (enumerator == null) {
                arg = "eventId";
            }
            String msg = NLS.bind((String)PlatformMessages.error_mustNotBeNull, (Object)arg);
            PlatformLogUtil.logAsWarning(Activator.getDefault(), new IllegalArgumentException(msg));
        }
    }

    @Override
    public void startEvent(T enumerator, Object blameObject) {
        if (blameObject != null && enumerator != null) {
            if (this.contextStackCall != null) {
                if (this.contextStackCall.isEmpty()) {
                    this.addContextName(DEFAULT_CONTEXT);
                    this.startEvent(enumerator, blameObject, DEFAULT_CONTEXT, false);
                } else {
                    this.startEvent(enumerator, blameObject, this.contextStackCall.getLast(), false);
                }
            } else {
                this.addContextName(DEFAULT_CONTEXT);
                this.startEvent(enumerator, blameObject, DEFAULT_CONTEXT, false);
            }
        } else {
            String arg = "";
            if (blameObject == null) {
                arg = "blameObject";
            } else if (enumerator == null) {
                arg = "eventId";
            }
            String msg = NLS.bind((String)PlatformMessages.error_mustNotBeNull, (Object)arg);
            PlatformLogUtil.logAsWarning(Activator.getDefault(), new IllegalArgumentException(msg));
        }
    }

    @Override
    public void startNewEvent(T enumerator, Object blameObject, String context) {
        this.startEvent(enumerator, blameObject, context, true);
    }

    @Override
    public void startEvent(T enumerator, Object blameObject, String context) {
        this.startEvent(enumerator, blameObject, context, false);
    }

    private void startEvent(T enumerator, Object blameObject, String context, boolean reset) {
        long time = 0L;
        if (this.isEnabled() && this.isEventTracingActive(enumerator.getName())) {
            StatsEvent eventStat = null;
            eventStat = context != null ? this.getEventStat(enumerator, blameObject, context) : this.getEventStat(enumerator, blameObject, DEFAULT_CONTEXT);
            if (eventStat == null) {
                eventStat = this.addEventStat(enumerator, blameObject, context);
            }
            time = this.getTime();
            eventStat.startRun(time, reset, context);
        }
    }

    private String getLastContext() {
        if (this.contextStackCall != null && !this.contextStackCall.isEmpty()) {
            return this.contextStackCall.getLast();
        }
        return DEFAULT_CONTEXT;
    }

    @Override
    public void endEvent(T enumerator, Object blameObject) {
        this.endEvent(enumerator, blameObject, this.getLastContext());
    }

    @Override
    public void endEvent(T enumerator, Object blameObject, String context) {
        long time = this.getTime();
        if (blameObject != null && enumerator != null && context != null) {
            StatsEvent eventStat;
            if (this.isEnabled() && this.isEventTracingActive(enumerator.getName()) && (eventStat = this.getEventStat(enumerator, blameObject, context)) != null) {
                eventStat.endRun(time);
                this.logEvent(eventStat);
            }
        } else {
            String arg = "";
            if (blameObject == null) {
                arg = "blameObject";
            } else if (enumerator == null) {
                arg = "eventId";
            } else if (context == null) {
                arg = "contextId";
            }
            String msg = NLS.bind((String)PlatformMessages.error_mustNotBeNull, (Object)arg);
            PlatformLogUtil.logAsWarning(Activator.getDefault(), new IllegalArgumentException(msg));
        }
    }

    private StatsEvent addEventStat(T enumerator, Object blameObject, String context) {
        StatsEvent eventStat;
        Map<Integer, StatsEvent> statsForEvent;
        Map<Integer, Map<Integer, StatsEvent>> statsForContext = this.eventStatsMap.get(context.hashCode());
        if (statsForContext == null) {
            this.eventStatsMap.put(context.hashCode(), new HashMap());
            statsForContext = this.eventStatsMap.get(context.hashCode());
        }
        if ((statsForEvent = statsForContext.get(enumerator.getName().hashCode())) == null) {
            statsForContext.put(enumerator.getName().hashCode(), new HashMap());
            statsForEvent = statsForContext.get(enumerator.getName().hashCode());
            this.addEventName(enumerator.getName());
        }
        if ((eventStat = statsForEvent.get(blameObject.hashCode())) == null) {
            eventStat = new StatsEvent(enumerator.getName(), blameObject);
            statsForEvent.put(blameObject.hashCode(), eventStat);
        }
        return eventStat;
    }

    @Override
    public StatsEvent getEventStat(T enumerator, Object blameObject, String context) {
        if (blameObject != null && enumerator != null && context != null) {
            Map<Integer, StatsEvent> statsForEvent = this.getEventStats(enumerator, context);
            if (statsForEvent != null) {
                StatsEvent stats = statsForEvent.get(blameObject.hashCode());
                return stats;
            }
            return null;
        }
        String arg = "";
        if (blameObject == null) {
            arg = "blameObject";
        } else if (enumerator == null) {
            arg = "eventId";
        }
        String msg = NLS.bind((String)PlatformMessages.error_mustNotBeNull, (Object)arg);
        PlatformLogUtil.logAsWarning(Activator.getDefault(), new IllegalArgumentException(msg));
        return null;
    }

    @Override
    public Map<Integer, StatsEvent> getEventStats(T enumerator, String context) {
        if (enumerator != null && context != null) {
            return this.getEventStats(enumerator.getName().hashCode(), context.hashCode());
        }
        String arg = "";
        if (enumerator == null) {
            arg = "eventId";
        } else if (context == null) {
            arg = "context";
        }
        String msg = NLS.bind((String)PlatformMessages.error_mustNotBeNull, (Object)arg);
        PlatformLogUtil.logAsWarning(Activator.getDefault(), new IllegalArgumentException(msg));
        return null;
    }

    private Map<Integer, StatsEvent> getEventStats(Integer EventTypeId, Integer context) {
        Map<Integer, Map<Integer, StatsEvent>> statsForContext = this.getContextStats(context);
        if (statsForContext != null) {
            return statsForContext.get(EventTypeId);
        }
        return null;
    }

    private Map<Integer, Map<Integer, StatsEvent>> getContextStats(Integer context) {
        return this.eventStatsMap.get(context);
    }

    private String getStringContextRunningTime(Integer contextId) {
        long[] userTimeForContext = this.contextUserTimes.get(contextId);
        String message = "";
        if (userTimeForContext != null) {
            message = NLS.bind((String)Messages.perfLog_$0$1runningTimeAndUserRunningTime, (Object)this.getConvertedRunningTime(this.getLongContextRunningTime(contextId)), (Object)this.getConvertedRunningTime(userTimeForContext[0]));
            userTimeForContext[0] = 0L;
        } else {
            message = NLS.bind((String)Messages.perfLog_$0runningTime, (Object)this.getConvertedRunningTime(this.getLongContextRunningTime(contextId)));
        }
        return message;
    }

    private long getLongContextEventsRunningTime(Integer context, Integer eventId) {
        Map<Integer, StatsEvent> statsforEvent;
        long result = 0L;
        Map<Integer, Map<Integer, StatsEvent>> statsForContext = this.getContextStats(context);
        if (statsForContext != null && (statsforEvent = statsForContext.get(eventId)) != null) {
            for (Integer statId : statsforEvent.keySet()) {
                result += statsforEvent.get(statId).getRunningTime();
            }
        }
        return result;
    }

    @Override
    public Collection<String> getContextNames() {
        if (this.contextNames != null) {
            return this.contextNames.values();
        }
        return null;
    }

    @Override
    public boolean contextRunningTimeExceedTimeOut(String context, long timeOut) {
        if (context != null) {
            return this.getContextRunningTime(context) >= timeOut;
        }
        return false;
    }

    @Override
    public boolean isRegisteredContext(String context) {
        if (this.contextNames != null) {
            return this.contextNames.containsKey(context.hashCode());
        }
        return false;
    }

    @Override
    public long getContextRunningTime(String context) {
        long result = 0L;
        result = this.contextNames.containsKey(context.hashCode()) ? this.getLongContextRunningTime(context.hashCode()) : -1L;
        return result;
    }

    @Override
    public List<StatsEvent> getTimeFailureEventsInContext(String context) {
        if (this.isRegisteredContext(context) && context != null) {
            return this.getTimeFailureEventsInContext(context.hashCode());
        }
        return null;
    }

    private LinkedList<StatsEvent> getTimeFailureEventsInContext(Integer context) {
        ArrayList<Integer> contextChilds;
        LinkedList<StatsEvent> result = new LinkedList<StatsEvent>();
        Map<Integer, Map<Integer, StatsEvent>> statsForContext = this.getContextStats(context);
        if (statsForContext != null) {
            for (Integer eventId : statsForContext.keySet()) {
                Map<Integer, StatsEvent> statsforEvent = statsForContext.get(eventId);
                if (statsforEvent == null) continue;
                for (Integer statId : statsforEvent.keySet()) {
                    if (!this.isEventTimeFailure(statsforEvent.get(statId))) continue;
                    result.addLast(statsforEvent.get(statId));
                }
            }
        }
        if ((contextChilds = this.getContextChilds(this.getContextName(context))) != null) {
            for (Integer childiD : contextChilds) {
                result.addAll(this.getTimeFailureEventsInContext(childiD));
            }
        }
        return result;
    }

    @Override
    public boolean isEventsTimeFailure() {
        boolean result = false;
        for (Integer contextId : this.contextNames.keySet()) {
            boolean bl = result = result || this.isContextEventsTimeFailure(contextId) > 0;
        }
        return result;
    }

    @Override
    public int numberOfEventsTimeFailure(String context) {
        if (context != null) {
            return this.getTimeFailureEventsInContext(context).size();
        }
        return 0;
    }

    @Override
    public List<StatsEvent> getEventsTimeFailure() {
        LinkedList<StatsEvent> result = null;
        if (this.isEnabled() && this.eventStatsMap != null) {
            result = new LinkedList<StatsEvent>();
            for (Integer contextid : this.eventStatsMap.keySet()) {
                if (this.eventStatsMap.get(contextid) == null) continue;
                for (Integer eventTypeid : this.eventStatsMap.get(contextid).keySet()) {
                    if (this.eventStatsMap.get(contextid).get(eventTypeid) == null) continue;
                    for (Integer blameId : this.eventStatsMap.get(contextid).get(eventTypeid).keySet()) {
                        if (!this.isEventTimeFailure(this.eventStatsMap.get(contextid).get(eventTypeid).get(blameId))) continue;
                        result.addLast(this.eventStatsMap.get(contextid).get(eventTypeid).get(blameId));
                    }
                }
            }
        }
        return result;
    }

    @Override
    public boolean isContextEventsTimeFailure(String context) {
        if (this.isRegisteredContext(context)) {
            return this.isContextEventsTimeFailure(context.hashCode()) > 0;
        }
        return false;
    }

    @Override
    public int numberOfContextEventsTimeFailure(String context) {
        if (this.isRegisteredContext(context)) {
            return this.isContextEventsTimeFailure(context.hashCode());
        }
        return 0;
    }

    private int isContextEventsTimeFailure(Integer context) {
        ArrayList<Integer> contextChilds;
        int result = 0;
        Map<Integer, Map<Integer, StatsEvent>> statsForContext = this.getContextStats(context);
        if (statsForContext != null) {
            for (Integer eventId : statsForContext.keySet()) {
                Map<Integer, StatsEvent> statsforEvent = statsForContext.get(eventId);
                if (statsforEvent == null) continue;
                for (Integer statId : statsforEvent.keySet()) {
                    if (!this.isEventTimeFailure(statsforEvent.get(statId))) continue;
                    ++result;
                }
            }
        }
        if ((contextChilds = this.getContextChilds(this.getContextName(context))) != null) {
            for (Integer childiD : contextChilds) {
                result += this.isContextEventsTimeFailure(childiD);
            }
        }
        return result;
    }

    private long getLongContextRunningTime(Integer context) {
        ArrayList<Integer> contextChilds;
        long result = 0L;
        Map<Integer, Map<Integer, StatsEvent>> statsForContext = this.getContextStats(context);
        if (statsForContext != null) {
            for (Integer eventId : statsForContext.keySet()) {
                Map<Integer, StatsEvent> statsforEvent = statsForContext.get(eventId);
                if (statsforEvent == null) continue;
                for (Integer statId : statsforEvent.keySet()) {
                    result += statsforEvent.get(statId).getRunningTime();
                }
            }
        }
        if ((contextChilds = this.getContextChilds(this.getContextName(context))) != null) {
            for (Integer childiD : contextChilds) {
                result += this.getLongContextRunningTime(childiD);
            }
        }
        return result;
    }

    @Override
    public String printContextTree(String context) {
        return this.printContextTree(context.hashCode());
    }

    private String printContextTree(Integer contextId) {
        if (this.isEnabled()) {
            StringBuffer result = new StringBuffer();
            ArrayList<Integer> Childlist = this.contextArborescence.get(contextId);
            if (Childlist != null) {
                for (Integer childId : Childlist) {
                    result.append("\n Child: " + this.getContextName(childId));
                    result.append("\n -> " + this.printContextTree(childId));
                }
            }
            return result.toString();
        }
        return "";
    }

    @Override
    public String printContextsTree() {
        if (this.isEnabled() && this.contextArborescence != null) {
            StringBuffer result = new StringBuffer();
            for (Integer contextId : this.contextArborescence.keySet()) {
                result.append("\n\nContext: " + this.getContextName(contextId) + " Running time: " + this.getConvertedRunningTime(this.getLongContextRunningTime(contextId)));
                result.append("\n -> " + this.printContextTree(contextId));
            }
            return result.toString();
        }
        return "";
    }

    @Override
    public String printAllStats() {
        this.contextPrinted.clear();
        if (this.isEnabled() && this.contextNames != null) {
            StringBuffer result = new StringBuffer();
            String offset = "|";
            for (Integer contextId : this.contextNames.keySet()) {
                if (this.contextPrinted.contains(this.getContextName(contextId))) continue;
                result.append("\n-------------------------------------------------------" + this.printContextStats(this.getContextName(contextId), offset) + "\n-------------------------------------------------------");
            }
            return result.toString();
        }
        return Messages.perfLog_performanceStatsNotActivated;
    }

    @Override
    public String printContextStats(String context) {
        return this.printContextStats(context, "");
    }

    private String printContextStats(String context, String offset) {
        if (this.isEnabled() && context != null && this.eventStatsMap != null) {
            StringBuffer result = new StringBuffer("");
            if (this.eventStatsMap.containsKey(context.hashCode())) {
                ArrayList<Integer> contextChilds;
                Map<Integer, Map<Integer, StatsEvent>> Statsmap = this.eventStatsMap.get(context.hashCode());
                if (Statsmap != null) {
                    result.append("\n\n" + offset + " + " + "Context: " + this.getContextName(context.hashCode()) + " Running time: " + this.getConvertedRunningTime(this.getLongContextRunningTime(context.hashCode())));
                    for (Integer eventId : Statsmap.keySet()) {
                        result.append(this.printEventStats(eventId, context.hashCode(), offset));
                    }
                }
                if ((contextChilds = this.getContextChilds(context)) != null) {
                    int i = 0;
                    while (i < contextChilds.size()) {
                        result.append(this.printContextStats(this.getContextName(contextChilds.get(i)), String.valueOf(offset) + "  " + "|"));
                        ++i;
                    }
                }
                this.contextPrinted.add(context);
            }
            return result.toString();
        }
        return Messages.perfLog_performanceStatsNotActivated;
    }

    @Override
    public String printEventStat(T enumerator, Object blameObject, String context) {
        if (this.isEnabled() && enumerator != null && blameObject != null && context != null) {
            StatsEvent event = this.getEventStat(enumerator, blameObject, context);
            if (event != null) {
                return this.printEventStat(event);
            }
            return "";
        }
        if (this.isEnabled()) {
            return PlatformMessages.arg_mustNotBeNull;
        }
        return Messages.perfLog_performanceStatsNotActivated;
    }

    private String printEventStats(Integer EventId, Integer contextId, String offset) {
        Map<Integer, StatsEvent> eventMap = this.getEventStats(EventId, contextId);
        if (eventMap != null) {
            StringBuffer result = new StringBuffer();
            for (Integer eventBlameId : eventMap.keySet()) {
                result.append("\n" + this.printEventStat(eventMap.get(eventBlameId), offset));
            }
            return result.toString();
        }
        return "";
    }

    @Override
    public String printEventStats(T enumerator, String context) {
        if (this.isEnabled() && enumerator != null && context != null) {
            Map<Integer, StatsEvent> eventMap = this.getEventStats(enumerator, context);
            if (eventMap != null) {
                StringBuffer result = new StringBuffer("\n-Event Type: " + enumerator.getName());
                for (Integer eventBlameId : eventMap.keySet()) {
                    result.append("\n" + eventMap.get(eventBlameId).printEventStatProperties());
                }
                return result.toString();
            }
            return "";
        }
        return Messages.perfLog_performanceStatsNotActivated;
    }

    private String printEventStat(StatsEvent event) {
        return event.printEventStat();
    }

    private String printEventStat(StatsEvent event, String offset) {
        return event.printEventStat(offset);
    }

    private long getTime() {
        long time = ManagementFactory.getThreadMXBean().getCurrentThreadCpuTime();
        return time /= 1000000L;
    }

    private void logEvent(StatsEvent event) {
        Status eventStatus;
        if (event != null && event.getContextName().equals(DEFAULT_CONTEXT) && (eventStatus = this.getEventStatus(event)) != null) {
            if (!logInSeparateLogFile) {
                if (this.outLog != null) {
                    this.outLog.logging((IStatus)eventStatus, "org.eclipse.sphinx.platform");
                }
            } else {
                Activator.getDefault().getLog().log((IStatus)eventStatus);
            }
        }
    }

    private void logContext(String context) {
        if (!logInSeparateLogFile) {
            if (this.outLog != null) {
                this.outLog.logging((IStatus)this.getContextInfoStatus(context.hashCode()), "org.eclipse.sphinx.platform");
            }
        } else {
            Activator.getDefault().getLog().log((IStatus)this.getContextInfoStatus(context.hashCode()));
        }
    }

    private MultiStatus getContextEventsInfoStatus(Integer contextId, Integer eventId) {
        Map<Integer, StatsEvent> eventsMap;
        Map<Integer, Map<Integer, StatsEvent>> contextStats;
        Map<Integer, StatsEvent> eventsMap2;
        int count = 0;
        Map<Integer, Map<Integer, StatsEvent>> contextStatstemp = this.getContextStats(contextId);
        if (contextStatstemp != null && (eventsMap2 = contextStatstemp.get(eventId)) != null) {
            count = eventsMap2.size();
        }
        int status = 1;
        MultiStatus result = new MultiStatus("org.eclipse.sphinx.platform", status, NLS.bind((String)Messages.perfLog_$0$1$2contextInfos, (Object[])new String[]{"" + count, this.getEventName(eventId), this.getConvertedRunningTime(this.getLongContextEventsRunningTime(contextId, eventId))}), (Throwable)new RuntimeException());
        if (contextId != null && logEventDetails && (contextStats = this.getContextStats(contextId)) != null && (eventsMap = contextStats.get(eventId)) != null) {
            for (Integer statId : eventsMap.keySet()) {
                Status eventStatus;
                StatsEvent statsEvent = eventsMap.get(statId);
                if (statsEvent == null || (eventStatus = this.getEventStatus(statsEvent)) == null) continue;
                AbstractPerformanceStats.encloseStatus(result, eventStatus);
            }
        }
        return result;
    }

    private Status getEventStatus(StatsEvent event) {
        if (this.isEnabled() && event != null) {
            if (logErrorOnTimeOut && this.isEventTimeFailure(event)) {
                return new Status(4, "org.eclipse.sphinx.platform", NLS.bind((String)Messages.perfLog_$0runningTimeExceedTimeout, (Object)event.toString()), (Throwable)new RuntimeException());
            }
            if (logWarningOnNoTime && event.getRunningTime() == 0L) {
                return new Status(2, "org.eclipse.sphinx.platform", NLS.bind((String)Messages.perfLog_$0runningTimeZero, (Object)event.toString()), (Throwable)new RuntimeException());
            }
            return null;
        }
        return null;
    }

    private MultiStatus getContextInfoStatus(Integer contextId) {
        String contextName = this.getContextName(contextId);
        if (contextId.intValue() == DEFAULT_CONTEXT.hashCode()) {
            contextName = DEFAULT_CONTEXT;
        } else if (contextName == null) {
            contextName = "_" + contextId + "_";
        }
        String msg = String.valueOf(contextName) + " - " + this.getStringContextRunningTime(contextId);
        MultiStatus result = new MultiStatus("org.eclipse.sphinx.platform", 1, msg, (Throwable)new RuntimeException());
        if (contextId != null) {
            ArrayList<Integer> contextChilds;
            Map<Integer, Map<Integer, StatsEvent>> contextStats = this.getContextStats(contextId);
            if (contextStats != null) {
                for (Integer eventId : contextStats.keySet()) {
                    AbstractPerformanceStats.encloseStatus(result, this.getContextEventsInfoStatus(contextId, eventId));
                }
            }
            if ((contextChilds = this.getContextChilds(contextId)) != null) {
                for (Integer childId : contextChilds) {
                    AbstractPerformanceStats.encloseStatus(result, this.getContextInfoStatus(childId));
                }
            }
        }
        return result;
    }

    private static void encloseStatus(MultiStatus parentIStatus, Status childIStatus) {
        parentIStatus.add((IStatus)childIStatus);
    }

    private static void encloseStatus(MultiStatus parentIStatus, MultiStatus childIStatus) {
        parentIStatus.add((IStatus)childIStatus);
    }

    private String getConvertedSecondes(long runningTime) {
        String result = "";
        double time = ((double)runningTime - (double)(runningTime % 1000L)) / 1000.0;
        double reste = (double)runningTime % 1000.0;
        result = String.valueOf((long)time) + " s";
        if (reste > 0.0) {
            result = String.valueOf(result) + ":" + (long)reste + " ms";
        }
        return result;
    }

    private String getConvertedRunningTime(long runningTime) {
        String result = "";
        if (runningTime >= 60000L) {
            double time = ((double)runningTime - (double)(runningTime % 60000L)) / 60000.0;
            double reste = runningTime % 60000L;
            result = String.valueOf((long)time) + " min";
            if (reste > 0.0) {
                result = String.valueOf(result) + ":" + this.getConvertedSecondes((long)reste);
            }
        } else {
            result = runningTime >= 1000L ? this.getConvertedSecondes(runningTime) : String.valueOf(runningTime) + " ms";
        }
        return "[ " + result + " ]";
    }
}

