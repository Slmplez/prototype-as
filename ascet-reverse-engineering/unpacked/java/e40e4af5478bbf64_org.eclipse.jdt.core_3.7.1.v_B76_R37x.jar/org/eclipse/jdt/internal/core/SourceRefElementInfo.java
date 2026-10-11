/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.internal.core.JavaElementInfo;

class SourceRefElementInfo
extends JavaElementInfo {
    protected int sourceRangeStart;
    protected int sourceRangeEnd;

    SourceRefElementInfo() {
    }

    public int getDeclarationSourceEnd() {
        return this.sourceRangeEnd;
    }

    public int getDeclarationSourceStart() {
        return this.sourceRangeStart;
    }

    protected ISourceRange getSourceRange() {
        return new SourceRange(this.sourceRangeStart, this.sourceRangeEnd - this.sourceRangeStart + 1);
    }

    protected void setSourceRangeEnd(int end) {
        this.sourceRangeEnd = end;
    }

    protected void setSourceRangeStart(int start) {
        this.sourceRangeStart = start;
    }
}

