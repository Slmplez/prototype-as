/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.about.AboutBundleGroupData;
import org.eclipse.ui.internal.about.AboutFeaturesPage;
import org.eclipse.ui.internal.about.ProductInfoDialog;

public class AboutFeaturesDialog
extends ProductInfoDialog {
    public AboutFeaturesDialog(Shell parentShell, String productName, AboutBundleGroupData[] bundleGroupInfos, AboutBundleGroupData initialSelection) {
        super(parentShell);
        AboutFeaturesPage page = new AboutFeaturesPage();
        page.setProductName(productName);
        page.setBundleGroupInfos(bundleGroupInfos);
        page.setInitialSelection(initialSelection);
        String title = productName != null ? NLS.bind((String)WorkbenchMessages.AboutFeaturesDialog_shellTitle, (Object)productName) : WorkbenchMessages.AboutFeaturesDialog_SimpleTitle;
        this.initializeDialog(page, title, "org.eclipse.ui.about_features_dialog_context");
    }
}

