/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;

public interface IDocumentExtension {
    public void registerPostNotificationReplace(IDocumentListener var1, IReplace var2) throws UnsupportedOperationException;

    public void stopPostNotificationProcessing();

    public void resumePostNotificationProcessing();

    public void startSequentialRewrite(boolean var1);

    public void stopSequentialRewrite();

    public static interface IReplace {
        public void perform(IDocument var1, IDocumentListener var2);
    }
}

