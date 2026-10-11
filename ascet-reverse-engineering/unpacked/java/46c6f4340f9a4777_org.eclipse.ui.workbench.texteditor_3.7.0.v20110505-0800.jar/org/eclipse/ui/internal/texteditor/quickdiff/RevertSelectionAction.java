/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.source.ILineDiffInfo
 *  org.eclipse.jface.text.source.ILineDiffer
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.source.ILineDiffInfo;
import org.eclipse.jface.text.source.ILineDiffer;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffRestoreAction;
import org.eclipse.ui.texteditor.ITextEditor;

public class RevertSelectionAction
extends QuickDiffRestoreAction {
    private int fStartLine;
    private int fEndLine;

    public RevertSelectionAction(ITextEditor editor, boolean isRulerAction) {
        super("RevertSelectionAction.", editor, isRulerAction);
    }

    public boolean computeEnablement() {
        if (!super.computeEnablement()) {
            return false;
        }
        ITextSelection selection = this.getSelection();
        if (selection == null) {
            return false;
        }
        this.fStartLine = selection.getStartLine();
        this.fEndLine = selection.getEndLine();
        int activityLine = this.getLastLine();
        if (activityLine == -1 || activityLine < this.fStartLine || activityLine > this.fEndLine + 1) {
            return false;
        }
        ILineDiffer differ = this.getDiffer();
        if (differ == null) {
            return false;
        }
        if (this.fEndLine > this.fStartLine) {
            int i = this.fStartLine;
            while (i <= this.fEndLine) {
                ILineDiffInfo info = differ.getLineInfo(i);
                if (info != null && info.hasChanges()) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public void runCompoundChange() {
        if (!this.isEnabled()) {
            return;
        }
        ILineDiffer differ = this.getDiffer();
        if (differ != null) {
            try {
                differ.revertSelection(this.fStartLine, this.fEndLine - this.fStartLine + 1);
            }
            catch (BadLocationException e) {
                this.setStatus(e.getMessage());
            }
        }
    }
}

