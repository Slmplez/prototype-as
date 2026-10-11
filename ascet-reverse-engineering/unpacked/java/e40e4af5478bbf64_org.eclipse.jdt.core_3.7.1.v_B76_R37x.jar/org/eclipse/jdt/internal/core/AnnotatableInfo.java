/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.MemberElementInfo;

public class AnnotatableInfo
extends MemberElementInfo {
    protected IAnnotation[] annotations = Annotation.NO_ANNOTATIONS;
    protected int nameStart = -1;
    protected int nameEnd = -1;

    public int getNameSourceEnd() {
        return this.nameEnd;
    }

    public int getNameSourceStart() {
        return this.nameStart;
    }

    protected void setNameSourceEnd(int end) {
        this.nameEnd = end;
    }

    protected void setNameSourceStart(int start) {
        this.nameStart = start;
    }

    protected ISourceRange getNameRange() {
        return new SourceRange(this.nameStart, this.nameEnd - this.nameStart + 1);
    }
}

