/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.compare.rangedifferencer;

public class RangeDifference {
    public static final int NOCHANGE = 0;
    public static final int CHANGE = 2;
    public static final int CONFLICT = 1;
    public static final int RIGHT = 2;
    public static final int LEFT = 3;
    public static final int ANCESTOR = 4;
    public static final int ERROR = 5;
    protected int kind;
    protected int leftStart;
    protected int leftLength;
    protected int rightStart;
    protected int rightLength;
    protected int ancestorStart;
    protected int ancestorLength;

    protected RangeDifference(int changeKind) {
        this.kind = changeKind;
    }

    protected RangeDifference(int kind, int rightStart, int rightLength, int leftStart, int leftLength) {
        this.kind = kind;
        this.rightStart = rightStart;
        this.rightLength = rightLength;
        this.leftStart = leftStart;
        this.leftLength = leftLength;
    }

    protected RangeDifference(int kind, int rightStart, int rightLength, int leftStart, int leftLength, int ancestorStart, int ancestorLength) {
        this(kind, rightStart, rightLength, leftStart, leftLength);
        this.ancestorStart = ancestorStart;
        this.ancestorLength = ancestorLength;
    }

    public int kind() {
        return this.kind;
    }

    public int ancestorStart() {
        return this.ancestorStart;
    }

    public int ancestorLength() {
        return this.ancestorLength;
    }

    public int ancestorEnd() {
        return this.ancestorStart + this.ancestorLength;
    }

    public int rightStart() {
        return this.rightStart;
    }

    public int rightLength() {
        return this.rightLength;
    }

    public int rightEnd() {
        return this.rightStart + this.rightLength;
    }

    public int leftStart() {
        return this.leftStart;
    }

    public int leftLength() {
        return this.leftLength;
    }

    public int leftEnd() {
        return this.leftStart + this.leftLength;
    }

    public int maxLength() {
        return Math.max(this.rightLength, Math.max(this.leftLength, this.ancestorLength));
    }

    public boolean equals(Object obj) {
        if (obj instanceof RangeDifference) {
            RangeDifference other = (RangeDifference)obj;
            return this.kind == other.kind && this.leftStart == other.leftStart && this.leftLength == other.leftLength && this.rightStart == other.rightStart && this.rightLength == other.rightLength && this.ancestorStart == other.ancestorStart && this.ancestorLength == other.ancestorLength;
        }
        return super.equals(obj);
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.kind;
        result = 31 * result + this.leftStart;
        result = 31 * result + this.leftLength;
        result = 31 * result + this.rightStart;
        result = 31 * result + this.rightLength;
        result = 31 * result + this.ancestorStart;
        result = 31 * result + this.ancestorLength;
        return result;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer("RangeDifference {");
        switch (this.kind) {
            case 0: {
                buf.append("NOCHANGE");
                break;
            }
            case 2: {
                buf.append("CHANGE/RIGHT");
                break;
            }
            case 1: {
                buf.append("CONFLICT");
                break;
            }
            case 3: {
                buf.append("LEFT");
                break;
            }
            case 5: {
                buf.append("ERROR");
                break;
            }
            case 4: {
                buf.append("ANCESTOR");
                break;
            }
        }
        buf.append(", ");
        buf.append("Left: " + this.toRangeString(this.leftStart, this.leftLength) + " Right: " + this.toRangeString(this.rightStart, this.rightLength));
        if (this.ancestorLength > 0 || this.ancestorStart > 0) {
            buf.append(" Ancestor: " + this.toRangeString(this.ancestorStart, this.ancestorLength));
        }
        buf.append("}");
        return buf.toString();
    }

    private String toRangeString(int start, int length) {
        return "(" + start + ", " + length + ")";
    }
}

