/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.ITextOperationTarget
 *  org.eclipse.jface.text.ITextOperationTargetExtension
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IWorkbenchPartSite
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.ITextOperationTarget;
import org.eclipse.jface.text.ITextOperationTargetExtension;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public final class ContentAssistAction
extends TextEditorAction {
    private ITextOperationTarget fOperationTarget;
    static /* synthetic */ Class class$0;

    public ContentAssistAction(ResourceBundle bundle, String prefix, ITextEditor editor) {
        super(bundle, prefix, editor);
    }

    public void run() {
        ITextEditor editor;
        if (this.fOperationTarget != null && (editor = this.getTextEditor()) != null && this.validateEditorInputState()) {
            Display display = null;
            IWorkbenchPartSite site = editor.getSite();
            Shell shell = site.getShell();
            if (shell != null && !shell.isDisposed()) {
                display = shell.getDisplay();
            }
            BusyIndicator.showWhile((Display)display, (Runnable)new Runnable(){

                public void run() {
                    ContentAssistAction.this.fOperationTarget.doOperation(13);
                }
            });
        }
    }

    public void update() {
        ITextEditor editor = this.getTextEditor();
        if (this.fOperationTarget == null && editor != null) {
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
        if (this.fOperationTarget == null) {
            this.setEnabled(false);
            return;
        }
        if (this.fOperationTarget instanceof ITextOperationTargetExtension) {
            ITextOperationTargetExtension targetExtension = (ITextOperationTargetExtension)this.fOperationTarget;
            targetExtension.enableOperation(13, this.canModifyEditor());
        }
        this.setEnabled(this.fOperationTarget.canDoOperation(13));
    }

    public void setEditor(ITextEditor editor) {
        super.setEditor(editor);
        this.fOperationTarget = null;
    }
}

