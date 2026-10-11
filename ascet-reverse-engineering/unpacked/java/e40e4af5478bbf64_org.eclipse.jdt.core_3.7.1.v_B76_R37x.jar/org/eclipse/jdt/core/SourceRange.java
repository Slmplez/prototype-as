/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.ISourceRange;

public final class SourceRange
implements ISourceRange {
    private int offset;
    private int length;

    public static boolean isAvailable(ISourceRange range) {
        return range != null && range.getOffset() != -1;
    }

    public SourceRange(int offset, int length) {
        this.offset = offset;
        this.length = length;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ISourceRange)) {
            return false;
        }
        ISourceRange sourceRange = (ISourceRange)obj;
        return sourceRange.getOffset() == this.offset && sourceRange.getLength() == this.length;
    }

    public int getLength() {
        return this.length;
    }

    public int getOffset() {
        return this.offset;
    }

    public int hashCode() {
        return this.length ^ this.offset;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("[offset=");
        buffer.append(this.offset);
        buffer.append(", length=");
        buffer.append(this.length);
        buffer.append("]");
        return buffer.toString();
    }
}

