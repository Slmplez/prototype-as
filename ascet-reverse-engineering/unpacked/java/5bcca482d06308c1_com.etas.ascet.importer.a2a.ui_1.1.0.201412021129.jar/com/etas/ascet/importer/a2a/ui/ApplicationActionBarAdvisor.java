/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.actions.ActionFactory
 *  org.eclipse.ui.actions.ActionFactory$IWorkbenchAction
 *  org.eclipse.ui.application.ActionBarAdvisor
 *  org.eclipse.ui.application.IActionBarConfigurer
 */
package com.etas.ascet.importer.a2a.ui;

import com.etas.ascet.importer.a2a.ui.actions.AddFileAction;
import com.etas.ascet.importer.a2a.ui.actions.OpenHelpAction;
import com.etas.ascet.importer.a2a.ui.actions.RunConverterAction;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.application.ActionBarAdvisor;
import org.eclipse.ui.application.IActionBarConfigurer;

public class ApplicationActionBarAdvisor
extends ActionBarAdvisor {
    private ActionFactory.IWorkbenchAction exitAction;
    private ActionFactory.IWorkbenchAction aboutAction;
    private ActionFactory.IWorkbenchAction removeAct;
    private ActionFactory.IWorkbenchAction preferencesAction;
    private Action runAction;
    private Action addAct;
    private Action helpAction;

    public ApplicationActionBarAdvisor(IActionBarConfigurer configurer) {
        super(configurer);
    }

    protected void makeActions(IWorkbenchWindow window) {
        this.exitAction = ActionFactory.QUIT.create(window);
        this.register((IAction)this.exitAction);
        this.aboutAction = ActionFactory.ABOUT.create(window);
        this.register((IAction)this.aboutAction);
        this.helpAction = new OpenHelpAction("User Manual");
        this.register((IAction)this.helpAction);
        this.removeAct = ActionFactory.DELETE.create(window);
        this.removeAct.setText("Remove ARXML File");
        this.register((IAction)this.removeAct);
        this.addAct = new AddFileAction(window, "Add ARXML File");
        this.register((IAction)this.addAct);
        this.runAction = new RunConverterAction("Start Conversion");
        this.register((IAction)this.runAction);
        this.preferencesAction = ActionFactory.PREFERENCES.create(window);
        this.register((IAction)this.preferencesAction);
    }

    protected void fillMenuBar(IMenuManager menuBar) {
        MenuManager fileMenu = new MenuManager("&File", "file");
        MenuManager windowMenu = new MenuManager("&Window", "window");
        MenuManager helpMenu = new MenuManager("&Help", "help");
        menuBar.add((IContributionItem)fileMenu);
        menuBar.add((IContributionItem)new GroupMarker("additions"));
        menuBar.add((IContributionItem)windowMenu);
        menuBar.add((IContributionItem)helpMenu);
        fileMenu.add((IAction)this.addAct);
        fileMenu.add((IAction)this.removeAct);
        fileMenu.add((IAction)this.runAction);
        fileMenu.add((IContributionItem)new Separator());
        fileMenu.add((IAction)this.exitAction);
        windowMenu.add((IAction)this.preferencesAction);
        helpMenu.add((IAction)this.aboutAction);
        helpMenu.add((IAction)this.helpAction);
    }

    protected void fillStatusLine(IStatusLineManager statusLine) {
        super.fillStatusLine(statusLine);
        statusLine.setMessage("test");
    }

    protected void fillCoolBar(ICoolBarManager coolBar) {
    }
}

