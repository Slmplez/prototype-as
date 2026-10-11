/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.jdt.core.compiler.CharOperation;

public class QualifiedNameSet {
    public char[][][] qualifiedNames;
    public int elementSize = 0;
    public int threshold;

    public QualifiedNameSet(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.5f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.qualifiedNames = new char[extraRoom][][];
    }

    public char[][] add(char[][] qualifiedName) {
        char[][] current;
        int qLength = qualifiedName.length;
        if (qLength == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int length = this.qualifiedNames.length;
        int index = CharOperation.hashCode(qualifiedName[qLength - 1]) % length;
        while ((current = this.qualifiedNames[index]) != null) {
            if (CharOperation.equals(current, qualifiedName)) {
                return current;
            }
            if (++index != length) continue;
            index = 0;
        }
        this.qualifiedNames[index] = qualifiedName;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return qualifiedName;
    }

    private void rehash() {
        QualifiedNameSet newSet = new QualifiedNameSet(this.elementSize * 2);
        int i = this.qualifiedNames.length;
        while (--i >= 0) {
            char[][] current = this.qualifiedNames[i];
            if (current == null) continue;
            newSet.add(current);
        }
        this.qualifiedNames = newSet.qualifiedNames;
        this.elementSize = newSet.elementSize;
        this.threshold = newSet.threshold;
    }

    public String toString() {
        String s = "";
        int i = 0;
        int l = this.qualifiedNames.length;
        while (i < l) {
            char[][] qualifiedName = this.qualifiedNames[i];
            if (qualifiedName != null) {
                s = String.valueOf(s) + CharOperation.toString(qualifiedName) + "\n";
            }
            ++i;
        }
        return s;
    }
}

