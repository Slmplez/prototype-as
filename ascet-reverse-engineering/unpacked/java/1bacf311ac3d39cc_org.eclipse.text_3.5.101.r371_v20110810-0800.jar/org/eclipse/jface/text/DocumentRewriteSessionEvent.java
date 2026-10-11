/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.IDocument;

public class DocumentRewriteSessionEvent {
    public static final Object SESSION_START = new Object();
    public static final Object SESSION_STOP = new Object();
    public IDocument fDocument;
    public DocumentRewriteSession fSession;
    public Object fChangeType;

    public DocumentRewriteSessionEvent(IDocument doc, DocumentRewriteSession session, Object changeType) {
        Assert.isNotNull((Object)doc);
        Assert.isNotNull((Object)session);
        this.fDocument = doc;
        this.fSession = session;
        this.fChangeType = changeType;
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public Object getChangeType() {
        return this.fChangeType;
    }

    public DocumentRewriteSession getSession() {
        return this.fSession;
    }
}

