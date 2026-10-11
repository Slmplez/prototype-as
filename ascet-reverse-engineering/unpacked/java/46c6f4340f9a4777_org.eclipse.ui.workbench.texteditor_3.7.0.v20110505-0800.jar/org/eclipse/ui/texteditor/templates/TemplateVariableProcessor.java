/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.contentassist.ICompletionProposal
 *  org.eclipse.jface.text.contentassist.IContentAssistProcessor
 *  org.eclipse.jface.text.contentassist.IContextInformation
 *  org.eclipse.jface.text.contentassist.IContextInformationValidator
 *  org.eclipse.jface.text.templates.TemplateContextType
 *  org.eclipse.jface.text.templates.TemplateVariableResolver
 */
package org.eclipse.ui.texteditor.templates;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.jface.text.templates.TemplateContextType;
import org.eclipse.jface.text.templates.TemplateVariableResolver;
import org.eclipse.ui.texteditor.templates.TemplateVariableProposal;

final class TemplateVariableProcessor
implements IContentAssistProcessor {
    private static Comparator fgTemplateVariableProposalComparator = new Comparator(){

        public int compare(Object arg0, Object arg1) {
            TemplateVariableProposal proposal0 = (TemplateVariableProposal)arg0;
            TemplateVariableProposal proposal1 = (TemplateVariableProposal)arg1;
            return proposal0.getDisplayString().compareTo(proposal1.getDisplayString());
        }

        public boolean equals(Object arg0) {
            return false;
        }

        public int hashCode() {
            return super.hashCode();
        }
    };
    private TemplateContextType fContextType;

    TemplateVariableProcessor() {
    }

    public void setContextType(TemplateContextType contextType) {
        this.fContextType = contextType;
    }

    public TemplateContextType getContextType() {
        return this.fContextType;
    }

    public ICompletionProposal[] computeCompletionProposals(ITextViewer viewer, int documentOffset) {
        int end;
        int start;
        if (this.fContextType == null) {
            return null;
        }
        ArrayList<TemplateVariableProposal> proposals = new ArrayList<TemplateVariableProposal>();
        String text = viewer.getDocument().get();
        String string = text.substring(start = this.getStart(text, documentOffset), end = documentOffset);
        String prefix = string.length() >= 2 ? string.substring(2) : null;
        int offset = start;
        int length = end - start;
        Iterator iterator = this.fContextType.resolvers();
        while (iterator.hasNext()) {
            TemplateVariableResolver variable = (TemplateVariableResolver)iterator.next();
            if (prefix != null && !variable.getType().startsWith(prefix)) continue;
            proposals.add(new TemplateVariableProposal(variable, offset, length, viewer));
        }
        Collections.sort(proposals, fgTemplateVariableProposalComparator);
        return proposals.toArray(new ICompletionProposal[proposals.size()]);
    }

    /*
     * Unable to fully structure code
     */
    private int getStart(String string, int end) {
        start = end;
        if (start < 1 || string.charAt(start - 1) != '$') ** GOTO lbl5
        return start - 1;
lbl-1000:
        // 1 sources

        {
            --start;
lbl5:
            // 2 sources

            ** while (start != 0 && Character.isUnicodeIdentifierPart((char)string.charAt((int)(start - 1))))
        }
lbl6:
        // 1 sources

        if (start >= 2 && string.charAt(start - 1) == '{' && string.charAt(start - 2) == '$') {
            return start - 2;
        }
        return end;
    }

    public IContextInformation[] computeContextInformation(ITextViewer viewer, int documentOffset) {
        return null;
    }

    public char[] getCompletionProposalAutoActivationCharacters() {
        return new char[]{'$'};
    }

    public char[] getContextInformationAutoActivationCharacters() {
        return null;
    }

    public String getErrorMessage() {
        return null;
    }

    public IContextInformationValidator getContextInformationValidator() {
        return null;
    }
}

