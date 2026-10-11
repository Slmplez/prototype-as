/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceManager
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IDecoratorManager;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.ILocalWorkingSetManager;
import org.eclipse.ui.IPerspectiveRegistry;
import org.eclipse.ui.ISaveableFilter;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.IWindowListener;
import org.eclipse.ui.IWorkbenchListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.activities.IWorkbenchActivitySupport;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;
import org.eclipse.ui.commands.IWorkbenchCommandSupport;
import org.eclipse.ui.contexts.IWorkbenchContextSupport;
import org.eclipse.ui.help.IWorkbenchHelpSystem;
import org.eclipse.ui.intro.IIntroManager;
import org.eclipse.ui.operations.IWorkbenchOperationSupport;
import org.eclipse.ui.progress.IProgressService;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.themes.IThemeManager;
import org.eclipse.ui.views.IViewRegistry;
import org.eclipse.ui.wizards.IWizardRegistry;

public interface IWorkbench
extends IAdaptable,
IServiceLocator {
    public Display getDisplay();

    public IProgressService getProgressService();

    public void addWorkbenchListener(IWorkbenchListener var1);

    public void removeWorkbenchListener(IWorkbenchListener var1);

    public void addWindowListener(IWindowListener var1);

    public void removeWindowListener(IWindowListener var1);

    public boolean close();

    public IWorkbenchWindow getActiveWorkbenchWindow();

    public IEditorRegistry getEditorRegistry();

    public IWorkbenchOperationSupport getOperationSupport();

    public IPerspectiveRegistry getPerspectiveRegistry();

    public PreferenceManager getPreferenceManager();

    public IPreferenceStore getPreferenceStore();

    public ISharedImages getSharedImages();

    public int getWorkbenchWindowCount();

    public IWorkbenchWindow[] getWorkbenchWindows();

    public IWorkingSetManager getWorkingSetManager();

    public ILocalWorkingSetManager createLocalWorkingSetManager();

    public IWorkbenchWindow openWorkbenchWindow(String var1, IAdaptable var2) throws WorkbenchException;

    public IWorkbenchWindow openWorkbenchWindow(IAdaptable var1) throws WorkbenchException;

    public boolean restart();

    public IWorkbenchPage showPerspective(String var1, IWorkbenchWindow var2) throws WorkbenchException;

    public IWorkbenchPage showPerspective(String var1, IWorkbenchWindow var2, IAdaptable var3) throws WorkbenchException;

    public IDecoratorManager getDecoratorManager();

    public boolean saveAllEditors(boolean var1);

    public IElementFactory getElementFactory(String var1);

    public IWorkbenchActivitySupport getActivitySupport();

    public IWorkbenchCommandSupport getCommandSupport();

    public IWorkbenchContextSupport getContextSupport();

    public IThemeManager getThemeManager();

    public IIntroManager getIntroManager();

    public IWorkbenchHelpSystem getHelpSystem();

    public IWorkbenchBrowserSupport getBrowserSupport();

    public boolean isStarting();

    public boolean isClosing();

    public IExtensionTracker getExtensionTracker();

    public IViewRegistry getViewRegistry();

    public IWizardRegistry getNewWizardRegistry();

    public IWizardRegistry getImportWizardRegistry();

    public IWizardRegistry getExportWizardRegistry();

    public boolean saveAll(IShellProvider var1, IRunnableContext var2, ISaveableFilter var3, boolean var4);

    public IShellProvider getModalDialogShellProvider();
}

