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
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class JoinLinesAction
extends TextEditorAction {
    private String fJoint = null;

    public JoinLinesAction(ResourceBundle bundle, String prefix, ITextEditor editor, String joint) {
        super(bundle, prefix, editor);
        Assert.isLegal((joint != null ? 1 : 0) != 0);
        this.fJoint = joint;
        this.update();
    }

    public void run() {
        ITextEditor editor = this.getTextEditor();
        if (editor == null) {
            return;
        }
        if (!this.validateEditorInputState()) {
            return;
        }
        IDocument document = JoinLinesAction.getDocument(editor);
        if (document == null) {
            return;
        }
        ITextSelection selection = JoinLinesAction.getSelection(editor);
        if (selection == null) {
            return;
        }
        int startLine = selection.getStartLine();
        int endLine = selection.getEndLine();
        try {
            int caretOffset = this.joinLines(document, startLine, endLine);
            if (caretOffset > -1) {
                editor.selectAndReveal(caretOffset, 0);
            }
        }
        catch (BadLocationException badLocationException) {}
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
        this.setEnabled(editor.isEditable());
    }

    private int joinLines(IDocument document, int startLine, int endLine) throws BadLocationException {
        if (startLine == document.getNumberOfLines() - 1) {
            return -1;
        }
        if (startLine == endLine) {
            ++endLine;
        }
        StringBuffer buffer = new StringBuffer();
        int line = startLine;
        while (line <= endLine) {
            buffer.append(this.trim(document, line, line == startLine));
            if (line != endLine) {
                buffer.append(this.fJoint);
            }
            ++line;
        }
        int startLineOffset = document.getLineOffset(startLine);
        int endLineOffset = document.getLineOffset(endLine) + document.getLineLength(endLine) - this.getLineDelimiterLength(document, endLine);
        String replaceString = buffer.toString();
        document.replace(startLineOffset, endLineOffset - startLineOffset, replaceString);
        return startLineOffset + replaceString.length();
    }

    /*
     * Unable to fully structure code
     */
    private String trim(IDocument document, int line, boolean ignoreLeadingWhitespace) throws BadLocationException {
        lineOffset = document.getLineOffset(line);
        lineLength = document.getLineLength(line);
        lineLength -= this.getLineDelimiterLength(document, line);
        if (ignoreLeadingWhitespace) ** GOTO lbl7
        return document.get(lineOffset, lineLength).trim();
lbl-1000:
        // 1 sources

        {
            --lineLength;
lbl7:
            // 2 sources

            ** while (lineLength > 0 && Character.isWhitespace((char)document.getChar((int)(lineOffset + lineLength - 1))))
        }
lbl8:
        // 1 sources

        return document.get(lineOffset, lineLength);
    }

    private int getLineDelimiterLength(IDocument document, int line) throws BadLocationException {
        String lineDelimiter = document.getLineDelimiter(line);
        return lineDelimiter != null ? lineDelimiter.length() : 0;
    }
}

