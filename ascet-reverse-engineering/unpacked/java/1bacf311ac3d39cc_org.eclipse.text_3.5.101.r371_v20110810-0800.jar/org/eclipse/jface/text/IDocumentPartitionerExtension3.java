/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.IDocument;

public interface IDocumentPartitionerExtension3 {
    public void startRewriteSession(DocumentRewriteSession var1) throws IllegalStateException;

    public void stopRewriteSession(DocumentRewriteSession var1);

    public DocumentRewriteSession getActiveRewriteSession();

    public void connect(IDocument var1, boolean var2);
}

