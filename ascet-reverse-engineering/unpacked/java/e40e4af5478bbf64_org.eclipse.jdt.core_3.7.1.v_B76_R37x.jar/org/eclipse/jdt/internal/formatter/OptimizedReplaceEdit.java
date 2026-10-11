/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

public class OptimizedReplaceEdit {
    int offset;
    int length;
    String replacement;

    public OptimizedReplaceEdit(int offset, int length, String replacement) {
        this.offset = offset;
        this.length = length;
        this.replacement = replacement;
    }

    public String toString() {
        return String.valueOf(this.offset < 0 ? "(" : "X(") + this.offset + ", length " + this.length + " :>" + this.replacement + "<";
    }
}

