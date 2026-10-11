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
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffMessages;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffRestoreAction;
import org.eclipse.ui.texteditor.ITextEditor;

public class RestoreAction
extends QuickDiffRestoreAction {
    private static final String PREFIX = "RestoreAction.";
    private int fLine;

    public RestoreAction(ITextEditor editor, boolean isRulerAction) {
        super(PREFIX, editor, isRulerAction);
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
        if (info == null || info.getRemovedLinesAbove() <= 0 && info.getRemovedLinesBelow() <= 0) {
            return false;
        }
        if (info.getRemovedLinesBelow() == 0) {
            --this.fLine;
        } else {
            info.getRemovedLinesAbove();
        }
        info = differ.getLineInfo(this.fLine);
        if (info == null) {
            return false;
        }
        if (info.getRemovedLinesBelow() == 1) {
            this.setText(QuickDiffMessages.RestoreAction_label);
        } else {
            this.setText(NLSUtility.format(QuickDiffMessages.RestoreAction_multiple_label, String.valueOf(info.getRemovedLinesBelow())));
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
                differ.restoreAfterLine(this.fLine);
            }
            catch (BadLocationException e) {
                this.setStatus(e.getMessage());
            }
        }
    }
}

