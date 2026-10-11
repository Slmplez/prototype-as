/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.scripts;

public class ScriptEvent {
    private int eventCode;
    public static final ScriptEvent DEFAULT = new ScriptEvent(0);
    public static final ScriptEvent NAME_CHANGED = new ScriptEvent(1);
    public static final ScriptEvent STATE_CHANGED = new ScriptEvent(2);

    public ScriptEvent(int c) {
        this.eventCode = c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ScriptEvent) {
            return ((ScriptEvent)obj).eventCode == this.eventCode;
        }
        return false;
    }

    public int hashCode() {
        return this.eventCode;
    }
}

