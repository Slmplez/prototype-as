/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.preference.PreferenceManager
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import java.util.Iterator;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.FilteredPreferenceDialog;
import org.eclipse.ui.internal.dialogs.PropertyPageContributorManager;
import org.eclipse.ui.internal.dialogs.PropertyPageManager;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.IWorkbenchAdapter;

public class PropertyDialog
extends FilteredPreferenceDialog {
    private ISelection selection;
    private static String lastPropertyId = null;
    static /* synthetic */ Class class$0;

    public static PropertyDialog createDialogOn(Shell shell, String propertyPageId, Object element) {
        PropertyPageManager pageManager = new PropertyPageManager();
        String title = "";
        if (element == null) {
            return null;
        }
        PropertyPageContributorManager.getManager().contribute(pageManager, element);
        Iterator pages = pageManager.getElements(0).iterator();
        String name = PropertyDialog.getName(element);
        if (!pages.hasNext()) {
            MessageDialog.openInformation((Shell)shell, (String)WorkbenchMessages.PropertyDialog_messageTitle, (String)NLS.bind((String)WorkbenchMessages.PropertyDialog_noPropertyMessage, (Object)name));
            return null;
        }
        title = NLS.bind((String)WorkbenchMessages.PropertyDialog_propertyMessage, (Object)name);
        PropertyDialog propertyDialog = new PropertyDialog(shell, pageManager, (ISelection)new StructuredSelection(element));
        if (propertyPageId != null) {
            propertyDialog.setSelectedNode(propertyPageId);
        }
        propertyDialog.create();
        propertyDialog.getShell().setText(title);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)propertyDialog.getShell(), "org.eclipse.ui.property_dialog_context");
        return propertyDialog;
    }

    private static String getName(Object element) {
        Object[] elements = element instanceof IStructuredSelection ? ((IStructuredSelection)element).toArray() : new Object[]{element};
        StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < elements.length) {
            IWorkbenchAdapter adapter;
            element = elements[i];
            if (i > 2) {
                sb.append(" ...");
                break;
            }
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((adapter = (IWorkbenchAdapter)Util.getAdapter(element, clazz)) != null) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(adapter.getLabel(element));
            }
            ++i;
        }
        return sb.toString();
    }

    public PropertyDialog(Shell parentShell, PreferenceManager mng, ISelection selection) {
        super(parentShell, mng);
        this.setSelection(selection);
    }

    public ISelection getSelection() {
        return this.selection;
    }

    public void setSelection(ISelection newSelection) {
        this.selection = newSelection;
    }

    protected String getSelectedNodePreference() {
        return lastPropertyId;
    }

    protected void setSelectedNodePreference(String pageId) {
        lastPropertyId = pageId;
    }

    protected String getContributionType() {
        return "property";
    }
}

