/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.application.ActionBarAdvisor
 *  org.eclipse.ui.application.IActionBarConfigurer
 *  org.eclipse.ui.application.IWorkbenchWindowConfigurer
 *  org.eclipse.ui.application.WorkbenchWindowAdvisor
 *  org.eclipse.ui.console.IConsole
 *  org.eclipse.ui.console.IConsoleView
 *  org.eclipse.ui.console.MessageConsole
 */
package com.etas.ascet.importer.a2a.ui;

import com.etas.ascet.importer.a2a.ui.ApplicationActionBarAdvisor;
import com.etas.ascet.importer.a2a.ui.ConsoleFactory;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.application.ActionBarAdvisor;
import org.eclipse.ui.application.IActionBarConfigurer;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;
import org.eclipse.ui.application.WorkbenchWindowAdvisor;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.console.MessageConsole;

public class ApplicationWorkbenchWindowAdvisor
extends WorkbenchWindowAdvisor {
    public ApplicationWorkbenchWindowAdvisor(IWorkbenchWindowConfigurer configurer) {
        super(configurer);
    }

    public ActionBarAdvisor createActionBarAdvisor(IActionBarConfigurer configurer) {
        return new ApplicationActionBarAdvisor(configurer);
    }

    public void preWindowOpen() {
        IWorkbenchWindowConfigurer configurer = this.getWindowConfigurer();
        configurer.setInitialSize(new Point(700, 800));
        configurer.setTitle("AUTOSAR to ASCET Transfer");
        configurer.setShowPerspectiveBar(false);
        configurer.setShowMenuBar(true);
        configurer.setShowCoolBar(false);
        configurer.setShowStatusLine(false);
        configurer.setShowProgressIndicator(true);
    }

    public void postWindowOpen() {
        IWorkbenchPage activePage;
        IWorkbenchWindow activeWorkbenchWindow = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (activeWorkbenchWindow != null && (activePage = activeWorkbenchWindow.getActivePage()) != null) {
            try {
                activePage.showView("org.eclipse.ui.console.ConsoleView", null, 2);
                String id = "org.eclipse.ui.console.ConsoleView";
                IConsoleView view = (IConsoleView)activePage.showView(id);
                MessageConsole messageConsole = ConsoleFactory.getConsole();
                view.display((IConsole)messageConsole);
                ConsoleFactory.showConsole();
            }
            catch (PartInitException partInitException) {}
        }
    }
}

