/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRewriteTarget
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.source.ISourceViewer
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.ui.internal.texteditor.CompoundEditExitStrategy;
import org.eclipse.ui.internal.texteditor.HippieCompletionEngine;
import org.eclipse.ui.internal.texteditor.ICompoundEditListener;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

final class HippieCompleteAction
extends TextEditorAction {
    private IDocument fDocument;
    private CompletionState fLastCompletion = null;
    private final HippieCompletionEngine fEngine = new HippieCompletionEngine();
    private final CompoundEditExitStrategy fExitStrategy = new CompoundEditExitStrategy("org.eclipse.ui.edit.text.hippieCompletion");
    static /* synthetic */ Class class$0;

    HippieCompleteAction(ResourceBundle bundle, String prefix, ITextEditor editor) {
        super(bundle, prefix, editor);
        this.fExitStrategy.addCompoundListener(new ICompoundEditListener(){

            public void endCompoundEdit() {
                HippieCompleteAction.this.clearState();
            }
        });
    }

    private void clearState() {
        this.fLastCompletion = null;
        ITextEditor editor = this.getTextEditor();
        if (editor != null) {
            IRewriteTarget target;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.IRewriteTarget");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((target = (IRewriteTarget)editor.getAdapter(clazz)) != null) {
                this.fExitStrategy.disarm();
                target.endCompoundChange();
            }
        }
        this.fDocument = null;
    }

    private void completeNext() {
        try {
            this.fDocument.replace(this.fLastCompletion.startOffset, this.fLastCompletion.length, this.fLastCompletion.next());
        }
        catch (BadLocationException e) {
            this.log(e);
            this.clearState();
            return;
        }
        ISourceViewer sourceViewer = ((AbstractTextEditor)this.getTextEditor()).getSourceViewer();
        sourceViewer.setSelectedRange(this.fLastCompletion.startOffset + this.fLastCompletion.length, 0);
        sourceViewer.revealRange(this.fLastCompletion.startOffset, this.fLastCompletion.length);
        this.fExitStrategy.arm((ITextViewer)((AbstractTextEditor)this.getTextEditor()).getSourceViewer());
    }

    private IDocument getCurrentDocument() {
        ITextEditor editor = this.getTextEditor();
        if (editor == null) {
            return null;
        }
        IDocumentProvider provider = editor.getDocumentProvider();
        if (provider == null) {
            return null;
        }
        IDocument document = provider.getDocument(editor.getEditorInput());
        return document;
    }

    private String getCurrentPrefix() throws BadLocationException {
        ITextSelection selection = (ITextSelection)this.getTextEditor().getSelectionProvider().getSelection();
        if (selection.getLength() > 0) {
            return null;
        }
        return this.fEngine.getPrefixString(this.fDocument, selection.getOffset());
    }

    private int getSelectionOffset() {
        return ((ITextSelection)this.getTextEditor().getSelectionProvider().getSelection()).getOffset();
    }

    private boolean isStateValid() {
        return this.fDocument != null && this.fDocument.equals(this.getCurrentDocument()) && this.fLastCompletion != null && this.fLastCompletion.startOffset + this.fLastCompletion.length == this.getSelectionOffset();
    }

    private void notifyUser() {
        this.getTextEditor().getSite().getShell().getDisplay().beep();
    }

    public void run() {
        if (!this.validateEditorInputState()) {
            return;
        }
        if (!this.isStateValid()) {
            this.updateState();
        }
        if (this.isStateValid()) {
            this.completeNext();
        }
    }

    public boolean isEnabled() {
        return this.canModifyEditor();
    }

    public void setEditor(ITextEditor editor) {
        this.clearState();
        super.setEditor(editor);
    }

    private void updateState() {
        Assert.isNotNull((Object)this.getTextEditor());
        this.clearState();
        List documents = HippieCompletionEngine.computeDocuments(this.getTextEditor());
        if (documents.size() > 0) {
            IRewriteTarget target;
            Iterator suggestions;
            this.fDocument = (IDocument)documents.remove(0);
            try {
                String prefix = this.getCurrentPrefix();
                if (prefix == null) {
                    this.notifyUser();
                    return;
                }
                suggestions = this.fEngine.getMultipleDocumentsIterator(this.fDocument, documents, prefix, this.getSelectionOffset());
            }
            catch (BadLocationException e) {
                this.log(e);
                return;
            }
            CompletionState completionState = new CompletionState(suggestions, this.getSelectionOffset());
            if (completionState.hasOnly1EmptySuggestion) {
                this.notifyUser();
                return;
            }
            ITextEditor iTextEditor = this.getTextEditor();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.IRewriteTarget");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((target = (IRewriteTarget)iTextEditor.getAdapter(clazz)) != null) {
                target.beginCompoundChange();
            }
            this.fLastCompletion = completionState;
        }
    }

    private void log(BadLocationException e) {
        String msg = e.getLocalizedMessage();
        if (msg == null) {
            msg = "unable to access the document";
        }
        TextEditorPlugin.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 0, msg, (Throwable)e));
    }

    private static class CompletionState {
        int length;
        int nextSuggestion;
        final int startOffset;
        private final Iterator suggestions;
        private final List consumedSuggestions;
        private final boolean hasOnly1EmptySuggestion;
        private final HashSet alreadyFound;

        CompletionState(Iterator suggestions, int startOffset) {
            boolean hasOnly1Temp;
            this.suggestions = suggestions;
            this.consumedSuggestions = new ArrayList();
            this.alreadyFound = new HashSet();
            this.startOffset = startOffset;
            this.length = 0;
            this.nextSuggestion = 0;
            if (this.suggestions.hasNext()) {
                this.addNewToken((String)this.suggestions.next());
                hasOnly1Temp = true;
                while (this.suggestions.hasNext()) {
                    Object next = this.suggestions.next();
                    if (this.consumedSuggestions.contains(next)) continue;
                    this.addNewToken((String)next);
                    hasOnly1Temp = false;
                    break;
                }
            } else {
                throw new AssertionError((Object)"At least the empty completion must be available in the iterator!");
            }
            this.hasOnly1EmptySuggestion = hasOnly1Temp;
        }

        public String next() {
            String ret = null;
            if (this.consumedSuggestions.size() > this.nextSuggestion) {
                ret = (String)this.consumedSuggestions.get(this.nextSuggestion);
                ++this.nextSuggestion;
            }
            while (ret == null && this.consumedSuggestions.size() == this.nextSuggestion && this.suggestions.hasNext()) {
                String temp = (String)this.suggestions.next();
                if (this.alreadyFound.contains(temp)) continue;
                this.addNewToken(temp);
                ret = temp;
                ++this.nextSuggestion;
            }
            if (ret == null) {
                ret = (String)this.consumedSuggestions.get(0);
                this.nextSuggestion = 1;
            }
            this.length = ret.length();
            return ret;
        }

        private void addNewToken(String suggestion) {
            this.alreadyFound.add(suggestion);
            this.consumedSuggestions.add(suggestion);
        }
    }
}

