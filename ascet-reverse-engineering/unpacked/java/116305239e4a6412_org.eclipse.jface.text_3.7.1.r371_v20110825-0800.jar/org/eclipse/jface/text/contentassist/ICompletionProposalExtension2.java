/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextViewer;

public interface ICompletionProposalExtension2 {
    public void apply(ITextViewer var1, char var2, int var3, int var4);

    public void selected(ITextViewer var1, boolean var2);

    public void unselected(ITextViewer var1);

    public boolean validate(IDocument var1, int var2, DocumentEvent var3);
}

