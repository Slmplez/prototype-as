/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IUndoManager;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;

public interface ITextViewerExtension6 {
    public void setHyperlinkDetectors(IHyperlinkDetector[] var1, int var2);

    public IUndoManager getUndoManager();
}

