/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.application.IWorkbenchConfigurer
 *  org.eclipse.ui.application.IWorkbenchWindowConfigurer
 *  org.eclipse.ui.application.WorkbenchAdvisor
 *  org.eclipse.ui.application.WorkbenchWindowAdvisor
 */
package com.etas.ascet.importer.a2a.ui;

import com.etas.ascet.importer.a2a.ui.ApplicationWorkbenchWindowAdvisor;
import org.eclipse.ui.application.IWorkbenchConfigurer;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;
import org.eclipse.ui.application.WorkbenchAdvisor;
import org.eclipse.ui.application.WorkbenchWindowAdvisor;

public class ApplicationWorkbenchAdvisor
extends WorkbenchAdvisor {
    public WorkbenchWindowAdvisor createWorkbenchWindowAdvisor(IWorkbenchWindowConfigurer configurer) {
        return new ApplicationWorkbenchWindowAdvisor(configurer);
    }

    public String getInitialWindowPerspectiveId() {
        return "com.etas.ascet.importer.a2a.ui.perspective";
    }

    public void initialize(IWorkbenchConfigurer configurer) {
        configurer.setSaveAndRestore(true);
    }
}

