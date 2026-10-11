/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.DocumentRewriteSessionType;

public class DocumentRewriteSession {
    private DocumentRewriteSessionType fSessionType;

    protected DocumentRewriteSession(DocumentRewriteSessionType sessionType) {
        this.fSessionType = sessionType;
    }

    public DocumentRewriteSessionType getSessionType() {
        return this.fSessionType;
    }

    public String toString() {
        return "" + this.hashCode();
    }
}

