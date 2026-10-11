/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.text.revisions;

public final class LineIndexOutOfBoundsException
extends IndexOutOfBoundsException {
    private static final long serialVersionUID = 1L;

    public LineIndexOutOfBoundsException() {
    }

    public LineIndexOutOfBoundsException(String s) {
        super(s);
    }

    public LineIndexOutOfBoundsException(int index) {
        super("Line index out of range: " + index);
    }
}

