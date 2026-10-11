/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;

public final class CompletionProposal
implements ICompletionProposal {
    private String fDisplayString;
    private String fReplacementString;
    private int fReplacementOffset;
    private int fReplacementLength;
    private int fCursorPosition;
    private Image fImage;
    private IContextInformation fContextInformation;
    private String fAdditionalProposalInfo;

    public CompletionProposal(String replacementString, int replacementOffset, int replacementLength, int cursorPosition) {
        this(replacementString, replacementOffset, replacementLength, cursorPosition, null, null, null, null);
    }

    public CompletionProposal(String replacementString, int replacementOffset, int replacementLength, int cursorPosition, Image image, String displayString, IContextInformation contextInformation, String additionalProposalInfo) {
        Assert.isNotNull((Object)replacementString);
        Assert.isTrue((replacementOffset >= 0 ? 1 : 0) != 0);
        Assert.isTrue((replacementLength >= 0 ? 1 : 0) != 0);
        Assert.isTrue((cursorPosition >= 0 ? 1 : 0) != 0);
        this.fReplacementString = replacementString;
        this.fReplacementOffset = replacementOffset;
        this.fReplacementLength = replacementLength;
        this.fCursorPosition = cursorPosition;
        this.fImage = image;
        this.fDisplayString = displayString;
        this.fContextInformation = contextInformation;
        this.fAdditionalProposalInfo = additionalProposalInfo;
    }

    public void apply(IDocument document) {
        try {
            document.replace(this.fReplacementOffset, this.fReplacementLength, this.fReplacementString);
        }
        catch (BadLocationException badLocationException) {}
    }

    public Point getSelection(IDocument document) {
        return new Point(this.fReplacementOffset + this.fCursorPosition, 0);
    }

    public IContextInformation getContextInformation() {
        return this.fContextInformation;
    }

    public Image getImage() {
        return this.fImage;
    }

    public String getDisplayString() {
        if (this.fDisplayString != null) {
            return this.fDisplayString;
        }
        return this.fReplacementString;
    }

    public String getAdditionalProposalInfo() {
        return this.fAdditionalProposalInfo;
    }
}

