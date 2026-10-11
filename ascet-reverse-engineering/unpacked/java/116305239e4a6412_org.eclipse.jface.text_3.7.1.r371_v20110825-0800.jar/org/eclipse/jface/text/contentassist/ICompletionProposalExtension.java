/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.IDocument;

public interface ICompletionProposalExtension {
    public void apply(IDocument var1, char var2, int var3);

    public boolean isValidFor(IDocument var1, int var2);

    public char[] getTriggerCharacters();

    public int getContextInformationPosition();
}

