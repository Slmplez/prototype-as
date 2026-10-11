/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.Position
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text.templates;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension2;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;

final class PositionBasedCompletionProposal
implements ICompletionProposal,
ICompletionProposalExtension2 {
    private String fDisplayString;
    private String fReplacementString;
    private Position fReplacementPosition;
    private int fCursorPosition;
    private Image fImage;
    private IContextInformation fContextInformation;
    private String fAdditionalProposalInfo;

    public PositionBasedCompletionProposal(String replacementString, Position replacementPosition, int cursorPosition) {
        this(replacementString, replacementPosition, cursorPosition, null, null, null, null);
    }

    public PositionBasedCompletionProposal(String replacementString, Position replacementPosition, int cursorPosition, Image image, String displayString, IContextInformation contextInformation, String additionalProposalInfo) {
        Assert.isNotNull((Object)replacementString);
        Assert.isTrue((replacementPosition != null ? 1 : 0) != 0);
        this.fReplacementString = replacementString;
        this.fReplacementPosition = replacementPosition;
        this.fCursorPosition = cursorPosition;
        this.fImage = image;
        this.fDisplayString = displayString;
        this.fContextInformation = contextInformation;
        this.fAdditionalProposalInfo = additionalProposalInfo;
    }

    public void apply(IDocument document) {
        try {
            document.replace(this.fReplacementPosition.getOffset(), this.fReplacementPosition.getLength(), this.fReplacementString);
        }
        catch (BadLocationException badLocationException) {}
    }

    public Point getSelection(IDocument document) {
        return new Point(this.fReplacementPosition.getOffset() + this.fCursorPosition, 0);
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

    public void apply(ITextViewer viewer, char trigger, int stateMask, int offset) {
        this.apply(viewer.getDocument());
    }

    public void selected(ITextViewer viewer, boolean smartToggle) {
    }

    public void unselected(ITextViewer viewer) {
    }

    public boolean validate(IDocument document, int offset, DocumentEvent event) {
        try {
            String content = document.get(this.fReplacementPosition.getOffset(), offset - this.fReplacementPosition.getOffset());
            if (this.fReplacementString.startsWith(content)) {
                return true;
            }
        }
        catch (BadLocationException badLocationException) {}
        return false;
    }
}

