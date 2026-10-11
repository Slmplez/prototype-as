/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.IDeleteLineTarget;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;
import org.eclipse.ui.texteditor.TextViewerDeleteLineTarget;

public class DeleteLineAction
extends TextEditorAction {
    public static final int WHOLE = 0;
    public static final int TO_BEGINNING = 1;
    public static final int TO_END = 2;
    private final int fType;
    private final boolean fCopyToClipboard;
    private IDeleteLineTarget fTarget;
    static /* synthetic */ Class class$0;

    public DeleteLineAction(ResourceBundle bundle, String prefix, ITextEditor editor, int type) {
        this(bundle, prefix, editor, type, true);
    }

    public DeleteLineAction(ResourceBundle bundle, String prefix, ITextEditor editor, int type, boolean copyToClipboard) {
        super(bundle, prefix, editor);
        this.fType = type;
        this.fCopyToClipboard = copyToClipboard;
        this.update();
    }

    public DeleteLineAction(ITextEditor editor, int type, boolean copyToClipboard) {
        this(EditorMessages.getBundleForConstructedKeys(), DeleteLineAction.getPrefix(type, copyToClipboard), editor, type, copyToClipboard);
    }

    private static String getPrefix(int type, boolean copyToClipboard) {
        switch (type) {
            case 0: {
                return copyToClipboard ? "Editor.CutLine." : "Editor.DeleteLine.";
            }
            case 1: {
                return copyToClipboard ? "Editor.CutLineToBeginning." : "Editor.DeleteLineToBeginning.";
            }
            case 2: {
                return copyToClipboard ? "Editor.CutLineToEnd." : "Editor.DeleteLineToEnd.";
            }
        }
        Assert.isLegal((boolean)false);
        return "";
    }

    private static IDocument getDocument(ITextEditor editor) {
        IDocumentProvider documentProvider = editor.getDocumentProvider();
        if (documentProvider == null) {
            return null;
        }
        IDocument document = documentProvider.getDocument(editor.getEditorInput());
        if (document == null) {
            return null;
        }
        return document;
    }

    private static ITextSelection getSelection(ITextEditor editor) {
        ISelectionProvider selectionProvider = editor.getSelectionProvider();
        if (selectionProvider == null) {
            return null;
        }
        ISelection selection = selectionProvider.getSelection();
        if (!(selection instanceof ITextSelection)) {
            return null;
        }
        return (ITextSelection)selection;
    }

    public void run() {
        if (this.fTarget == null) {
            return;
        }
        ITextEditor editor = this.getTextEditor();
        if (editor == null) {
            return;
        }
        if (!this.validateEditorInputState()) {
            return;
        }
        IDocument document = DeleteLineAction.getDocument(editor);
        if (document == null) {
            return;
        }
        ITextSelection selection = DeleteLineAction.getSelection(editor);
        if (selection == null) {
            return;
        }
        try {
            if (this.fTarget instanceof TextViewerDeleteLineTarget) {
                ((TextViewerDeleteLineTarget)this.fTarget).deleteLine(document, selection, this.fType, this.fCopyToClipboard);
            } else {
                this.fTarget.deleteLine(document, selection.getOffset(), selection.getLength(), this.fType, this.fCopyToClipboard);
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    public void update() {
        super.update();
        if (!this.isEnabled()) {
            return;
        }
        if (!this.canModifyEditor()) {
            this.setEnabled(false);
            return;
        }
        ITextEditor editor = this.getTextEditor();
        if (editor != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.texteditor.IDeleteLineTarget");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.fTarget = (IDeleteLineTarget)editor.getAdapter(clazz);
        } else {
            this.fTarget = null;
        }
        this.setEnabled(this.fTarget != null);
    }
}

