/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.text.revisions;

import org.eclipse.jface.internal.text.revisions.LineIndexOutOfBoundsException;
import org.eclipse.jface.text.source.ILineRange;

public final class Range
implements ILineRange,
Cloneable {
    private int fStart;
    private int fLength;

    public static Range copy(ILineRange range) throws LineIndexOutOfBoundsException {
        return Range.createRelative(range.getStartLine(), range.getNumberOfLines());
    }

    public static Range copy(Range range) {
        return Range.createRelative(range.start(), range.length());
    }

    public static Range createRelative(int start, int length) throws LineIndexOutOfBoundsException {
        return new Range(start, length);
    }

    public static Range createAbsolute(int start, int end) {
        return new Range(start, end - start);
    }

    private Range(int start, int length) {
        this.moveTo(start);
        this.setLength(length);
    }

    public int getStartLine() {
        return this.start();
    }

    public int getNumberOfLines() {
        return this.length();
    }

    public int start() {
        return this.fStart;
    }

    public int length() {
        return this.fLength;
    }

    public int end() {
        return this.start() + this.length();
    }

    public void moveTo(int start) throws LineIndexOutOfBoundsException {
        if (start < 0) {
            throw new LineIndexOutOfBoundsException("Cannot set a negative start: " + start);
        }
        this.fStart = start;
    }

    public void moveEndTo(int end) throws LineIndexOutOfBoundsException {
        this.moveTo(end - this.length());
    }

    public void moveBy(int delta) throws LineIndexOutOfBoundsException {
        this.moveTo(this.start() + delta);
    }

    public void setStart(int start) throws LineIndexOutOfBoundsException {
        int end = this.end();
        if (start < 0 || start >= end) {
            throw new LineIndexOutOfBoundsException("Cannot set a negative start: " + start);
        }
        this.moveTo(start);
        this.setEnd(end);
    }

    public void setEnd(int end) throws LineIndexOutOfBoundsException {
        this.setLength(end - this.start());
    }

    public void setLength(int length) throws LineIndexOutOfBoundsException {
        if (length <= 0) {
            throw new LineIndexOutOfBoundsException("Cannot set length <= 0: " + length);
        }
        this.fLength = length;
    }

    public void setLengthAndMove(int length) throws LineIndexOutOfBoundsException {
        this.setStart(this.end() - length);
    }

    public void resizeBy(int delta) throws LineIndexOutOfBoundsException {
        this.setLength(this.length() + delta);
    }

    public void resizeAndMoveBy(int delta) throws LineIndexOutOfBoundsException {
        this.setStart(this.start() + delta);
    }

    public Range split(int remaining) throws LineIndexOutOfBoundsException {
        if (remaining >= this.length()) {
            throw new LineIndexOutOfBoundsException("Remaining must be less than length: " + this.length());
        }
        int splitLength = this.length() - remaining;
        this.setLength(remaining);
        return new Range(this.end(), splitLength);
    }

    public boolean equalRange(ILineRange range) {
        if (range == this) {
            return true;
        }
        if (range == null) {
            return false;
        }
        return range.getStartLine() == this.start() && range.getNumberOfLines() == this.length();
    }

    public Object clone() {
        return Range.copy(this);
    }
}

