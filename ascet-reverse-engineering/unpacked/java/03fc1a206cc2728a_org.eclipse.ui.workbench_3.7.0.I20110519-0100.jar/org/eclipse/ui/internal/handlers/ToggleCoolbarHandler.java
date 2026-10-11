/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 */
package org.eclipse.ui.internal.handlers;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.commands.IElementUpdater;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.menus.UIElement;
import org.eclipse.ui.services.IServiceLocator;

public class ToggleCoolbarHandler
extends AbstractHandler
implements IElementUpdater {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Object execute(ExecutionEvent event) throws ExecutionException {
        IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        if (activeWorkbenchWindow instanceof WorkbenchWindow) {
            WorkbenchWindow window = (WorkbenchWindow)activeWorkbenchWindow;
            window.toggleToolbarVisibility();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ICommandService commandService = (ICommandService)activeWorkbenchWindow.getService(clazz);
            HashMap<String, WorkbenchWindow> filter = new HashMap<String, WorkbenchWindow>();
            filter.put("org.eclipse.ui.IWorkbenchWindow", window);
            commandService.refreshElements(event.getCommand().getId(), filter);
        }
        return null;
    }

    public void updateElement(UIElement element, Map parameters) {
        IWorkbenchLocationService wls;
        IWorkbenchWindow window;
        IServiceLocator iServiceLocator = element.getServiceLocator();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((window = (wls = (IWorkbenchLocationService)iServiceLocator.getService(clazz)).getWorkbenchWindow()) == null || !(window instanceof WorkbenchWindow)) {
            return;
        }
        element.setText(this.isCoolbarVisible((WorkbenchWindow)window) ? WorkbenchMessages.ToggleCoolbarVisibilityAction_hide_text : WorkbenchMessages.ToggleCoolbarVisibilityAction_show_text);
    }

    private boolean isCoolbarVisible(WorkbenchWindow window) {
        return window.getCoolBarVisible() || window.getPerspectiveBarVisible();
    }
}

