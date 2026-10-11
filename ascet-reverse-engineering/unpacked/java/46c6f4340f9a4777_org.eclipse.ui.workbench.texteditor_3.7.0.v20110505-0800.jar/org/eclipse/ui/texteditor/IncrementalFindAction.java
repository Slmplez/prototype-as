/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IFindReplaceTarget
 *  org.eclipse.jface.text.IFindReplaceTargetExtension
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchWindow
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.jface.text.IFindReplaceTargetExtension;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.texteditor.IUpdate;
import org.eclipse.ui.texteditor.IncrementalFindTarget;
import org.eclipse.ui.texteditor.ResourceAction;

public class IncrementalFindAction
extends ResourceAction
implements IUpdate {
    private IFindReplaceTarget fTarget;
    private IWorkbenchPart fWorkbenchPart;
    private IWorkbenchWindow fWorkbenchWindow;
    private boolean fForward;
    static /* synthetic */ Class class$0;

    public IncrementalFindAction(ResourceBundle bundle, String prefix, IWorkbenchPart workbenchPart, boolean forward) {
        super(bundle, prefix);
        this.fWorkbenchPart = workbenchPart;
        this.fForward = forward;
        this.update();
    }

    public IncrementalFindAction(ResourceBundle bundle, String prefix, IWorkbenchWindow workbenchWindow, boolean forward) {
        super(bundle, prefix);
        this.fWorkbenchWindow = workbenchWindow;
        this.fForward = forward;
        this.update();
    }

    public void run() {
        if (this.fTarget == null) {
            return;
        }
        if (this.fTarget instanceof IncrementalFindTarget) {
            ((IncrementalFindTarget)this.fTarget).setDirection(this.fForward);
        }
        if (this.fTarget instanceof IFindReplaceTargetExtension) {
            ((IFindReplaceTargetExtension)this.fTarget).beginSession();
        }
    }

    public void update() {
        if (this.fWorkbenchPart == null && this.fWorkbenchWindow != null) {
            this.fWorkbenchPart = this.fWorkbenchWindow.getPartService().getActivePart();
        }
        if (this.fWorkbenchPart != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.texteditor.IncrementalFindTarget");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.fTarget = (IFindReplaceTarget)this.fWorkbenchPart.getAdapter((Class)clazz);
        } else {
            this.fTarget = null;
        }
        this.setEnabled(this.fTarget != null && this.fTarget.canPerformFind());
    }
}

