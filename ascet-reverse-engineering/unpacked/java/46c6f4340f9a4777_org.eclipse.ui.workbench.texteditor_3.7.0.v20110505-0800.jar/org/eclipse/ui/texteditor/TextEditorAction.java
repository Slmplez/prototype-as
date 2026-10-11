/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorExtension;
import org.eclipse.ui.texteditor.ITextEditorExtension2;
import org.eclipse.ui.texteditor.IUpdate;
import org.eclipse.ui.texteditor.ResourceAction;

public abstract class TextEditorAction
extends ResourceAction
implements IUpdate {
    private ITextEditor fTextEditor;

    protected TextEditorAction(ResourceBundle bundle, String prefix, ITextEditor editor) {
        super(bundle, prefix);
        this.setEditor(editor);
        this.update();
    }

    protected TextEditorAction(ResourceBundle bundle, String prefix, ITextEditor editor, int style) {
        super(bundle, prefix, style);
        this.setEditor(editor);
        this.update();
    }

    protected ITextEditor getTextEditor() {
        return this.fTextEditor;
    }

    public void setEditor(ITextEditor editor) {
        this.fTextEditor = editor;
    }

    public void update() {
        this.setEnabled(this.getTextEditor() != null);
    }

    protected boolean canModifyEditor() {
        ITextEditor editor = this.getTextEditor();
        if (editor instanceof ITextEditorExtension2) {
            return ((ITextEditorExtension2)((Object)editor)).isEditorInputModifiable();
        }
        if (editor instanceof ITextEditorExtension) {
            return !((ITextEditorExtension)((Object)editor)).isEditorInputReadOnly();
        }
        if (editor != null) {
            return editor.isEditable();
        }
        return false;
    }

    protected boolean validateEditorInputState() {
        ITextEditor editor = this.getTextEditor();
        if (editor instanceof ITextEditorExtension2) {
            return ((ITextEditorExtension2)((Object)editor)).validateEditorInputState();
        }
        if (editor instanceof ITextEditorExtension) {
            return !((ITextEditorExtension)((Object)editor)).isEditorInputReadOnly();
        }
        if (editor != null) {
            return editor.isEditable();
        }
        return false;
    }
}

