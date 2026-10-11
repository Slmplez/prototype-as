/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter.align;

public class AlignmentException
extends RuntimeException {
    public static final int LINE_TOO_LONG = 1;
    public static final int ALIGN_TOO_SMALL = 2;
    private static final long serialVersionUID = -3324134986466253314L;
    int reason;
    int value;
    public int relativeDepth;

    public AlignmentException(int reason, int relativeDepth) {
        this(reason, 0, relativeDepth);
    }

    public AlignmentException(int reason, int value, int relativeDepth) {
        this.reason = reason;
        this.value = value;
        this.relativeDepth = relativeDepth;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(10);
        switch (this.reason) {
            case 1: {
                buffer.append("LINE_TOO_LONG");
                break;
            }
            case 2: {
                buffer.append("ALIGN_TOO_SMALL");
            }
        }
        buffer.append("<relativeDepth: ").append(this.relativeDepth).append(">\n");
        return buffer.toString();
    }
}

