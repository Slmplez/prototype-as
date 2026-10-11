/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import org.eclipse.jdt.internal.formatter.FormatJavadocNode;

public class FormatJavadocReference
extends FormatJavadocNode {
    public FormatJavadocReference(int start, int end, int line) {
        super(start, end, line);
    }

    public FormatJavadocReference(long position, int line) {
        super((int)(position >>> 32), (int)position, line);
    }

    void clean() {
    }

    protected void toString(StringBuffer buffer) {
        buffer.append("ref");
        super.toString(buffer);
    }
}

