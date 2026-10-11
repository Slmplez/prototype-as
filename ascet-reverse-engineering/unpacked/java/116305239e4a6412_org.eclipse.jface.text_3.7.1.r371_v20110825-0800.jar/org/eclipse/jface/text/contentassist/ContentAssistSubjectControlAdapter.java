/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.contentassist.ISubjectControlContextInformationPresenter;
import org.eclipse.jface.contentassist.ISubjectControlContextInformationValidator;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IEventConsumer;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.contentassist.AdditionalInfoController;
import org.eclipse.jface.text.contentassist.CompletionProposalPopup;
import org.eclipse.jface.text.contentassist.ContentAssistant;
import org.eclipse.jface.text.contentassist.ContextInformationPopup;
import org.eclipse.jface.text.contentassist.Helper;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationPresenter;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Widget;

final class ContentAssistSubjectControlAdapter
implements IContentAssistSubjectControl {
    private ITextViewer fViewer;
    private IContentAssistSubjectControl fContentAssistSubjectControl;

    ContentAssistSubjectControlAdapter(IContentAssistSubjectControl contentAssistSubjectControl) {
        Assert.isNotNull((Object)contentAssistSubjectControl);
        this.fContentAssistSubjectControl = contentAssistSubjectControl;
    }

    public ContentAssistSubjectControlAdapter(ITextViewer viewer) {
        Assert.isNotNull((Object)viewer);
        this.fViewer = viewer;
    }

    public int getLineHeight() {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.getLineHeight();
        }
        return this.fViewer.getTextWidget().getLineHeight(this.getCaretOffset());
    }

    public Control getControl() {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.getControl();
        }
        return this.fViewer.getTextWidget();
    }

    public Point getLocationAtOffset(int offset) {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.getLocationAtOffset(offset);
        }
        return this.fViewer.getTextWidget().getLocationAtOffset(offset);
    }

    public Point getWidgetSelectionRange() {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.getWidgetSelectionRange();
        }
        return this.fViewer.getTextWidget().getSelectionRange();
    }

    public Point getSelectedRange() {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.getSelectedRange();
        }
        return this.fViewer.getSelectedRange();
    }

    public int getCaretOffset() {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.getCaretOffset();
        }
        return this.fViewer.getTextWidget().getCaretOffset();
    }

    public String getLineDelimiter() {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.getLineDelimiter();
        }
        return this.fViewer.getTextWidget().getLineDelimiter();
    }

    public void addKeyListener(KeyListener keyListener) {
        if (this.fContentAssistSubjectControl != null) {
            this.fContentAssistSubjectControl.addKeyListener(keyListener);
        } else {
            this.fViewer.getTextWidget().addKeyListener(keyListener);
        }
    }

    public void removeKeyListener(KeyListener keyListener) {
        if (this.fContentAssistSubjectControl != null) {
            this.fContentAssistSubjectControl.removeKeyListener(keyListener);
        } else {
            this.fViewer.getTextWidget().removeKeyListener(keyListener);
        }
    }

    public IDocument getDocument() {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.getDocument();
        }
        return this.fViewer.getDocument();
    }

    public boolean prependVerifyKeyListener(VerifyKeyListener verifyKeyListener) {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.prependVerifyKeyListener(verifyKeyListener);
        }
        if (this.fViewer instanceof ITextViewerExtension) {
            ITextViewerExtension e = (ITextViewerExtension)((Object)this.fViewer);
            e.prependVerifyKeyListener(verifyKeyListener);
            return true;
        }
        StyledText textWidget = this.fViewer.getTextWidget();
        if (Helper.okToUse((Widget)textWidget)) {
            textWidget.addVerifyKeyListener(verifyKeyListener);
            return true;
        }
        return false;
    }

    public boolean appendVerifyKeyListener(VerifyKeyListener verifyKeyListener) {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.appendVerifyKeyListener(verifyKeyListener);
        }
        if (this.fViewer instanceof ITextViewerExtension) {
            ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fViewer);
            extension.appendVerifyKeyListener(verifyKeyListener);
            return true;
        }
        StyledText textWidget = this.fViewer.getTextWidget();
        if (Helper.okToUse((Widget)textWidget)) {
            textWidget.addVerifyKeyListener(verifyKeyListener);
            return true;
        }
        return false;
    }

    public void removeVerifyKeyListener(VerifyKeyListener verifyKeyListener) {
        if (this.fContentAssistSubjectControl != null) {
            this.fContentAssistSubjectControl.removeVerifyKeyListener(verifyKeyListener);
        } else if (this.fViewer instanceof ITextViewerExtension) {
            ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fViewer);
            extension.removeVerifyKeyListener(verifyKeyListener);
        } else {
            StyledText textWidget = this.fViewer.getTextWidget();
            if (Helper.okToUse((Widget)textWidget)) {
                textWidget.removeVerifyKeyListener(verifyKeyListener);
            }
        }
    }

    public void setEventConsumer(IEventConsumer eventConsumer) {
        if (this.fContentAssistSubjectControl != null) {
            this.fContentAssistSubjectControl.setEventConsumer(eventConsumer);
        } else {
            this.fViewer.setEventConsumer(eventConsumer);
        }
    }

    public void setSelectedRange(int i, int j) {
        if (this.fContentAssistSubjectControl != null) {
            this.fContentAssistSubjectControl.setSelectedRange(i, j);
        } else {
            this.fViewer.setSelectedRange(i, j);
        }
    }

    public void revealRange(int i, int j) {
        if (this.fContentAssistSubjectControl != null) {
            this.fContentAssistSubjectControl.revealRange(i, j);
        } else {
            this.fViewer.revealRange(i, j);
        }
    }

    public boolean supportsVerifyKeyListener() {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.supportsVerifyKeyListener();
        }
        return true;
    }

    public char[] getCompletionProposalAutoActivationCharacters(ContentAssistant contentAssistant, int offset) {
        if (this.fContentAssistSubjectControl != null) {
            return contentAssistant.getCompletionProposalAutoActivationCharacters(this.fContentAssistSubjectControl, offset);
        }
        return contentAssistant.getCompletionProposalAutoActivationCharacters(this.fViewer, offset);
    }

    char[] getContextInformationAutoActivationCharacters(ContentAssistant contentAssistant, int offset) {
        if (this.fContentAssistSubjectControl != null) {
            return contentAssistant.getContextInformationAutoActivationCharacters(this.fContentAssistSubjectControl, offset);
        }
        return contentAssistant.getContextInformationAutoActivationCharacters(this.fViewer, offset);
    }

    CompletionProposalPopup createCompletionProposalPopup(ContentAssistant contentAssistant, AdditionalInfoController controller) {
        if (this.fContentAssistSubjectControl != null) {
            return new CompletionProposalPopup(contentAssistant, this.fContentAssistSubjectControl, controller);
        }
        return new CompletionProposalPopup(contentAssistant, this.fViewer, controller);
    }

    ContextInformationPopup createContextInfoPopup(ContentAssistant contentAssistant) {
        if (this.fContentAssistSubjectControl != null) {
            return new ContextInformationPopup(contentAssistant, this.fContentAssistSubjectControl);
        }
        return new ContextInformationPopup(contentAssistant, this.fViewer);
    }

    public IContextInformationValidator getContextInformationValidator(ContentAssistant contentAssistant, int offset) {
        if (this.fContentAssistSubjectControl != null) {
            return contentAssistant.getContextInformationValidator(this.fContentAssistSubjectControl, offset);
        }
        return contentAssistant.getContextInformationValidator(this.fViewer, offset);
    }

    public IContextInformationPresenter getContextInformationPresenter(ContentAssistant contentAssistant, int offset) {
        if (this.fContentAssistSubjectControl != null) {
            return contentAssistant.getContextInformationPresenter(this.fContentAssistSubjectControl, offset);
        }
        return contentAssistant.getContextInformationPresenter(this.fViewer, offset);
    }

    public void installValidator(ContextInformationPopup.ContextFrame frame) {
        if (this.fContentAssistSubjectControl != null) {
            if (frame.fValidator instanceof ISubjectControlContextInformationValidator) {
                ((ISubjectControlContextInformationValidator)frame.fValidator).install(frame.fInformation, this.fContentAssistSubjectControl, frame.fOffset);
            }
        } else {
            frame.fValidator.install(frame.fInformation, this.fViewer, frame.fOffset);
        }
    }

    public void installContextInformationPresenter(ContextInformationPopup.ContextFrame frame) {
        if (this.fContentAssistSubjectControl != null) {
            if (frame.fPresenter instanceof ISubjectControlContextInformationPresenter) {
                ((ISubjectControlContextInformationPresenter)((Object)frame.fValidator)).install(frame.fInformation, this.fContentAssistSubjectControl, frame.fBeginOffset);
            }
        } else {
            frame.fPresenter.install(frame.fInformation, this.fViewer, frame.fBeginOffset);
        }
    }

    public IContextInformation[] computeContextInformation(ContentAssistant contentAssistant, int offset) {
        if (this.fContentAssistSubjectControl != null) {
            return contentAssistant.computeContextInformation(this.fContentAssistSubjectControl, offset);
        }
        return contentAssistant.computeContextInformation(this.fViewer, offset);
    }

    public boolean addSelectionListener(SelectionListener selectionListener) {
        if (this.fContentAssistSubjectControl != null) {
            return this.fContentAssistSubjectControl.addSelectionListener(selectionListener);
        }
        this.fViewer.getTextWidget().addSelectionListener(selectionListener);
        return true;
    }

    public void removeSelectionListener(SelectionListener selectionListener) {
        if (this.fContentAssistSubjectControl != null) {
            this.fContentAssistSubjectControl.removeSelectionListener(selectionListener);
        } else {
            this.fViewer.getTextWidget().removeSelectionListener(selectionListener);
        }
    }
}

