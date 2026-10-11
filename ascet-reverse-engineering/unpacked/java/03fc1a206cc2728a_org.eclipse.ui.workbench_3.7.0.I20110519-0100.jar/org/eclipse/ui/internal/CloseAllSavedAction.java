/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.PageEventAction;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;

public class CloseAllSavedAction
extends PageEventAction
implements IPropertyListener {
    private List partsWithListeners = new ArrayList(1);

    public CloseAllSavedAction(IWorkbenchWindow window) {
        super(WorkbenchMessages.CloseAllSavedAction_text, window);
        this.setToolTipText(WorkbenchMessages.CloseAllSavedAction_toolTip);
        this.setId("closeAllSaved");
        this.updateState();
        window.getWorkbench().getHelpSystem().setHelp(this, "org.eclipse.ui.close_all_saved_action_context");
        this.setActionDefinitionId("org.eclipse.ui.file.closeAllSaved");
    }

    public void pageActivated(IWorkbenchPage page) {
        super.pageActivated(page);
        this.updateState();
    }

    public void pageClosed(IWorkbenchPage page) {
        super.pageClosed(page);
        this.updateState();
    }

    public void partClosed(IWorkbenchPart part) {
        super.partClosed(part);
        if (part instanceof IEditorPart) {
            part.removePropertyListener(this);
            this.partsWithListeners.remove(part);
            this.updateState();
        }
    }

    public void partOpened(IWorkbenchPart part) {
        super.partOpened(part);
        if (part instanceof IEditorPart) {
            part.addPropertyListener(this);
            this.partsWithListeners.add(part);
            this.updateState();
        }
    }

    public void propertyChanged(Object source, int propID) {
        if (source instanceof IEditorPart && propID == 257) {
            this.updateState();
        }
    }

    public void run() {
        if (this.getWorkbenchWindow() == null) {
            return;
        }
        IWorkbenchPage page = this.getActivePage();
        if (page != null) {
            ((WorkbenchPage)page).closeAllSavedEditors();
        }
    }

    private void updateState() {
        IWorkbenchPage page = this.getActivePage();
        if (page == null) {
            this.setEnabled(false);
            return;
        }
        IEditorReference[] editors = page.getEditorReferences();
        int i = 0;
        while (i < editors.length) {
            if (!editors[i].isDirty()) {
                this.setEnabled(true);
                return;
            }
            ++i;
        }
        this.setEnabled(false);
    }

    public void dispose() {
        super.dispose();
        Iterator it = this.partsWithListeners.iterator();
        while (it.hasNext()) {
            IWorkbenchPart part = (IWorkbenchPart)it.next();
            part.removePropertyListener(this);
        }
        this.partsWithListeners.clear();
    }
}

