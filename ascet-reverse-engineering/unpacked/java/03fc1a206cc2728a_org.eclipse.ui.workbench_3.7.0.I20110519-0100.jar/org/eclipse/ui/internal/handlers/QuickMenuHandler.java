/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuListener2
 *  org.eclipse.jface.action.IMenuManager
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuListener2;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.QuickMenuCreator;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.progress.UIJob;

public class QuickMenuHandler
extends AbstractHandler
implements IMenuListener2 {
    private QuickMenuCreator creator = new QuickMenuCreator(){

        protected void fillMenu(IMenuManager menu) {
            if (!(menu instanceof ContributionManager)) {
                return;
            }
            IWorkbench iWorkbench = PlatformUI.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IMenuService service = (IMenuService)iWorkbench.getService(clazz);
            service.populateContributionManager((ContributionManager)menu, QuickMenuHandler.this.locationURI);
            menu.addMenuListener((IMenuListener)QuickMenuHandler.this);
        }
    };
    private String locationURI;
    static /* synthetic */ Class class$0;

    public Object execute(ExecutionEvent event) throws ExecutionException {
        this.locationURI = event.getParameter("org.eclipse.ui.window.quickMenu.uri");
        if (this.locationURI == null) {
            throw new ExecutionException("locatorURI must not be null");
        }
        this.creator.createMenu();
        return null;
    }

    public void dispose() {
        if (this.creator != null) {
            this.creator.dispose();
            this.creator = null;
        }
    }

    public void menuAboutToHide(final IMenuManager managerM) {
        new UIJob("quickMenuCleanup"){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                IWorkbench iWorkbench = PlatformUI.getWorkbench();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IMenuService service = (IMenuService)iWorkbench.getService(clazz);
                service.releaseContributions((ContributionManager)managerM);
                return Status.OK_STATUS;
            }
        }.schedule();
    }

    public void menuAboutToShow(IMenuManager manager) {
    }
}

