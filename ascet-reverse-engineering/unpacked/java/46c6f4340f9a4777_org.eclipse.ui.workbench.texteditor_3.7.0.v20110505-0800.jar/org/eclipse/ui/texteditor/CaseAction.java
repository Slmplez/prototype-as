/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IBlockTextSelection
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.ITextViewerExtension
 *  org.eclipse.jface.text.JFaceTextUtil
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.custom.StyledText
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IBlockTextSelection;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class CaseAction
extends TextEditorAction {
    private boolean fToUpper;

    public CaseAction(ResourceBundle bundle, String prefix, AbstractTextEditor editor, boolean toUpper) {
        super(bundle, prefix, editor);
        this.fToUpper = toUpper;
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
        ISourceViewer viewer = ((AbstractTextEditor)editor).getSourceViewer();
        if (viewer == null) {
            return;
        }
        IDocument document = viewer.getDocument();
        if (document == null) {
            return;
        }
        StyledText st = viewer.getTextWidget();
        if (st == null) {
            return;
        }
        ITextSelection selection = (ITextSelection)viewer.getSelectionProvider().getSelection();
        int adjustment = 0;
        try {
            if (JFaceTextUtil.isEmpty((ITextViewer)viewer, (ITextSelection)selection)) {
                return;
            }
            IRegion[] ranges = JFaceTextUtil.getCoveredRanges((ITextViewer)viewer, (ITextSelection)selection);
            if (ranges.length > 1 && viewer instanceof ITextViewerExtension) {
                ((ITextViewerExtension)viewer).getRewriteTarget().beginCompoundChange();
            }
            int i = 0;
            while (i < ranges.length) {
                String replacement;
                IRegion region = ranges[i];
                String target = document.get(region.getOffset(), region.getLength());
                String string = replacement = this.fToUpper ? target.toUpperCase() : target.toLowerCase();
                if (!target.equals(replacement)) {
                    document.replace(region.getOffset(), region.getLength(), replacement);
                    adjustment = replacement.length() - target.length();
                }
                ++i;
            }
            if (ranges.length > 1 && viewer instanceof ITextViewerExtension) {
                ((ITextViewerExtension)viewer).getRewriteTarget().endCompoundChange();
            }
        }
        catch (BadLocationException badLocationException) {
            return;
        }
        if (!(selection instanceof IBlockTextSelection)) {
            viewer.setSelectedRange(selection.getOffset(), selection.getLength() + adjustment);
        } else {
            viewer.getSelectionProvider().setSelection((ISelection)selection);
        }
        st.showSelection();
    }
}

