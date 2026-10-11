/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;

public final class ContextInformationValidator
implements IContextInformationValidator {
    private IContentAssistProcessor fProcessor;
    private IContextInformation fContextInformation;
    private ITextViewer fViewer;

    public ContextInformationValidator(IContentAssistProcessor processor) {
        this.fProcessor = processor;
    }

    public void install(IContextInformation contextInformation, ITextViewer viewer, int offset) {
        this.fContextInformation = contextInformation;
        this.fViewer = viewer;
    }

    public boolean isContextInformationValid(int offset) {
        IContextInformation[] infos = this.fProcessor.computeContextInformation(this.fViewer, offset);
        if (infos != null && infos.length > 0) {
            int i = 0;
            while (i < infos.length) {
                if (this.fContextInformation.equals(infos[i])) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }
}

