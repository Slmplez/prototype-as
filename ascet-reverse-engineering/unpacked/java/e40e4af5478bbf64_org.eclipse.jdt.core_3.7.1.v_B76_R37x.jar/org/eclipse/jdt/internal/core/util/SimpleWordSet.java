/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class SimpleWordSet {
    public char[][] words;
    public int elementSize = 0;
    public int threshold;

    public SimpleWordSet(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.5f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.words = new char[extraRoom][];
    }

    public char[] add(char[] word) {
        char[] current;
        int length = this.words.length;
        int index = CharOperation.hashCode(word) % length;
        while ((current = this.words[index]) != null) {
            if (CharOperation.equals(current, word)) {
                return current;
            }
            if (++index != length) continue;
            index = 0;
        }
        this.words[index] = word;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return word;
    }

    public boolean includes(char[] word) {
        char[] current;
        int length = this.words.length;
        int index = CharOperation.hashCode(word) % length;
        while ((current = this.words[index]) != null) {
            if (CharOperation.equals(current, word)) {
                return true;
            }
            if (++index != length) continue;
            index = 0;
        }
        return false;
    }

    private void rehash() {
        SimpleWordSet newSet = new SimpleWordSet(this.elementSize * 2);
        int i = this.words.length;
        while (--i >= 0) {
            char[] current = this.words[i];
            if (current == null) continue;
            newSet.add(current);
        }
        this.words = newSet.words;
        this.elementSize = newSet.elementSize;
        this.threshold = newSet.threshold;
    }
}

