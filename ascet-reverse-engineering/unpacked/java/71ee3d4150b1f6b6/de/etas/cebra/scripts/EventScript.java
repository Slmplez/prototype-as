/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.scripts;

import de.etas.cebra.Cebra;
import de.etas.cebra.scripts.Script;
import de.etas.cebra.scripts.ScriptScheduler;
import de.etas.multitasking.MessageQueue;
import de.etas.util.Utilities;
import java.util.Hashtable;

public abstract class EventScript
extends Script {
    private MessageQueue eventQueue = new MessageQueue("Event Queue", 100);
    private Hashtable objectForEvent = new Hashtable(7);
    private Object callingObject = null;
    private boolean activated = false;
    static Class class$de$etas$cebra$scripts$EventScript;

    protected EventScript() {
    }

    protected abstract void close();

    public final void execution() {
        boolean weiter = true;
        while (weiter) {
            int eventCode = this.eventQueue.getEvent();
            switch (eventCode) {
                case -1: {
                    weiter = false;
                    this.close();
                    this.setStateActive();
                    break;
                }
                case -2: {
                    this.initialize();
                    this.setStateActive();
                    break;
                }
                default: {
                    this.handleEvent(eventCode);
                    this.setStateActive();
                }
            }
        }
        this.activated = false;
    }

    protected final Object getCallingObject() {
        return this.callingObject;
    }

    protected synchronized Object getObjectForEvent(int event) {
        return this.objectForEvent.get(new Integer(event));
    }

    protected abstract void handleEvent(int var1);

    protected abstract void initialize();

    public static boolean isEventScriptClass(Class clazz) {
        Class<?> clazz2 = class$de$etas$cebra$scripts$EventScript;
        if (clazz2 == null) {
            try {
                clazz2 = class$de$etas$cebra$scripts$EventScript = Class.forName("de.etas.cebra.scripts.EventScript");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return Utilities.distClass(clazz, clazz2) >= 0;
    }

    public static final EventScript newEventScript(String s) {
        EventScript ergeb = null;
        if (s == null) {
            return null;
        }
        Class klasse = Cebra.getClassByName(s);
        if (klasse == null) {
            Cebra.println("Error: Creating a new instance of " + s + " failed due to the fact that it was not found in the class table.");
            return null;
        }
        if (!EventScript.isEventScriptClass(klasse)) {
            Cebra.println("Error: Creating a new instance of " + s + " failed because it is of class " + klasse.getName() + " which is not a subclass of EventScript");
            return null;
        }
        try {
            ergeb = (EventScript)klasse.newInstance();
        }
        catch (Exception e) {
            Cebra.println("Error: Creating a new instance of " + s + " failed. Class: " + klasse + Cebra.LF + e);
            return null;
        }
        return ergeb;
    }

    public static final EventScript newEventScript(String s, String name) {
        EventScript ergeb = null;
        if (s == null) {
            return null;
        }
        Class klasse = Cebra.getClassByName(s);
        if (klasse == null) {
            Cebra.println("Error: Creating a new instance of " + s + " failed due to the fact that it was not found in the class table.");
            return null;
        }
        if (!EventScript.isEventScriptClass(klasse)) {
            Cebra.println("Error: Creating a new instance of " + s + " failed because it is of class " + klasse.getName() + " which is not a subclass of EventScript");
            return null;
        }
        try {
            ergeb = (EventScript)klasse.newInstance();
        }
        catch (Exception e) {
            Cebra.println("Error: Creating a new instance of " + s + " failed. Class: " + klasse + Cebra.LF + e);
            return null;
        }
        if (name != null) {
            ergeb.setName(name);
        }
        return ergeb;
    }

    synchronized void putObjectForEvent(int key, Object value) {
        if (value == null) {
            return;
        }
        this.objectForEvent.put(new Integer(key), value);
    }

    public synchronized void removeEvent(int event) {
        this.objectForEvent.remove(new Integer(event));
    }

    final void setCallingObject(Object h) {
        this.callingObject = h;
    }

    final void setEvent(int code) {
        this.eventQueue.putEvent(code);
        if (!this.activated) {
            this.activated = true;
            ScriptScheduler.executeEventScript(this);
        }
    }

    public final synchronized void setEventTable(Hashtable tab) {
        this.objectForEvent = tab;
    }
}

