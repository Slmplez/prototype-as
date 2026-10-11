/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

public class DirectMap {
    private final float growthFactor;
    private String[] keyArray;
    private String[][] valueArray;
    private int size;

    public DirectMap(int initialSize, float growthFactor) {
        if (initialSize < 1) {
            throw new IllegalArgumentException();
        }
        if (growthFactor <= 0.0f) {
            throw new IllegalArgumentException();
        }
        this.growthFactor = growthFactor;
        this.keyArray = new String[initialSize];
        this.valueArray = new String[initialSize][];
        this.size = 0;
    }

    public synchronized void put(String key, String[] value) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        int id = this.findKey(key);
        if (id != -1) {
            throw new IllegalArgumentException();
        }
        if (this.size >= this.keyArray.length) {
            int newSize = this.recalcSize(this.keyArray.length);
            if (newSize <= this.size) {
                newSize = this.size + 1;
            }
            String[] newKeyArray = new String[newSize];
            System.arraycopy(this.keyArray, 0, newKeyArray, 0, this.keyArray.length);
            this.keyArray = newKeyArray;
            String[][] newValueArray = new String[newSize][];
            System.arraycopy(this.valueArray, 0, newValueArray, 0, this.valueArray.length);
            this.valueArray = newValueArray;
        }
        this.keyArray[this.size] = key;
        this.valueArray[this.size] = value;
        ++this.size;
    }

    public synchronized boolean containsKey(String key) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        return this.findKey(key) != -1;
    }

    public synchronized String[] get(String key) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        int id = this.findKey(key);
        if (id == -1) {
            return null;
        }
        return this.valueArray[id];
    }

    String[] getKeys() {
        return this.keyArray;
    }

    String[][] getValues() {
        return this.valueArray;
    }

    int getSzie() {
        return this.size;
    }

    private int recalcSize(int currentSize) {
        return (int)((float)currentSize * (1.0f + this.growthFactor));
    }

    private int findKey(String key) {
        int i = 0;
        while (i < this.keyArray.length) {
            if (this.keyArray[i] != null && this.keyArray[i].equals(key)) {
                return i;
            }
            ++i;
        }
        return -1;
    }
}

