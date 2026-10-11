/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.events;

import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.runtime.Assert;

public class ResourceChangeListenerList {
    private static final ListenerEntry[] EMPTY_ARRAY = new ListenerEntry[0];
    private int count1 = 0;
    private int count2 = 0;
    private int count4 = 0;
    private int count8 = 0;
    private int count16 = 0;
    private int count32 = 0;
    private volatile ListenerEntry[] listeners = EMPTY_ARRAY;

    public synchronized void add(IResourceChangeListener listener, int mask) {
        Assert.isNotNull((Object)listener);
        if (mask == 0) {
            this.remove(listener);
            return;
        }
        ListenerEntry entry = new ListenerEntry(listener, mask);
        int oldSize = this.listeners.length;
        int i = 0;
        while (i < oldSize) {
            if (this.listeners[i].listener == listener) {
                this.removing(this.listeners[i].eventMask);
                this.adding(mask);
                this.listeners[i] = entry;
                return;
            }
            ++i;
        }
        this.adding(mask);
        ListenerEntry[] newListeners = new ListenerEntry[oldSize + 1];
        System.arraycopy(this.listeners, 0, newListeners, 0, oldSize);
        newListeners[oldSize] = entry;
        this.listeners = newListeners;
    }

    private void adding(int mask) {
        if ((mask & 1) != 0) {
            ++this.count1;
        }
        if ((mask & 2) != 0) {
            ++this.count2;
        }
        if ((mask & 4) != 0) {
            ++this.count4;
        }
        if ((mask & 8) != 0) {
            ++this.count8;
        }
        if ((mask & 0x10) != 0) {
            ++this.count16;
        }
        if ((mask & 0x20) != 0) {
            ++this.count32;
        }
    }

    public ListenerEntry[] getListeners() {
        return this.listeners;
    }

    public boolean hasListenerFor(int event) {
        if (event == 1) {
            return this.count1 > 0;
        }
        if (event == 2) {
            return this.count2 > 0;
        }
        if (event == 4) {
            return this.count4 > 0;
        }
        if (event == 8) {
            return this.count8 > 0;
        }
        if (event == 16) {
            return this.count16 > 0;
        }
        if (event == 32) {
            return this.count32 > 0;
        }
        return false;
    }

    public synchronized void remove(IResourceChangeListener listener) {
        Assert.isNotNull((Object)listener);
        int oldSize = this.listeners.length;
        int i = 0;
        while (i < oldSize) {
            if (this.listeners[i].listener == listener) {
                this.removing(this.listeners[i].eventMask);
                if (oldSize == 1) {
                    this.listeners = EMPTY_ARRAY;
                } else {
                    ListenerEntry[] newListeners = new ListenerEntry[oldSize - 1];
                    System.arraycopy(this.listeners, 0, newListeners, 0, i);
                    System.arraycopy(this.listeners, i + 1, newListeners, i, oldSize - i - 1);
                    this.listeners = newListeners;
                }
                return;
            }
            ++i;
        }
    }

    private void removing(int mask) {
        if ((mask & 1) != 0) {
            --this.count1;
        }
        if ((mask & 2) != 0) {
            --this.count2;
        }
        if ((mask & 4) != 0) {
            --this.count4;
        }
        if ((mask & 8) != 0) {
            --this.count8;
        }
        if ((mask & 0x10) != 0) {
            --this.count16;
        }
        if ((mask & 0x20) != 0) {
            --this.count32;
        }
    }

    static class ListenerEntry {
        int eventMask;
        IResourceChangeListener listener;

        ListenerEntry(IResourceChangeListener listener, int eventMask) {
            this.listener = listener;
            this.eventMask = eventMask;
        }
    }
}

