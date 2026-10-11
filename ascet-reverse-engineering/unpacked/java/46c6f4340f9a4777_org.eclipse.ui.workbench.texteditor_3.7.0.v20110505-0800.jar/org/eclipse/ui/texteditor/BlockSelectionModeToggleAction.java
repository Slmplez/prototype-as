/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorExtension5;
import org.eclipse.ui.texteditor.TextEditorAction;

final class BlockSelectionModeToggleAction
extends TextEditorAction {
    public BlockSelectionModeToggleAction(ResourceBundle resourceBundle, String prefix, ITextEditor editor) {
        super(resourceBundle, prefix, editor, 2);
    }

    public void run() {
        ITextEditor editor = this.getTextEditor();
        if (editor instanceof ITextEditorExtension5) {
            ITextEditorExtension5 ext5;
            ext5.setBlockSelectionMode(!(ext5 = (ITextEditorExtension5)((Object)editor)).isBlockSelectionModeEnabled());
        }
        this.update();
    }

    public void update() {
        ITextEditor editor = this.getTextEditor();
        if (editor instanceof ITextEditorExtension5) {
            ITextEditorExtension5 ext5 = (ITextEditorExtension5)((Object)editor);
            this.setEnabled(true);
            this.setChecked(ext5.isBlockSelectionModeEnabled());
            return;
        }
        this.setEnabled(false);
        this.setChecked(false);
    }
}

