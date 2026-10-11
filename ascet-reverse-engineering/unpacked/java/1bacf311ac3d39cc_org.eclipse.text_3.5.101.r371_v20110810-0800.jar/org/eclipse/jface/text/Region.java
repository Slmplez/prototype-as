/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IRegion;

public class Region
implements IRegion {
    private int fOffset;
    private int fLength;

    public Region(int offset, int length) {
        this.fOffset = offset;
        this.fLength = length;
    }

    public int getLength() {
        return this.fLength;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public boolean equals(Object o) {
        if (o instanceof IRegion) {
            IRegion r = (IRegion)o;
            return r.getOffset() == this.fOffset && r.getLength() == this.fLength;
        }
        return false;
    }

    public int hashCode() {
        return this.fOffset << 24 | this.fLength << 16;
    }

    public String toString() {
        return "offset: " + this.fOffset + ", length: " + this.fLength;
    }
}

