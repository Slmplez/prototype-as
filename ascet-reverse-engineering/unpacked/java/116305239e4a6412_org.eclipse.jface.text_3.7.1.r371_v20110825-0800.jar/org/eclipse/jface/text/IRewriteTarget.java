/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IDocument;

public interface IRewriteTarget {
    public IDocument getDocument();

    public void setRedraw(boolean var1);

    public void beginCompoundChange();

    public void endCompoundChange();
}

