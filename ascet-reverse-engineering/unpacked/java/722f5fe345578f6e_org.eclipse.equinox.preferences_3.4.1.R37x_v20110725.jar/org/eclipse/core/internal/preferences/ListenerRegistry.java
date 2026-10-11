/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.core.internal.preferences;

import org.eclipse.core.runtime.ListenerList;

public class ListenerRegistry {
    static final Object[] EMPTY_LIST = new Object[0];
    ListenerMap registry = new ListenerMap(25);

    public synchronized Object[] getListeners(String path) {
        ListenerList list = this.registry.get(path);
        return list == null ? EMPTY_LIST : list.getListeners();
    }

    public synchronized void add(String path, Object listener) {
        ListenerList list = this.registry.get(path);
        if (list == null) {
            list = new ListenerList(1);
        }
        list.add(listener);
        this.registry.put(path, list);
    }

    public synchronized void remove(String path, Object listener) {
        ListenerList list = this.registry.get(path);
        if (list == null) {
            return;
        }
        list.remove(listener);
        if (list.isEmpty()) {
            this.registry.remove(path);
        }
    }

    public synchronized void clear(String path) {
        this.registry.remove(path);
    }

    private static class ListenerMap {
        private static final int GROW_SIZE = 10;
        String[] keys;
        ListenerList[] values;

        ListenerMap(int size) {
            this.keys = new String[size];
            this.values = new ListenerList[size];
        }

        ListenerList get(String key) {
            if (key == null) {
                throw new NullPointerException();
            }
            int i = 0;
            while (i < this.keys.length) {
                if (key.equals(this.keys[i])) {
                    return this.values[i];
                }
                ++i;
            }
            return null;
        }

        void put(String key, ListenerList value) {
            if (key == null) {
                throw new NullPointerException();
            }
            if (value == null) {
                this.remove(key);
                return;
            }
            int emptyIndex = -1;
            int i = 0;
            while (i < this.keys.length) {
                String existing = this.keys[i];
                if (existing == null) {
                    emptyIndex = i;
                } else if (existing.equals(key)) {
                    this.values[i] = value;
                    return;
                }
                ++i;
            }
            if (emptyIndex == -1) {
                emptyIndex = this.grow();
            }
            this.keys[emptyIndex] = key;
            this.values[emptyIndex] = value;
        }

        private int grow() {
            int size = this.keys.length;
            String[] tempKeys = new String[size + 10];
            System.arraycopy(this.keys, 0, tempKeys, 0, size);
            this.keys = tempKeys;
            ListenerList[] tempValues = new ListenerList[size + 10];
            System.arraycopy(this.values, 0, tempValues, 0, size);
            this.values = tempValues;
            return size;
        }

        void remove(String key) {
            if (key == null) {
                throw new NullPointerException();
            }
            int i = 0;
            while (i < this.keys.length) {
                if (key.equals(this.keys[i])) {
                    this.keys[i] = null;
                    this.values[i] = null;
                    return;
                }
                ++i;
            }
        }
    }
}

