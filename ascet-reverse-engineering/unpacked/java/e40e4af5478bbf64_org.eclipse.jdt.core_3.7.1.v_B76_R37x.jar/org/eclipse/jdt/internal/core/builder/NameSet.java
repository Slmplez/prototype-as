/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class NameSet {
    public char[][] names;
    public int elementSize = 0;
    public int threshold;

    public NameSet(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.5f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.names = new char[extraRoom][];
    }

    public char[] add(char[] name) {
        char[] current;
        int length = this.names.length;
        int index = CharOperation.hashCode(name) % length;
        while ((current = this.names[index]) != null) {
            if (CharOperation.equals(current, name)) {
                return current;
            }
            if (++index != length) continue;
            index = 0;
        }
        this.names[index] = name;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return name;
    }

    private void rehash() {
        NameSet newSet = new NameSet(this.elementSize * 2);
        int i = this.names.length;
        while (--i >= 0) {
            char[] current = this.names[i];
            if (current == null) continue;
            newSet.add(current);
        }
        this.names = newSet.names;
        this.elementSize = newSet.elementSize;
        this.threshold = newSet.threshold;
    }

    public String toString() {
        String s = "";
        int i = 0;
        int l = this.names.length;
        while (i < l) {
            char[] name = this.names[i];
            if (name != null) {
                s = String.valueOf(s) + new String(name) + "\n";
            }
            ++i;
        }
        return s;
    }
}

