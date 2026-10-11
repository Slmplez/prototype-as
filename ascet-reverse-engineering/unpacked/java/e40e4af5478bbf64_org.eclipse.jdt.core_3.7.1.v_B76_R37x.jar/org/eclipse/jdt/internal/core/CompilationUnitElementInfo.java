/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.internal.core.OpenableElementInfo;

public class CompilationUnitElementInfo
extends OpenableElementInfo {
    protected int sourceLength;
    protected long timestamp;
    public int annotationNumber = 0;

    public int getSourceLength() {
        return this.sourceLength;
    }

    protected ISourceRange getSourceRange() {
        return new SourceRange(0, this.sourceLength);
    }

    public void setSourceLength(int newSourceLength) {
        this.sourceLength = newSourceLength;
    }
}

