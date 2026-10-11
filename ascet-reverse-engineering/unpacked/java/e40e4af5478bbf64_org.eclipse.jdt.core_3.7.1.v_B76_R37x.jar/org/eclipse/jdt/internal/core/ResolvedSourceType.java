/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SourceType;

public class ResolvedSourceType
extends SourceType {
    private String uniqueKey;

    public ResolvedSourceType(JavaElement parent, String name, String uniqueKey) {
        super(parent, name);
        this.uniqueKey = uniqueKey;
    }

    public String getFullyQualifiedParameterizedName() throws JavaModelException {
        return this.getFullyQualifiedParameterizedName(this.getFullyQualifiedName('.'), this.uniqueKey);
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
        SourceType handle = new SourceType(this.parent, this.name);
        handle.occurrenceCount = this.occurrenceCount;
        return handle;
    }
}

