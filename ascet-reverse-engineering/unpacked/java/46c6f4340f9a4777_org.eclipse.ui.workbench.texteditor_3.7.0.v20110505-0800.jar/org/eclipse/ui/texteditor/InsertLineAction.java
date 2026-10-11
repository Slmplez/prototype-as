/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.swt.custom.StyledText
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class InsertLineAction
extends TextEditorAction {
    protected boolean fAbove;

    public InsertLineAction(ResourceBundle bundle, String prefix, ITextEditor textEditor, boolean above) {
        super(bundle, prefix, textEditor);
        this.fAbove = above;
    }

    public void update() {
        super.update();
        if (this.isEnabled()) {
            this.setEnabled(this.canModifyEditor());
        }
    }

    public void run() {
        ITextEditor ed = this.getTextEditor();
        if (!(ed instanceof AbstractTextEditor)) {
            return;
        }
        if (!this.validateEditorInputState()) {
            return;
        }
        AbstractTextEditor editor = (AbstractTextEditor)ed;
        ISourceViewer sv = editor.getSourceViewer();
        if (sv == null) {
            return;
        }
        IDocument document = sv.getDocument();
        if (document == null) {
            return;
        }
        StyledText st = sv.getTextWidget();
        if (st == null || st.isDisposed()) {
            return;
        }
        try {
            int widgetOffset = st.getCaretOffset();
            int offset = AbstractTextEditor.widgetOffset2ModelOffset(sv, widgetOffset);
            int currentLineNumber = document.getLineOfOffset(offset);
            IRegion currentLine = document.getLineInformation(currentLineNumber);
            int insertionOffset = -1;
            if (this.fAbove) {
                if (currentLineNumber != 0) {
                    IRegion previousLine = document.getLineInformation(currentLineNumber - 1);
                    insertionOffset = previousLine.getOffset() + previousLine.getLength();
                }
            } else {
                insertionOffset = currentLine.getOffset() + currentLine.getLength();
            }
            boolean updateCaret = true;
            int widgetInsertionOffset = AbstractTextEditor.modelOffset2WidgetOffset(sv, insertionOffset);
            if (widgetInsertionOffset == -1 && this.fAbove) {
                insertionOffset = currentLine.getOffset() + this.getIndentationLength(document, currentLine);
                widgetInsertionOffset = AbstractTextEditor.modelOffset2WidgetOffset(sv, insertionOffset);
                updateCaret = false;
            }
            if (widgetInsertionOffset == -1) {
                return;
            }
            Position caret = new Position(insertionOffset, 0);
            document.addPosition(caret);
            st.setSelectionRange(widgetInsertionOffset, 0);
            st.replaceTextRange(widgetInsertionOffset, 0, st.getLineDelimiter());
            document.removePosition(caret);
            if (updateCaret && st.getSelection().x == widgetInsertionOffset) {
                int widgetCaret = AbstractTextEditor.modelOffset2WidgetOffset(sv, caret.getOffset());
                if (widgetCaret != -1) {
                    st.setSelectionRange(widgetCaret, 0);
                }
                st.showSelection();
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    private int getIndentationLength(IDocument document, IRegion line) throws BadLocationException {
        int pos = line.getOffset();
        int max = pos + line.getLength();
        while (pos < max) {
            if (!Character.isWhitespace(document.getChar(pos))) break;
            ++pos;
        }
        return pos - line.getOffset();
    }
}

