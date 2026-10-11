/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;

public class Position {
    public int offset;
    public int length;
    public boolean isDeleted;

    public Position(int offset) {
        this(offset, 0);
    }

    public Position(int offset, int length) {
        Assert.isTrue((offset >= 0 ? 1 : 0) != 0);
        Assert.isTrue((length >= 0 ? 1 : 0) != 0);
        this.offset = offset;
        this.length = length;
    }

    protected Position() {
    }

    public int hashCode() {
        int deleted = this.isDeleted ? 0 : 1;
        return this.offset << 24 | this.length << 16 | deleted;
    }

    public void delete() {
        this.isDeleted = true;
    }

    public void undelete() {
        this.isDeleted = false;
    }

    public boolean equals(Object other) {
        if (other instanceof Position) {
            Position rp = (Position)other;
            return rp.offset == this.offset && rp.length == this.length;
        }
        return super.equals(other);
    }

    public int getLength() {
        return this.length;
    }

    public int getOffset() {
        return this.offset;
    }

    public boolean includes(int index) {
        if (this.isDeleted) {
            return false;
        }
        return this.offset <= index && index < this.offset + this.length;
    }

    public boolean overlapsWith(int rangeOffset, int rangeLength) {
        if (this.isDeleted) {
            return false;
        }
        int end = rangeOffset + rangeLength;
        int thisEnd = this.offset + this.length;
        if (rangeLength > 0) {
            if (this.length > 0) {
                return this.offset < end && rangeOffset < thisEnd;
            }
            return rangeOffset <= this.offset && this.offset < end;
        }
        if (this.length > 0) {
            return this.offset <= rangeOffset && rangeOffset < thisEnd;
        }
        return this.offset == rangeOffset;
    }

    public boolean isDeleted() {
        return this.isDeleted;
    }

    public void setLength(int length) {
        Assert.isTrue((length >= 0 ? 1 : 0) != 0);
        this.length = length;
    }

    public void setOffset(int offset) {
        Assert.isTrue((offset >= 0 ? 1 : 0) != 0);
        this.offset = offset;
    }

    public String toString() {
        String position = "offset: " + this.offset + ", length: " + this.length;
        return this.isDeleted ? String.valueOf(position) + " (deleted)" : position;
    }
}

