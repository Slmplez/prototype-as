/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

public class ListenerList {
    private static final Object[] EmptyArray = new Object[0];
    public static final int EQUALITY = 0;
    public static final int IDENTITY = 1;
    private final boolean identity;
    private volatile Object[] listeners = EmptyArray;

    public ListenerList() {
        this(0);
    }

    public ListenerList(int mode) {
        if (mode != 0 && mode != 1) {
            throw new IllegalArgumentException();
        }
        this.identity = mode == 1;
    }

    public synchronized void add(Object listener) {
        if (listener == null) {
            throw new IllegalArgumentException();
        }
        int oldSize = this.listeners.length;
        int i = 0;
        while (i < oldSize) {
            Object listener2 = this.listeners[i];
            if (this.identity ? listener == listener2 : listener.equals(listener2)) {
                return;
            }
            ++i;
        }
        Object[] newListeners = new Object[oldSize + 1];
        System.arraycopy(this.listeners, 0, newListeners, 0, oldSize);
        newListeners[oldSize] = listener;
        this.listeners = newListeners;
    }

    public Object[] getListeners() {
        return this.listeners;
    }

    public boolean isEmpty() {
        return this.listeners.length == 0;
    }

    public synchronized void remove(Object listener) {
        if (listener == null) {
            throw new IllegalArgumentException();
        }
        int oldSize = this.listeners.length;
        int i = 0;
        while (i < oldSize) {
            Object listener2 = this.listeners[i];
            if (this.identity ? listener == listener2 : listener.equals(listener2)) {
                if (oldSize == 1) {
                    this.listeners = EmptyArray;
                } else {
                    Object[] newListeners = new Object[oldSize - 1];
                    System.arraycopy(this.listeners, 0, newListeners, 0, i);
                    System.arraycopy(this.listeners, i + 1, newListeners, i, oldSize - i - 1);
                    this.listeners = newListeners;
                }
                return;
            }
            ++i;
        }
    }

    public int size() {
        return this.listeners.length;
    }

    public synchronized void clear() {
        this.listeners = EmptyArray;
    }
}

