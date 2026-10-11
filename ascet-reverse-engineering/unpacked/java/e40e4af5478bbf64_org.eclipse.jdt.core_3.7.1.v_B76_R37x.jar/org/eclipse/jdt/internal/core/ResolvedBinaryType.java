/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.JavaElement;

public class ResolvedBinaryType
extends BinaryType {
    private String uniqueKey;

    public ResolvedBinaryType(JavaElement parent, String name, String uniqueKey) {
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
            buffer.append(this.uniqueKey);
            buffer.append("}");
        }
    }

    public JavaElement unresolved() {
        BinaryType handle = new BinaryType(this.parent, this.name);
        handle.occurrenceCount = this.occurrenceCount;
        return handle;
    }
}

