/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.source.ILineDiffInfo
 *  org.eclipse.jface.text.source.ILineDiffer
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.source.ILineDiffInfo;
import org.eclipse.jface.text.source.ILineDiffer;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffMessages;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffRestoreAction;
import org.eclipse.ui.texteditor.ITextEditor;

public class RevertLineAction
extends QuickDiffRestoreAction {
    private int fLine;

    public RevertLineAction(ITextEditor editor, boolean isRulerAction) {
        super("RevertLineAction.", editor, isRulerAction);
    }

    public boolean computeEnablement() {
        if (!super.computeEnablement()) {
            return false;
        }
        this.fLine = this.getLastLine();
        if (this.fLine == -1) {
            return false;
        }
        ILineDiffer differ = this.getDiffer();
        if (differ == null) {
            return false;
        }
        ILineDiffInfo info = differ.getLineInfo(this.fLine);
        if (info == null || info.getChangeType() == 0) {
            return false;
        }
        if (info.getChangeType() == 1) {
            this.setText(QuickDiffMessages.RevertLineAction_delete_label);
        } else {
            this.setText(QuickDiffMessages.RevertLineAction_label);
        }
        return true;
    }

    public void runCompoundChange() {
        if (!this.isEnabled()) {
            return;
        }
        ILineDiffer differ = this.getDiffer();
        if (differ != null) {
            try {
                differ.revertLine(this.fLine);
            }
            catch (BadLocationException e) {
                this.setStatus(e.getMessage());
            }
        }
    }
}

