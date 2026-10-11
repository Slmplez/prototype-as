/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.quickaccess.CommandElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

public class CommandProvider
extends QuickAccessProvider {
    private Map idToElement;
    private IEvaluationContext contextSnapshot;
    private IHandlerService handlerService;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public CommandProvider() {
        this.saveApplicationContext();
        this.getElements();
    }

    public String getId() {
        return "org.eclipse.ui.commands";
    }

    public QuickAccessElement getElementForId(String id) {
        this.getElements();
        return (CommandElement)this.idToElement.get(id);
    }

    public QuickAccessElement[] getElements() {
        if (this.idToElement == null) {
            this.idToElement = new HashMap();
            IWorkbench iWorkbench = PlatformUI.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ICommandService commandService = (ICommandService)iWorkbench.getService(clazz);
            Collection commandIds = commandService.getDefinedCommandIds();
            Iterator commandIdItr = commandIds.iterator();
            while (commandIdItr.hasNext()) {
                String currentCommandId = (String)commandIdItr.next();
                Command command = commandService.getCommand(currentCommandId);
                if (command == null || !command.isHandled() || !command.isEnabled()) continue;
                try {
                    Collection combinations = ParameterizedCommand.generateCombinations((Command)command);
                    Iterator it = combinations.iterator();
                    while (it.hasNext()) {
                        ParameterizedCommand pc = (ParameterizedCommand)it.next();
                        String id = pc.serialize();
                        this.idToElement.put(id, new CommandElement(pc, id, this));
                    }
                }
                catch (NotDefinedException notDefinedException) {}
            }
        }
        return this.idToElement.values().toArray(new QuickAccessElement[this.idToElement.values().size()]);
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_NODE");
    }

    public String getName() {
        return QuickAccessMessages.QuickAccess_Commands;
    }

    private void saveApplicationContext() {
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.handlerService = (IHandlerService)iWorkbench.getService(clazz);
        this.contextSnapshot = this.handlerService.createContextSnapshot(true);
    }

    IHandlerService getHandlerService() {
        return this.handlerService;
    }

    IEvaluationContext getContextSnapshot() {
        return this.contextSnapshot;
    }
}

