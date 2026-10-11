/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.contentassist.ICompletionProposal
 *  org.eclipse.jface.text.contentassist.IContextInformation
 *  org.eclipse.jface.text.templates.TemplateVariableResolver
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.texteditor.templates;

import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.templates.TemplateVariableResolver;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.texteditor.templates.TemplatesMessages;

final class TemplateVariableProposal
implements ICompletionProposal {
    private TemplateVariableResolver fVariable;
    private int fOffset;
    private int fLength;
    private ITextViewer fViewer;
    private Point fSelection;

    public TemplateVariableProposal(TemplateVariableResolver variable, int offset, int length, ITextViewer viewer) {
        this.fVariable = variable;
        this.fOffset = offset;
        this.fLength = length;
        this.fViewer = viewer;
    }

    public void apply(IDocument document) {
        try {
            String variable = this.fVariable.getType().equals("dollar") ? "$$" : "${" + this.fVariable.getType() + '}';
            document.replace(this.fOffset, this.fLength, variable);
            this.fSelection = new Point(this.fOffset + variable.length(), 0);
        }
        catch (BadLocationException e) {
            Shell shell = this.fViewer.getTextWidget().getShell();
            MessageDialog.openError((Shell)shell, (String)TemplatesMessages.TemplateVariableProposal_error_title, (String)e.getMessage());
        }
    }

    public Point getSelection(IDocument document) {
        return this.fSelection;
    }

    public String getAdditionalProposalInfo() {
        return null;
    }

    public String getDisplayString() {
        return String.valueOf(this.fVariable.getType()) + " - " + this.fVariable.getDescription();
    }

    public Image getImage() {
        return null;
    }

    public IContextInformation getContextInformation() {
        return null;
    }
}

