/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;

public abstract class FormatJavadocNode
implements JavadocTagConstants {
    static final int DEFAULT_ARRAY_SIZE = 10;
    static final int INCREMENT_ARRAY_SIZE = 10;
    protected int sourceStart;
    protected int sourceEnd;
    protected int lineStart;
    protected int linesBefore = 0;

    public FormatJavadocNode(int start, int end, int line) {
        this.sourceStart = start;
        this.sourceEnd = end;
        this.lineStart = line;
    }

    abstract void clean();

    FormatJavadocNode getLastNode() {
        return null;
    }

    public int getLength() {
        return this.sourceEnd - this.sourceStart + 1;
    }

    public boolean isText() {
        return false;
    }

    public boolean isImmutable() {
        return false;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        this.toString(buffer);
        return buffer.toString();
    }

    protected void toString(StringBuffer buffer) {
        buffer.append(": ");
        buffer.append(this.sourceStart);
        buffer.append(" -> ");
        buffer.append(this.sourceEnd);
    }

    public String toStringDebug(char[] source) {
        StringBuffer buffer = new StringBuffer();
        this.toStringDebug(buffer, source);
        return buffer.toString();
    }

    public void toStringDebug(StringBuffer buffer, char[] source) {
        buffer.append(source, this.sourceStart, this.sourceEnd - this.sourceStart + 1);
        buffer.append(' ');
    }

    void setHeaderLine(int javadocLineStart) {
    }
}

