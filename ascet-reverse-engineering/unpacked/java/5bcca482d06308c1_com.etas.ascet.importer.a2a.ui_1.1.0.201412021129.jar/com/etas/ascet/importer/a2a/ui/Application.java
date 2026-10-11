/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.application.WorkbenchAdvisor
 */
package com.etas.ascet.importer.a2a.ui;

import com.etas.ascet.importer.a2a.ui.ApplicationWorkbenchAdvisor;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.application.WorkbenchAdvisor;

public class Application
implements IApplication {
    public Object start(IApplicationContext context) {
        Display display = PlatformUI.createDisplay();
        try {
            int returnCode = PlatformUI.createAndRunWorkbench((Display)display, (WorkbenchAdvisor)new ApplicationWorkbenchAdvisor());
            if (returnCode == 1) {
                Integer n = IApplication.EXIT_RESTART;
                return n;
            }
            Integer n = IApplication.EXIT_OK;
            return n;
        }
        finally {
            display.dispose();
        }
    }

    public void stop() {
        if (!PlatformUI.isWorkbenchRunning()) {
            return;
        }
        final IWorkbench workbench = PlatformUI.getWorkbench();
        final Display display = workbench.getDisplay();
        display.syncExec(new Runnable(){

            @Override
            public void run() {
                if (!display.isDisposed()) {
                    workbench.close();
                }
            }
        });
    }
}

