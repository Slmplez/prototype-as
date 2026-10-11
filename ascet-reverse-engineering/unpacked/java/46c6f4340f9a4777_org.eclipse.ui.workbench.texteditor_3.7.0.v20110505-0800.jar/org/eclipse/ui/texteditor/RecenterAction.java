/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.swt.custom.StyledText
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class RecenterAction
extends TextEditorAction {
    public RecenterAction(ResourceBundle bundle, String prefix, ITextEditor editor) {
        super(bundle, prefix, editor);
    }

    public void run() {
        ITextEditor editor = this.getTextEditor();
        if (!(editor instanceof AbstractTextEditor)) {
            return;
        }
        ISourceViewer viewer = ((AbstractTextEditor)editor).getSourceViewer();
        if (viewer == null) {
            return;
        }
        StyledText st = viewer.getTextWidget();
        if (st == null) {
            return;
        }
        int height = st.getClientArea().height;
        int lineHeight = st.getLineHeight();
        int caretOffset = st.getCaretOffset();
        int caretLine = st.getLineAtOffset(caretOffset);
        int topLine = Math.max(0, caretLine - height / (lineHeight * 2));
        st.setTopIndex(topLine);
    }
}

