/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.IDocumentRewriteSessionListener;

public interface IDocumentExtension4 {
    public static final long UNKNOWN_MODIFICATION_STAMP = -1L;

    public DocumentRewriteSession startRewriteSession(DocumentRewriteSessionType var1) throws IllegalStateException;

    public void stopRewriteSession(DocumentRewriteSession var1);

    public DocumentRewriteSession getActiveRewriteSession();

    public void addDocumentRewriteSessionListener(IDocumentRewriteSessionListener var1);

    public void removeDocumentRewriteSessionListener(IDocumentRewriteSessionListener var1);

    public void replace(int var1, int var2, String var3, long var4) throws BadLocationException;

    public void set(String var1, long var2);

    public long getModificationStamp();

    public String getDefaultLineDelimiter();

    public void setInitialLineDelimiter(String var1);
}

