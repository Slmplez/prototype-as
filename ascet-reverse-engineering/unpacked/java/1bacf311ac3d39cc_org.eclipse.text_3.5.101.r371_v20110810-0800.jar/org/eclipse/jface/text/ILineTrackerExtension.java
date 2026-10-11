/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.DocumentRewriteSession;

public interface ILineTrackerExtension {
    public void startRewriteSession(DocumentRewriteSession var1) throws IllegalStateException;

    public void stopRewriteSession(DocumentRewriteSession var1, String var2);
}

