/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.contentassist.ICompletionProposal
 *  org.eclipse.jface.text.contentassist.IContextInformation
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.internal.texteditor.spelling;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.internal.texteditor.spelling.SpellingMessages;

public final class NoCompletionsProposal
implements ICompletionProposal {
    public void apply(IDocument document) {
    }

    public String getAdditionalProposalInfo() {
        return null;
    }

    public IContextInformation getContextInformation() {
        return null;
    }

    public String getDisplayString() {
        return SpellingMessages.NoCompletionsProposal_displayString;
    }

    public Image getImage() {
        return null;
    }

    public Point getSelection(IDocument document) {
        return null;
    }
}

