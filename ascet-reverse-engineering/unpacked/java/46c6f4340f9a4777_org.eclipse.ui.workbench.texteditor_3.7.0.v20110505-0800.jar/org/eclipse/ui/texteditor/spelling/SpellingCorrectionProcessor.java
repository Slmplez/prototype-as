/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.contentassist.ICompletionProposal
 *  org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext
 *  org.eclipse.jface.text.quickassist.IQuickAssistProcessor
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.jface.text.source.TextInvocationContext
 */
package org.eclipse.ui.texteditor.spelling;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext;
import org.eclipse.jface.text.quickassist.IQuickAssistProcessor;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.TextInvocationContext;
import org.eclipse.ui.internal.texteditor.spelling.NoCompletionsProposal;
import org.eclipse.ui.texteditor.spelling.SpellingAnnotation;
import org.eclipse.ui.texteditor.spelling.SpellingProblem;

public final class SpellingCorrectionProcessor
implements IQuickAssistProcessor {
    private static final ICompletionProposal[] fgNoSuggestionsProposal = new ICompletionProposal[]{new NoCompletionsProposal()};

    public ICompletionProposal[] computeQuickAssistProposals(IQuickAssistInvocationContext quickAssistContext) {
        ISourceViewer viewer = quickAssistContext.getSourceViewer();
        int documentOffset = quickAssistContext.getOffset();
        int length = viewer != null ? viewer.getSelectedRange().y : -1;
        TextInvocationContext context = new TextInvocationContext(viewer, documentOffset, length);
        IAnnotationModel model = viewer.getAnnotationModel();
        if (model == null) {
            return fgNoSuggestionsProposal;
        }
        List proposals = this.computeProposals((IQuickAssistInvocationContext)context, model);
        if (proposals.isEmpty()) {
            return fgNoSuggestionsProposal;
        }
        return proposals.toArray(new ICompletionProposal[proposals.size()]);
    }

    private boolean isAtPosition(int offset, Position pos) {
        return pos != null && offset >= pos.getOffset() && offset <= pos.getOffset() + pos.getLength();
    }

    private List computeProposals(IQuickAssistInvocationContext context, IAnnotationModel model) {
        int offset = context.getOffset();
        ArrayList annotationList = new ArrayList();
        Iterator iter = model.getAnnotationIterator();
        while (iter.hasNext()) {
            Position pos;
            Annotation annotation = (Annotation)iter.next();
            if (!this.canFix(annotation) || !this.isAtPosition(offset, pos = model.getPosition(annotation))) continue;
            this.collectSpellingProblems(annotation, annotationList);
        }
        SpellingProblem[] spellingProblems = annotationList.toArray(new SpellingProblem[annotationList.size()]);
        return this.computeProposals(context, spellingProblems);
    }

    private void collectSpellingProblems(Annotation annotation, List problems) {
        if (annotation instanceof SpellingAnnotation) {
            problems.add(((SpellingAnnotation)annotation).getSpellingProblem());
        }
    }

    private List computeProposals(IQuickAssistInvocationContext context, SpellingProblem[] spellingProblems) {
        ArrayList<ICompletionProposal> proposals = new ArrayList<ICompletionProposal>();
        int i = 0;
        while (i < spellingProblems.length) {
            proposals.addAll(Arrays.asList(spellingProblems[i].getProposals(context)));
            ++i;
        }
        return proposals;
    }

    public String getErrorMessage() {
        return null;
    }

    public boolean canFix(Annotation annotation) {
        return annotation instanceof SpellingAnnotation && !annotation.isMarkedDeleted();
    }

    public boolean canAssist(IQuickAssistInvocationContext invocationContext) {
        return false;
    }
}

