/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IDocument;

public interface ITextInputListener {
    public void inputDocumentAboutToBeChanged(IDocument var1, IDocument var2);

    public void inputDocumentChanged(IDocument var1, IDocument var2);
}

