/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.Action
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.about;

import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.Action;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.AboutDialog;

public class AboutAction
extends Action
implements ActionFactory.IWorkbenchAction {
    private IWorkbenchWindow workbenchWindow;

    public AboutAction(IWorkbenchWindow window) {
        if (window == null) {
            throw new IllegalArgumentException();
        }
        this.workbenchWindow = window;
        IProduct product = Platform.getProduct();
        String productName = null;
        if (product != null) {
            productName = product.getName();
        }
        if (productName == null) {
            productName = "";
        }
        this.setText(NLS.bind((String)WorkbenchMessages.AboutAction_text, (Object)productName));
        this.setToolTipText(NLS.bind((String)WorkbenchMessages.AboutAction_toolTip, (Object)productName));
        this.setId("about");
        this.setActionDefinitionId("org.eclipse.ui.help.aboutAction");
        window.getWorkbench().getHelpSystem().setHelp(this, "org.eclipse.ui.about_action_context");
    }

    public void run() {
        if (this.workbenchWindow != null) {
            new AboutDialog(this.workbenchWindow.getShell()).open();
        }
    }

    public void dispose() {
        this.workbenchWindow = null;
    }
}

