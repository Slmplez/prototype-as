/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class RevertToSavedAction
extends TextEditorAction {
    public RevertToSavedAction(ResourceBundle bundle, String prefix, ITextEditor editor) {
        super(bundle, prefix, editor);
    }

    public void run() {
        this.getTextEditor().doRevertToSaved();
    }

    public void update() {
        this.setEnabled(this.getTextEditor().isDirty());
    }
}

