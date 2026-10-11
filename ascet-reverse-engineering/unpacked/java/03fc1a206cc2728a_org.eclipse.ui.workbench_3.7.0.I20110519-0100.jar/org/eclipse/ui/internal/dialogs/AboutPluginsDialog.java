/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Shell
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.about.AboutPluginsPage;
import org.eclipse.ui.internal.about.ProductInfoDialog;
import org.osgi.framework.Bundle;

public class AboutPluginsDialog
extends ProductInfoDialog {
    public AboutPluginsDialog(Shell parentShell, String productName, Bundle[] bundles, String title, String message, String helpContextId) {
        super(parentShell);
        AboutPluginsPage page = new AboutPluginsPage();
        page.setHelpContextId(helpContextId);
        page.setBundles(bundles);
        page.setMessage(message);
        if (title == null && page.getProductName() != null) {
            title = NLS.bind((String)WorkbenchMessages.AboutPluginsDialog_shellTitle, (Object)productName);
        }
        this.initializeDialog(page, title, helpContextId);
    }
}

