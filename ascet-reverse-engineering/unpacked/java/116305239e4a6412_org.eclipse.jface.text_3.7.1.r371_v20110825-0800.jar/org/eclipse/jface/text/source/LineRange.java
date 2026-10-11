/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.ILineRange;

public final class LineRange
implements ILineRange {
    private int fStartLine;
    private int fNumberOfLines;

    public LineRange(int startLine, int numberOfLines) {
        this.fStartLine = startLine;
        this.fNumberOfLines = numberOfLines;
    }

    public int getStartLine() {
        return this.fStartLine;
    }

    public int getNumberOfLines() {
        return this.fNumberOfLines;
    }
}

