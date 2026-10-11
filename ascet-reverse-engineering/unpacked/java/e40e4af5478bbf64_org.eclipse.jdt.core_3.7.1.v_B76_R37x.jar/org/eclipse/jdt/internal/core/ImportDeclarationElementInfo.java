/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.internal.compiler.env.ISourceImport;
import org.eclipse.jdt.internal.core.MemberElementInfo;

public class ImportDeclarationElementInfo
extends MemberElementInfo
implements ISourceImport {
    protected int nameStart = -1;
    protected int nameEnd = -1;

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

