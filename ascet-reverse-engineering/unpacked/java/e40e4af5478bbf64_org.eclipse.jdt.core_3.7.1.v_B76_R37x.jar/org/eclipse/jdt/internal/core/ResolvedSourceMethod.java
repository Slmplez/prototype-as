/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SourceMethod;

public class ResolvedSourceMethod
extends SourceMethod {
    private String uniqueKey;

    public ResolvedSourceMethod(JavaElement parent, String name, String[] parameterTypes, String uniqueKey) {
        super(parent, name, parameterTypes);
        this.uniqueKey = uniqueKey;
    }

    public String getKey() {
        return this.uniqueKey;
    }

    public boolean isResolved() {
        return true;
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        super.toStringInfo(tab, buffer, info, showResolvedInfo);
        if (showResolvedInfo) {
            buffer.append(" {key=");
            buffer.append(this.getKey());
            buffer.append("}");
        }
    }

    public JavaElement unresolved() {
        SourceMethod handle = new SourceMethod(this.parent, this.name, this.parameterTypes);
        handle.occurrenceCount = this.occurrenceCount;
        return handle;
    }
}

