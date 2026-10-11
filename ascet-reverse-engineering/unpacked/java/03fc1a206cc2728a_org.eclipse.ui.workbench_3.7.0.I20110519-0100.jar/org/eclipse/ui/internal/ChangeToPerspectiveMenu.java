/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.internal;

import java.util.HashMap;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.PerspectiveMenu;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.statushandlers.StatusManager;

public class ChangeToPerspectiveMenu
extends PerspectiveMenu {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public ChangeToPerspectiveMenu(IWorkbenchWindow window, String id) {
        super(window, id);
        if (window instanceof WorkbenchWindow) {
            ((WorkbenchWindow)window).addSubmenu(2);
        }
        this.showActive(true);
    }

    protected void run(IPerspectiveDescriptor desc) {
        IPreferenceStore store = PrefUtil.getInternalPreferenceStore();
        int mode = store.getInt("OPEN_PERSPECTIVE_MODE");
        IWorkbenchPage page = this.getWindow().getActivePage();
        IPerspectiveDescriptor persp = null;
        if (page != null) {
            persp = page.getPerspective();
        }
        IWorkbenchWindow iWorkbenchWindow = this.getWindow();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService handlerService = (IHandlerService)iWorkbenchWindow.getService(clazz);
        IWorkbenchWindow iWorkbenchWindow2 = this.getWindow();
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)iWorkbenchWindow2.getService(clazz2);
        Command command = commandService.getCommand("org.eclipse.ui.perspectives.showPerspective");
        HashMap<String, String> parameters = new HashMap<String, String>();
        parameters.put("org.eclipse.ui.perspectives.showPerspective.perspectiveId", desc.getId());
        if (2 == mode && persp != null) {
            parameters.put("org.eclipse.ui.perspectives.showPerspective.newWindow", "true");
        }
        ParameterizedCommand pCommand = ParameterizedCommand.generateCommand((Command)command, parameters);
        try {
            handlerService.executeCommand(pCommand, null);
        }
        catch (ExecutionException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Failed to execute org.eclipse.ui.perspectives.showPerspective", (Throwable)e));
        }
        catch (NotDefinedException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Failed to execute org.eclipse.ui.perspectives.showPerspective", (Throwable)e));
        }
        catch (NotEnabledException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Failed to execute org.eclipse.ui.perspectives.showPerspective", (Throwable)e));
        }
        catch (NotHandledException e) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Failed to execute org.eclipse.ui.perspectives.showPerspective", (Throwable)e));
        }
    }
}

