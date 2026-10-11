/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControlCreator;

public interface ICompletionProposalExtension3 {
    public IInformationControlCreator getInformationControlCreator();

    public CharSequence getPrefixCompletionText(IDocument var1, int var2);

    public int getPrefixCompletionStart(IDocument var1, int var2);
}

