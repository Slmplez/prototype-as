/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.contentassist;

import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.contentassist.ISubjectControlContentAssistProcessor;
import org.eclipse.jface.contentassist.ISubjectControlContextInformationValidator;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContextInformation;

public final class SubjectControlContextInformationValidator
implements ISubjectControlContextInformationValidator {
    private IContentAssistProcessor fProcessor;
    private IContextInformation fContextInformation;
    private IContentAssistSubjectControl fContentAssistSubjectControl;

    public SubjectControlContextInformationValidator(IContentAssistProcessor processor) {
        this.fProcessor = processor;
    }

    public void install(IContextInformation contextInformation, ITextViewer viewer, int offset) {
        throw new UnsupportedOperationException();
    }

    public void install(IContextInformation contextInformation, IContentAssistSubjectControl contentAssistSubjectControl, int offset) {
        this.fContextInformation = contextInformation;
        this.fContentAssistSubjectControl = contentAssistSubjectControl;
    }

    public boolean isContextInformationValid(int offset) {
        IContextInformation[] infos;
        if (this.fContentAssistSubjectControl != null && this.fProcessor instanceof ISubjectControlContentAssistProcessor && (infos = ((ISubjectControlContentAssistProcessor)this.fProcessor).computeContextInformation(this.fContentAssistSubjectControl, offset)) != null && infos.length > 0) {
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

