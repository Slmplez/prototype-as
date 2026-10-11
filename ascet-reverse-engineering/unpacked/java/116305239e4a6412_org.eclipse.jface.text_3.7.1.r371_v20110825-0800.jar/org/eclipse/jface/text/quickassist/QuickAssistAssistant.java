/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.swt.graphics.Color
 */
package org.eclipse.jface.text.quickassist;

import org.eclipse.core.commands.IHandler;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.contentassist.ContentAssistant;
import org.eclipse.jface.text.contentassist.ICompletionListener;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.jface.text.quickassist.IQuickAssistAssistant;
import org.eclipse.jface.text.quickassist.IQuickAssistAssistantExtension;
import org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext;
import org.eclipse.jface.text.quickassist.IQuickAssistProcessor;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.TextInvocationContext;
import org.eclipse.swt.graphics.Color;

public class QuickAssistAssistant
implements IQuickAssistAssistant,
IQuickAssistAssistantExtension {
    private QuickAssistAssistantImpl fQuickAssistAssistantImpl = new QuickAssistAssistantImpl();
    private IQuickAssistProcessor fQuickAssistProcessor;

    public QuickAssistAssistant() {
        this.fQuickAssistAssistantImpl.enableAutoActivation(false);
        this.fQuickAssistAssistantImpl.enableAutoInsert(false);
    }

    public String showPossibleQuickAssists() {
        return this.fQuickAssistAssistantImpl.showPossibleCompletions();
    }

    public IQuickAssistProcessor getQuickAssistProcessor() {
        return this.fQuickAssistProcessor;
    }

    public void setQuickAssistProcessor(IQuickAssistProcessor processor) {
        this.fQuickAssistProcessor = processor;
        this.fQuickAssistAssistantImpl.setDocumentPartitioning("__" + this.getClass().getName() + "_partitioning");
        this.fQuickAssistAssistantImpl.setContentAssistProcessor(new ContentAssistProcessor(processor), "__dftl_partition_content_type");
    }

    public boolean canFix(Annotation annotation) {
        return this.fQuickAssistProcessor != null && this.fQuickAssistProcessor.canFix(annotation);
    }

    public boolean canAssist(IQuickAssistInvocationContext invocationContext) {
        return this.fQuickAssistProcessor != null && this.fQuickAssistProcessor.canAssist(invocationContext);
    }

    public void install(ISourceViewer sourceViewer) {
        this.fQuickAssistAssistantImpl.install(sourceViewer);
    }

    public void setInformationControlCreator(IInformationControlCreator creator) {
        this.fQuickAssistAssistantImpl.setInformationControlCreator(creator);
    }

    public void uninstall() {
        this.fQuickAssistAssistantImpl.uninstall();
    }

    public void setProposalSelectorBackground(Color background) {
        this.fQuickAssistAssistantImpl.setProposalSelectorBackground(background);
    }

    public void setProposalSelectorForeground(Color foreground) {
        this.fQuickAssistAssistantImpl.setProposalSelectorForeground(foreground);
    }

    public void setRestoreCompletionProposalSize(IDialogSettings dialogSettings) {
        this.fQuickAssistAssistantImpl.setRestoreCompletionProposalSize(dialogSettings);
    }

    protected void possibleCompletionsClosed() {
        this.fQuickAssistAssistantImpl.possibleCompletionsClosed();
    }

    public void addCompletionListener(ICompletionListener listener) {
        this.fQuickAssistAssistantImpl.addCompletionListener(listener);
    }

    public void removeCompletionListener(ICompletionListener listener) {
        this.fQuickAssistAssistantImpl.removeCompletionListener(listener);
    }

    public void setStatusLineVisible(boolean show) {
        this.fQuickAssistAssistantImpl.setStatusLineVisible(show);
    }

    public void setStatusMessage(String message) {
        this.fQuickAssistAssistantImpl.setStatusMessage(message);
    }

    public final IHandler getHandler(String commandId) {
        return this.fQuickAssistAssistantImpl.getHandler(commandId);
    }

    protected void hide() {
        this.fQuickAssistAssistantImpl.hide();
    }

    public void enableColoredLabels(boolean isEnabled) {
        this.fQuickAssistAssistantImpl.enableColoredLabels(isEnabled);
    }

    private static final class ContentAssistProcessor
    implements IContentAssistProcessor {
        private IQuickAssistProcessor fQuickAssistProcessor;

        ContentAssistProcessor(IQuickAssistProcessor processor) {
            this.fQuickAssistProcessor = processor;
        }

        public ICompletionProposal[] computeCompletionProposals(ITextViewer viewer, int offset) {
            if (!(viewer instanceof ISourceViewer)) {
                return null;
            }
            return this.fQuickAssistProcessor.computeQuickAssistProposals(new TextInvocationContext((ISourceViewer)viewer, offset, -1));
        }

        public IContextInformation[] computeContextInformation(ITextViewer viewer, int offset) {
            return null;
        }

        public char[] getCompletionProposalAutoActivationCharacters() {
            return null;
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

    private static final class QuickAssistAssistantImpl
    extends ContentAssistant {
        private QuickAssistAssistantImpl() {
        }

        public void possibleCompletionsClosed() {
            super.possibleCompletionsClosed();
        }

        protected void hide() {
            super.hide();
        }
    }
}

