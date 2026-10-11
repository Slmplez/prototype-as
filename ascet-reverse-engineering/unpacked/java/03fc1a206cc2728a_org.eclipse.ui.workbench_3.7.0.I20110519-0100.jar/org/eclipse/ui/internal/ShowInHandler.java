/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.internal;

import java.util.Map;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.commands.IElementUpdater;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.services.WorkbenchSourceProvider;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.UIElement;
import org.eclipse.ui.part.IShowInTarget;
import org.eclipse.ui.part.ShowInContext;
import org.eclipse.ui.services.ISourceProviderService;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class ShowInHandler
extends AbstractHandler
implements IElementUpdater {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Object execute(ExecutionEvent event) throws ExecutionException {
        ShowInContext context;
        ISourceProvider sp;
        ISourceProviderService sps;
        String targetId = event.getParameter("org.eclipse.ui.navigate.showIn.targetId");
        if (targetId == null) {
            throw new ExecutionException("No targetId specified");
        }
        IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.services.ISourceProviderService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((sps = (ISourceProviderService)activeWorkbenchWindow.getService(clazz)) != null && (sp = sps.getSourceProvider("showInSelection")) instanceof WorkbenchSourceProvider) {
            ((WorkbenchSourceProvider)sp).checkActivePart(true);
        }
        if ((context = this.getContext(HandlerUtil.getShowInSelection(event), HandlerUtil.getShowInInput(event))) == null) {
            return null;
        }
        IWorkbenchPage page = activeWorkbenchWindow.getActivePage();
        try {
            IViewPart view = page.showView(targetId);
            IShowInTarget target = this.getShowInTarget(view);
            if (target == null || !target.show(context)) {
                page.getWorkbenchWindow().getShell().getDisplay().beep();
            }
            ((WorkbenchPage)page).performedShowIn(targetId);
        }
        catch (PartInitException e) {
            throw new ExecutionException("Failed to show in", (Throwable)((Object)e));
        }
        return null;
    }

    private ShowInContext getContext(ISelection showInSelection, Object input) {
        if (input == null && showInSelection == null) {
            return null;
        }
        return new ShowInContext(input, showInSelection);
    }

    private IShowInTarget getShowInTarget(IWorkbenchPart targetPart) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.part.IShowInTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IShowInTarget)Util.getAdapter(targetPart, clazz);
    }

    public void updateElement(UIElement element, Map parameters) {
        String targetId = (String)parameters.get("org.eclipse.ui.navigate.showIn.targetId");
        if (targetId == null || targetId.length() == 0) {
            return;
        }
        IViewRegistry reg = WorkbenchPlugin.getDefault().getViewRegistry();
        IViewDescriptor desc = reg.find(targetId);
        if (desc != null) {
            element.setIcon(desc.getImageDescriptor());
            element.setText(desc.getLabel());
        }
    }
}

