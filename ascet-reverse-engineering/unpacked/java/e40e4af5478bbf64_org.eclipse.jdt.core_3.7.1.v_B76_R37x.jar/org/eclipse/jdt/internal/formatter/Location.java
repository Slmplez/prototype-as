/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import org.eclipse.jdt.internal.formatter.OptimizedReplaceEdit;
import org.eclipse.jdt.internal.formatter.Scribe;

public class Location {
    public int inputOffset;
    public int inputColumn;
    public int outputLine;
    public int outputColumn;
    public int outputIndentationLevel;
    public boolean needSpace;
    public boolean pendingSpace;
    public int nlsTagCounter;
    public int lastLocalDeclarationSourceStart;
    public int numberOfIndentations;
    public int lastNumberOfNewLines;
    int editsIndex;
    OptimizedReplaceEdit textEdit;

    public Location(Scribe scribe, int sourceRestart) {
        this.update(scribe, sourceRestart);
    }

    public void update(Scribe scribe, int sourceRestart) {
        this.outputColumn = scribe.column;
        this.outputLine = scribe.line;
        this.inputOffset = sourceRestart;
        this.inputColumn = scribe.getCurrentIndentation(sourceRestart) + 1;
        this.outputIndentationLevel = scribe.indentationLevel;
        this.lastNumberOfNewLines = scribe.lastNumberOfNewLines;
        this.needSpace = scribe.needSpace;
        this.pendingSpace = scribe.pendingSpace;
        this.editsIndex = scribe.editsIndex;
        this.nlsTagCounter = scribe.nlsTagCounter;
        this.numberOfIndentations = scribe.numberOfIndentations;
        this.textEdit = scribe.getLastEdit();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("output (column=" + this.outputColumn);
        buffer.append(", line=" + this.outputLine);
        buffer.append(", indentation level=" + this.outputIndentationLevel);
        buffer.append(") input (offset=" + this.inputOffset);
        buffer.append(", column=" + this.inputColumn);
        buffer.append(')');
        return buffer.toString();
    }
}

