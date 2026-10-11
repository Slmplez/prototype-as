/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.text.ITextOperationTarget
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.ui.texteditor.IUpdate
 */
package org.eclipse.ui.console.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.text.ITextOperationTarget;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.ui.texteditor.IUpdate;

public class TextViewerAction
extends Action
implements IUpdate {
    private int fOperationCode = -1;
    private ITextOperationTarget fOperationTarget;

    public TextViewerAction(ITextViewer viewer, int operationCode) {
        this.fOperationCode = operationCode;
        this.fOperationTarget = viewer.getTextOperationTarget();
        this.update();
    }

    public void update() {
        boolean wasEnabled = this.isEnabled();
        boolean isEnabled = this.fOperationTarget != null && this.fOperationTarget.canDoOperation(this.fOperationCode);
        this.setEnabled(isEnabled);
        if (wasEnabled != isEnabled) {
            this.firePropertyChange("enabled", wasEnabled ? Boolean.TRUE : Boolean.FALSE, isEnabled ? Boolean.TRUE : Boolean.FALSE);
        }
    }

    public void run() {
        if (this.fOperationCode != -1 && this.fOperationTarget != null) {
            this.fOperationTarget.doOperation(this.fOperationCode);
        }
    }

    public void configureAction(String text, String toolTipText, String description) {
        this.setText(text);
        this.setToolTipText(toolTipText);
        this.setDescription(description);
    }
}

