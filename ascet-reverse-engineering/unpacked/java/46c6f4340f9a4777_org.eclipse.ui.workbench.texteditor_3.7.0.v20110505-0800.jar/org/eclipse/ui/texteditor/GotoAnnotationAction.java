/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorExtension4;
import org.eclipse.ui.texteditor.TextEditorAction;

public class GotoAnnotationAction
extends TextEditorAction {
    private boolean fForward;

    public GotoAnnotationAction(ResourceBundle bundle, String prefix, ITextEditor editor, boolean forward) {
        super(bundle, prefix, editor);
        this.fForward = forward;
        this.setHelpContextId(this.fForward ? "org.eclipse.ui.goto_next_annotation_action_context" : "org.eclipse.ui.goto_previous_annotation_action_context");
    }

    public GotoAnnotationAction(ITextEditor editor, boolean forward) {
        this(EditorMessages.getBundleForConstructedKeys(), forward ? "Editor.GotoNextAnnotation." : "Editor.GotoPreviousAnnotation.", editor, forward);
    }

    public void run() {
        ITextEditor editor = this.getTextEditor();
        if (editor instanceof ITextEditorExtension4) {
            ((ITextEditorExtension4)((Object)editor)).gotoAnnotation(this.fForward);
        }
    }

    public void setEditor(ITextEditor editor) {
        super.setEditor(editor);
        this.update();
    }

    public void update() {
        ITextEditor editor = this.getTextEditor();
        if (!(editor instanceof AbstractTextEditor)) {
            this.setEnabled(false);
            return;
        }
        IAnnotationModel model = editor.getDocumentProvider().getAnnotationModel(editor.getEditorInput());
        this.setEnabled(model != null);
    }
}

