/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.swt.SWTError
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.views.properties.PropertiesMessages;
import org.eclipse.ui.views.properties.IPropertySheetEntry;
import org.eclipse.ui.views.properties.PropertySheetAction;
import org.eclipse.ui.views.properties.PropertySheetViewer;

class CopyPropertyAction
extends PropertySheetAction {
    private Clipboard clipboard;

    public CopyPropertyAction(PropertySheetViewer viewer, String name, Clipboard clipboard) {
        super(viewer, name);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.properties_copy_action_context");
        this.clipboard = clipboard;
    }

    public void run() {
        IStructuredSelection selection = (IStructuredSelection)this.getPropertySheet().getSelection();
        if (selection.isEmpty()) {
            return;
        }
        IPropertySheetEntry entry = (IPropertySheetEntry)selection.getFirstElement();
        StringBuffer buffer = new StringBuffer();
        buffer.append(entry.getDisplayName());
        buffer.append("\t");
        buffer.append(entry.getValueAsString());
        this.setClipboard(buffer.toString());
    }

    public void selectionChanged(IStructuredSelection sel) {
        this.setEnabled(!sel.isEmpty());
    }

    private void setClipboard(String text) {
        block3: {
            try {
                Object[] data = new Object[]{text};
                Transfer[] transferTypes = new Transfer[]{TextTransfer.getInstance()};
                this.clipboard.setContents(data, transferTypes);
            }
            catch (SWTError e) {
                if (e.code != 2002) {
                    throw e;
                }
                if (!MessageDialog.openQuestion((Shell)this.getPropertySheet().getControl().getShell(), (String)PropertiesMessages.CopyToClipboardProblemDialog_title, (String)PropertiesMessages.CopyToClipboardProblemDialog_message)) break block3;
                this.setClipboard(text);
            }
        }
    }
}

