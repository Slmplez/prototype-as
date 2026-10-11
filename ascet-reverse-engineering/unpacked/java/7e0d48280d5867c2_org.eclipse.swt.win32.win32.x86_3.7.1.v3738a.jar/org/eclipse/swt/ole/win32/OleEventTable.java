/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.ole.win32;

import org.eclipse.swt.ole.win32.OleEvent;
import org.eclipse.swt.ole.win32.OleListener;

class OleEventTable {
    int[] types;
    OleListener[] handlers;

    OleEventTable() {
    }

    void hook(int eventType, OleListener handler) {
        if (this.types == null) {
            this.types = new int[4];
        }
        if (this.handlers == null) {
            this.handlers = new OleListener[4];
        }
        int i = 0;
        while (i < this.types.length) {
            if (this.types[i] == 0) {
                this.types[i] = eventType;
                this.handlers[i] = handler;
                return;
            }
            ++i;
        }
        int size = this.types.length;
        int[] newTypes = new int[size + 4];
        OleListener[] newHandlers = new OleListener[size + 4];
        System.arraycopy(this.types, 0, newTypes, 0, size);
        System.arraycopy(this.handlers, 0, newHandlers, 0, size);
        this.types = newTypes;
        this.handlers = newHandlers;
        this.types[size] = eventType;
        this.handlers[size] = handler;
    }

    boolean hooks(int eventType) {
        if (this.handlers == null) {
            return false;
        }
        int i = 0;
        while (i < this.types.length) {
            if (this.types[i] == eventType) {
                return true;
            }
            ++i;
        }
        return false;
    }

    void sendEvent(OleEvent event) {
        if (this.handlers == null) {
            return;
        }
        int i = 0;
        while (i < this.types.length) {
            OleListener listener;
            if (this.types[i] == event.type && (listener = this.handlers[i]) != null) {
                listener.handleEvent(event);
            }
            ++i;
        }
    }

    void unhook(int eventType, OleListener handler) {
        if (this.handlers == null) {
            return;
        }
        int i = 0;
        while (i < this.types.length) {
            if (this.types[i] == eventType && this.handlers[i] == handler) {
                this.types[i] = 0;
                this.handlers[i] = null;
                return;
            }
            ++i;
        }
    }

    boolean hasEntries() {
        int i = 0;
        while (i < this.types.length) {
            if (this.types[i] != 0) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

