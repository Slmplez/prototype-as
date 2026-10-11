/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SourceField;

public class ResolvedSourceField
extends SourceField {
    private String uniqueKey;

    public ResolvedSourceField(JavaElement parent, String name, String uniqueKey) {
        super(parent, name);
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
        SourceField handle = new SourceField(this.parent, this.name);
        handle.occurrenceCount = this.occurrenceCount;
        return handle;
    }
}

