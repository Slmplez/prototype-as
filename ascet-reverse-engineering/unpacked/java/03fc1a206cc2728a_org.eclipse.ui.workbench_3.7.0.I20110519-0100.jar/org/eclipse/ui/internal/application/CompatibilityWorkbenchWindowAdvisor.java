/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.application;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.application.ActionBarAdvisor;
import org.eclipse.ui.application.IActionBarConfigurer;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;
import org.eclipse.ui.application.WorkbenchAdvisor;
import org.eclipse.ui.application.WorkbenchWindowAdvisor;
import org.eclipse.ui.internal.application.CompatibilityActionBarAdvisor;

public class CompatibilityWorkbenchWindowAdvisor
extends WorkbenchWindowAdvisor {
    private WorkbenchAdvisor wbAdvisor;

    public CompatibilityWorkbenchWindowAdvisor(WorkbenchAdvisor wbAdvisor, IWorkbenchWindowConfigurer windowConfigurer) {
        super(windowConfigurer);
        this.wbAdvisor = wbAdvisor;
    }

    public void preWindowOpen() {
        this.wbAdvisor.preWindowOpen(this.getWindowConfigurer());
    }

    public ActionBarAdvisor createActionBarAdvisor(IActionBarConfigurer configurer) {
        return new CompatibilityActionBarAdvisor(this.wbAdvisor, configurer);
    }

    public void postWindowRestore() throws WorkbenchException {
        this.wbAdvisor.postWindowRestore(this.getWindowConfigurer());
    }

    public void openIntro() {
        this.wbAdvisor.openIntro(this.getWindowConfigurer());
    }

    public void postWindowCreate() {
        this.wbAdvisor.postWindowCreate(this.getWindowConfigurer());
    }

    public void postWindowOpen() {
        this.wbAdvisor.postWindowOpen(this.getWindowConfigurer());
    }

    public boolean preWindowShellClose() {
        return this.wbAdvisor.preWindowShellClose(this.getWindowConfigurer());
    }

    public void postWindowClose() {
        this.wbAdvisor.postWindowClose(this.getWindowConfigurer());
    }

    public boolean isApplicationMenu(String menuId) {
        return this.wbAdvisor.isApplicationMenu(this.getWindowConfigurer(), menuId);
    }

    public IAdaptable getDefaultPageInput() {
        return this.wbAdvisor.getDefaultPageInput();
    }

    public void createWindowContents(Shell shell) {
        this.wbAdvisor.createWindowContents(this.getWindowConfigurer(), shell);
    }
}

