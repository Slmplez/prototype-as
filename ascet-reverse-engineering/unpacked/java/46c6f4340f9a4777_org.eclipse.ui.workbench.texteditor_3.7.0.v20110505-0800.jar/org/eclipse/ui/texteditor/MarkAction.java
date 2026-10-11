/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IMarkRegionTarget
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.IMarkRegionTarget;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class MarkAction
extends TextEditorAction {
    public static final int SET_MARK = 0;
    public static final int CLEAR_MARK = 1;
    public static final int SWAP_MARK = 2;
    private final int fType;
    static /* synthetic */ Class class$0;

    public MarkAction(ResourceBundle bundle, String prefix, ITextEditor editor, int type) {
        super(bundle, prefix, editor);
        this.fType = type;
    }

    public void run() {
        IMarkRegionTarget target;
        ITextEditor editor = this.getTextEditor();
        if (editor == null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.text.IMarkRegionTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((target = (IMarkRegionTarget)editor.getAdapter(clazz)) == null) {
            return;
        }
        switch (this.fType) {
            case 0: {
                target.setMarkAtCursor(true);
                break;
            }
            case 1: {
                target.setMarkAtCursor(false);
                break;
            }
            case 2: {
                target.swapMarkAndCursor();
            }
        }
    }
}

