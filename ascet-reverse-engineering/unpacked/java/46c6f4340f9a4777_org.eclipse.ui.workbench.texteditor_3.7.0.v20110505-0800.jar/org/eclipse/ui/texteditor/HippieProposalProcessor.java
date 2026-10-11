/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IInformationControlCreator
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.contentassist.ICompletionProposal
 *  org.eclipse.jface.text.contentassist.ICompletionProposalExtension
 *  org.eclipse.jface.text.contentassist.ICompletionProposalExtension2
 *  org.eclipse.jface.text.contentassist.ICompletionProposalExtension3
 *  org.eclipse.jface.text.contentassist.ICompletionProposalExtension4
 *  org.eclipse.jface.text.contentassist.IContentAssistProcessor
 *  org.eclipse.jface.text.contentassist.IContextInformation
 *  org.eclipse.jface.text.contentassist.IContextInformationValidator
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.ui.IEditorInput
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IEditorReference
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension2;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension3;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension4;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.texteditor.HippieCompletionEngine;
import org.eclipse.ui.texteditor.ITextEditor;

public final class HippieProposalProcessor
implements IContentAssistProcessor {
    private static final ICompletionProposal[] NO_PROPOSALS = new ICompletionProposal[0];
    private static final IContextInformation[] NO_CONTEXTS = new IContextInformation[0];
    private final HippieCompletionEngine fEngine = new HippieCompletionEngine();

    public ICompletionProposal[] computeCompletionProposals(ITextViewer viewer, int offset) {
        try {
            String prefix = this.getPrefix(viewer, offset);
            if (prefix == null || prefix.length() == 0) {
                return NO_PROPOSALS;
            }
            List suggestions = this.getSuggestions(viewer, offset, prefix);
            ArrayList<ICompletionProposal> result = new ArrayList<ICompletionProposal>();
            Iterator it = suggestions.iterator();
            while (it.hasNext()) {
                String string = (String)it.next();
                if (string.length() <= 0) continue;
                result.add(this.createProposal(string, prefix, offset));
            }
            return result.toArray(new ICompletionProposal[result.size()]);
        }
        catch (BadLocationException badLocationException) {
            return NO_PROPOSALS;
        }
    }

    private String getPrefix(ITextViewer viewer, int offset) throws BadLocationException {
        IDocument doc = viewer.getDocument();
        if (doc == null || offset > doc.getLength()) {
            return null;
        }
        int length = 0;
        while (--offset >= 0 && Character.isJavaIdentifierPart(doc.getChar(offset))) {
            ++length;
        }
        return doc.get(offset + 1, length);
    }

    private ICompletionProposal createProposal(String string, String prefix, int offset) {
        return new Proposal(string, prefix, offset);
    }

    public IContextInformation[] computeContextInformation(ITextViewer viewer, int offset) {
        return NO_CONTEXTS;
    }

    public char[] getCompletionProposalAutoActivationCharacters() {
        return null;
    }

    public char[] getContextInformationAutoActivationCharacters() {
        return null;
    }

    public IContextInformationValidator getContextInformationValidator() {
        return null;
    }

    private ArrayList createSuggestionsFromOpenDocument(ITextViewer viewer, int offset, String prefix) throws BadLocationException {
        IDocument document = viewer.getDocument();
        ArrayList completions = new ArrayList();
        completions.addAll(this.fEngine.getCompletionsBackwards(document, prefix, offset));
        completions.addAll(this.fEngine.getCompletionsForward(document, prefix, offset - prefix.length(), true));
        return completions;
    }

    private List getSuggestions(ITextViewer viewer, int offset, String prefix) throws BadLocationException {
        ArrayList suggestions = this.createSuggestionsFromOpenDocument(viewer, offset, prefix);
        IDocument currentDocument = viewer.getDocument();
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        IEditorReference[] editorReferences = window.getActivePage().getEditorReferences();
        int i = 0;
        while (i < editorReferences.length) {
            IEditorPart editor = editorReferences[i].getEditor(false);
            if (editor instanceof ITextEditor) {
                ITextEditor textEditor = (ITextEditor)editor;
                IEditorInput input = textEditor.getEditorInput();
                IDocument doc = textEditor.getDocumentProvider().getDocument(input);
                if (!currentDocument.equals(doc)) {
                    suggestions.addAll(this.fEngine.getCompletionsForward(doc, prefix, 0, false));
                }
            }
            ++i;
        }
        suggestions.add("");
        List uniqueSuggestions = this.fEngine.makeUnique(suggestions);
        return uniqueSuggestions;
    }

    public String getErrorMessage() {
        return null;
    }

    private static final class Proposal
    implements ICompletionProposal,
    ICompletionProposalExtension,
    ICompletionProposalExtension2,
    ICompletionProposalExtension3,
    ICompletionProposalExtension4 {
        private final String fString;
        private final String fPrefix;
        private final int fOffset;

        public Proposal(String string, String prefix, int offset) {
            this.fString = string;
            this.fPrefix = prefix;
            this.fOffset = offset;
        }

        public void apply(IDocument document) {
            this.apply(null, '\u0000', 0, this.fOffset);
        }

        public Point getSelection(IDocument document) {
            return new Point(this.fOffset + this.fString.length(), 0);
        }

        public String getAdditionalProposalInfo() {
            return null;
        }

        public String getDisplayString() {
            return String.valueOf(this.fPrefix) + this.fString;
        }

        public Image getImage() {
            return null;
        }

        public IContextInformation getContextInformation() {
            return null;
        }

        public void apply(IDocument document, char trigger, int offset) {
            try {
                String replacement = this.fString.substring(offset - this.fOffset);
                document.replace(offset, 0, replacement);
            }
            catch (BadLocationException x) {
                x.printStackTrace();
            }
        }

        public boolean isValidFor(IDocument document, int offset) {
            return this.validate(document, offset, null);
        }

        public char[] getTriggerCharacters() {
            return null;
        }

        public int getContextInformationPosition() {
            return 0;
        }

        public void apply(ITextViewer viewer, char trigger, int stateMask, int offset) {
            this.apply(viewer.getDocument(), trigger, offset);
        }

        public void selected(ITextViewer viewer, boolean smartToggle) {
        }

        public void unselected(ITextViewer viewer) {
        }

        public boolean validate(IDocument document, int offset, DocumentEvent event) {
            try {
                int prefixStart = this.fOffset - this.fPrefix.length();
                return offset >= this.fOffset && offset < this.fOffset + this.fString.length() && document.get(prefixStart, offset - prefixStart).equals((String.valueOf(this.fPrefix) + this.fString).substring(0, offset - prefixStart));
            }
            catch (BadLocationException badLocationException) {
                return false;
            }
        }

        public IInformationControlCreator getInformationControlCreator() {
            return null;
        }

        public CharSequence getPrefixCompletionText(IDocument document, int completionOffset) {
            return String.valueOf(this.fPrefix) + this.fString;
        }

        public int getPrefixCompletionStart(IDocument document, int completionOffset) {
            return this.fOffset - this.fPrefix.length();
        }

        public boolean isAutoInsertable() {
            return true;
        }
    }
}

