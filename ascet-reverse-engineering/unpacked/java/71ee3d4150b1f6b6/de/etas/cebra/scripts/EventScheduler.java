/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.scripts;

import de.etas.cebra.Cebra;
import de.etas.cebra.scripts.EventScript;
import de.etas.util.LogFile;
import java.util.Hashtable;

public final class EventScheduler {
    private static Hashtable eventClasses = new Hashtable();
    private static LogFile lf = new LogFile(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + "Event.log");

    private EventScheduler() {
    }

    private static final EventScript getScriptForEvent(int event) {
        return (EventScript)eventClasses.get(new Integer(event));
    }

    public static final void handleEvent(int event) {
        EventScheduler.startScriptForEventCode(event, null);
    }

    public static final void handleEvent(int event, EventScript script) {
        EventScheduler.startEventScript(script, event, null);
    }

    public static final void handleEvent(int event, EventScript script, Object obj) {
        EventScheduler.startEventScript(script, event, obj);
    }

    public static final void handleEvent(int event, Object param) {
        EventScheduler.startScriptForEventCode(event, param);
    }

    private static void logEntry(String msg) {
        lf.logMessage(msg);
    }

    public static final void registerEvent(int event, EventScript script) {
        if (script == null) {
            return;
        }
        eventClasses.put(new Integer(event), script);
    }

    public static final void registerObjectForEvent(EventScript script, Object obj, int event) {
        if (script == null) {
            return;
        }
        if (obj == null) {
            return;
        }
        script.putObjectForEvent(event, obj);
    }

    private static void startEventScript(EventScript script, int eventCode, Object obj) {
        if (script == null) {
            EventScheduler.startScriptForEventCode(eventCode, obj);
            return;
        }
        script.setCallingObject(obj);
        if (obj != null) {
            script.putObjectForEvent(eventCode, obj);
        }
        script.setEvent(eventCode);
    }

    private static void startScriptForEventCode(int code, Object obj) {
        EventScript script = EventScheduler.getScriptForEvent(code);
        if (script == null) {
            EventScheduler.logEntry("No script defined for event " + code);
            return;
        }
        EventScheduler.startEventScript(script, code, obj);
    }
}

