/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.application;

import org.eclipse.ui.application.ActionBarAdvisor;
import org.eclipse.ui.application.IActionBarConfigurer;
import org.eclipse.ui.application.WorkbenchAdvisor;

public class CompatibilityActionBarAdvisor
extends ActionBarAdvisor {
    private WorkbenchAdvisor wbAdvisor;

    public CompatibilityActionBarAdvisor(WorkbenchAdvisor wbAdvisor, IActionBarConfigurer configurer) {
        super(configurer);
        this.wbAdvisor = wbAdvisor;
    }

    public void fillActionBars(int flags) {
        IActionBarConfigurer abc = this.getActionBarConfigurer();
        this.wbAdvisor.fillActionBars(abc.getWindowConfigurer().getWindow(), abc, flags);
    }

    public boolean isApplicationMenu(String menuId) {
        IActionBarConfigurer abc = this.getActionBarConfigurer();
        return this.wbAdvisor.isApplicationMenu(abc.getWindowConfigurer(), menuId);
    }
}

