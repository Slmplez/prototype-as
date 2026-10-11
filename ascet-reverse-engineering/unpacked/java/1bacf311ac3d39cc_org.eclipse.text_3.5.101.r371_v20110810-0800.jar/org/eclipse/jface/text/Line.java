/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IRegion;

final class Line
implements IRegion {
    public int offset;
    public int length;
    public final String delimiter;

    public Line(int offset, int end, String delimiter) {
        this.offset = offset;
        this.length = end - offset + 1;
        this.delimiter = delimiter;
    }

    public Line(int offset, int length) {
        this.offset = offset;
        this.length = length;
        this.delimiter = null;
    }

    public int getOffset() {
        return this.offset;
    }

    public int getLength() {
        return this.length;
    }
}

