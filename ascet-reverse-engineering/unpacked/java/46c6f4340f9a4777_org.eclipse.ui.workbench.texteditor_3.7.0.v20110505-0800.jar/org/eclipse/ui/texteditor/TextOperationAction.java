/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.ITextOperationTarget
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IWorkbenchPartSite
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.ITextOperationTarget;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public final class TextOperationAction
extends TextEditorAction {
    private int fOperationCode = -1;
    private ITextOperationTarget fOperationTarget;
    private boolean fRunsOnReadOnly = false;
    private boolean fAllowUpdate = false;
    static /* synthetic */ Class class$0;

    public TextOperationAction(ResourceBundle bundle, String prefix, ITextEditor editor, int operationCode) {
        super(bundle, prefix, editor);
        this.fOperationCode = operationCode;
        this.fAllowUpdate = true;
        this.update();
    }

    public TextOperationAction(ResourceBundle bundle, String prefix, ITextEditor editor, int operationCode, boolean runsOnReadOnly) {
        super(bundle, prefix, editor);
        this.fOperationCode = operationCode;
        this.fRunsOnReadOnly = runsOnReadOnly;
        this.fAllowUpdate = true;
        this.update();
    }

    public void run() {
        if (this.fOperationCode == -1 || this.fOperationTarget == null) {
            return;
        }
        ITextEditor editor = this.getTextEditor();
        if (editor == null) {
            return;
        }
        if (!this.fRunsOnReadOnly && !this.validateEditorInputState()) {
            return;
        }
        Display display = null;
        IWorkbenchPartSite site = editor.getSite();
        Shell shell = site.getShell();
        if (shell != null && !shell.isDisposed()) {
            display = shell.getDisplay();
        }
        BusyIndicator.showWhile((Display)display, (Runnable)new Runnable(){

            public void run() {
                TextOperationAction.this.fOperationTarget.doOperation(TextOperationAction.this.fOperationCode);
            }
        });
    }

    public void update() {
        if (!this.fAllowUpdate) {
            return;
        }
        super.update();
        if (!this.fRunsOnReadOnly && !this.canModifyEditor()) {
            this.setEnabled(false);
            return;
        }
        ITextEditor editor = this.getTextEditor();
        if (this.fOperationTarget == null && editor != null && this.fOperationCode != -1) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.ITextOperationTarget");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.fOperationTarget = (ITextOperationTarget)editor.getAdapter(clazz);
        }
        boolean isEnabled = this.fOperationTarget != null && this.fOperationTarget.canDoOperation(this.fOperationCode);
        this.setEnabled(isEnabled);
    }

    public void setEditor(ITextEditor editor) {
        super.setEditor(editor);
        this.fOperationTarget = null;
    }
}

