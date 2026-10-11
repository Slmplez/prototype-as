/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.IEditorPart
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class SaveAction
extends TextEditorAction {
    public SaveAction(ResourceBundle bundle, String prefix, ITextEditor editor) {
        super(bundle, prefix, editor);
    }

    public void run() {
        this.getTextEditor().getSite().getPage().saveEditor((IEditorPart)this.getTextEditor(), false);
    }

    public void update() {
        this.setEnabled(this.getTextEditor().isDirty());
    }
}

