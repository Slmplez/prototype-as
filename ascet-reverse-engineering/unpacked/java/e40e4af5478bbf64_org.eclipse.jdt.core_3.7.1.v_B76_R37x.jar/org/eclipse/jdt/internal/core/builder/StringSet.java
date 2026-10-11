/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

public class StringSet {
    public String[] values;
    public int elementSize = 0;
    public int threshold;

    public StringSet(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.5f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.values = new String[extraRoom];
    }

    public boolean add(String value) {
        String current;
        int length = this.values.length;
        int index = (value.hashCode() & Integer.MAX_VALUE) % length;
        while ((current = this.values[index]) != null) {
            if (value.equals(current)) {
                return false;
            }
            if (++index != length) continue;
            index = 0;
        }
        this.values[index] = value;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return true;
    }

    public void clear() {
        int i = this.values.length;
        while (--i >= 0) {
            this.values[i] = null;
        }
        this.elementSize = 0;
    }

    public boolean includes(String value) {
        String current;
        int length = this.values.length;
        int index = (value.hashCode() & Integer.MAX_VALUE) % length;
        while ((current = this.values[index]) != null) {
            if (value.equals(current)) {
                return true;
            }
            if (++index != length) continue;
            index = 0;
        }
        return false;
    }

    private void rehash() {
        StringSet newSet = new StringSet(this.elementSize * 2);
        int i = this.values.length;
        while (--i >= 0) {
            String current = this.values[i];
            if (current == null) continue;
            newSet.add(current);
        }
        this.values = newSet.values;
        this.elementSize = newSet.elementSize;
        this.threshold = newSet.threshold;
    }

    public String toString() {
        String s = "";
        int i = 0;
        int l = this.values.length;
        while (i < l) {
            String value = this.values[i];
            if (value != null) {
                s = String.valueOf(s) + value + "\n";
            }
            ++i;
        }
        return s;
    }
}

