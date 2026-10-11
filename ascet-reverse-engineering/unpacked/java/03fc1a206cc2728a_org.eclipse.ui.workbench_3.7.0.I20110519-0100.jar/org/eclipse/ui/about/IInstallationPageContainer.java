/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Button
 */
package org.eclipse.ui.about;

import org.eclipse.swt.widgets.Button;
import org.eclipse.ui.about.InstallationPage;

public interface IInstallationPageContainer {
    public void registerPageButton(InstallationPage var1, Button var2);

    public void closeModalContainers();
}

