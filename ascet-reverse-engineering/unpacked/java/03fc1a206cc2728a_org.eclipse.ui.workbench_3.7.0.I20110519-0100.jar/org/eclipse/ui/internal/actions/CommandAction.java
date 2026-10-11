/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandEvent
 *  org.eclipse.core.commands.ICommandListener
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.action.Action
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.internal.actions;

import java.util.Map;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandEvent;
import org.eclipse.core.commands.ICommandListener;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.action.Action;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.commands.ICommandImageService;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.services.IServiceLocator;

public class CommandAction
extends Action {
    private IHandlerService handlerService = null;
    private ParameterizedCommand parameterizedCommand = null;
    private ICommandListener commandListener;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    protected CommandAction() {
    }

    public CommandAction(IServiceLocator serviceLocator, String commandIdIn) {
        this(serviceLocator, commandIdIn, null);
    }

    public CommandAction(IServiceLocator serviceLocator, String commandIdIn, Map parameterMap) {
        if (commandIdIn == null) {
            throw new NullPointerException("commandIdIn must not be null");
        }
        this.init(serviceLocator, commandIdIn, parameterMap);
    }

    protected ICommandListener getCommandListener() {
        if (this.commandListener == null) {
            this.commandListener = new ICommandListener(){

                public void commandChanged(CommandEvent commandEvent) {
                    if ((commandEvent.isHandledChanged() || commandEvent.isEnabledChanged()) && commandEvent.getCommand().isDefined()) {
                        CommandAction.this.setEnabled(commandEvent.getCommand().isEnabled());
                    }
                }
            };
        }
        return this.commandListener;
    }

    private void createCommand(ICommandService commandService, String commandId, Map parameterMap) {
        Command cmd = commandService.getCommand(commandId);
        if (!cmd.isDefined()) {
            WorkbenchPlugin.log("Command " + commandId + " is undefined");
            return;
        }
        if (parameterMap == null) {
            this.parameterizedCommand = new ParameterizedCommand(cmd, null);
            return;
        }
        this.parameterizedCommand = ParameterizedCommand.generateCommand((Command)cmd, (Map)parameterMap);
    }

    public void dispose() {
        this.handlerService = null;
        if (this.commandListener != null) {
            this.parameterizedCommand.getCommand().removeCommandListener(this.commandListener);
            this.commandListener = null;
        }
        this.parameterizedCommand = null;
    }

    public void runWithEvent(Event event) {
        if (this.handlerService == null) {
            String commandId = this.parameterizedCommand == null ? "unknownCommand" : this.parameterizedCommand.getId();
            WorkbenchPlugin.log("Cannot run " + commandId + " before command action has been initialized");
            return;
        }
        try {
            if (this.parameterizedCommand != null) {
                this.handlerService.executeCommand(this.parameterizedCommand, event);
            }
        }
        catch (Exception e) {
            WorkbenchPlugin.log(e);
        }
    }

    public void run() {
        this.runWithEvent(null);
    }

    protected void init(IServiceLocator serviceLocator, String commandIdIn, Map parameterMap) {
        if (this.handlerService != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.handlerService = (IHandlerService)serviceLocator.getService(clazz);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)serviceLocator.getService(clazz2);
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandImageService commandImageService = (ICommandImageService)serviceLocator.getService(clazz3);
        this.createCommand(commandService, commandIdIn, parameterMap);
        if (this.parameterizedCommand != null) {
            this.setId(this.parameterizedCommand.getId());
            this.setActionDefinitionId(this.parameterizedCommand.getId());
            try {
                this.setText(this.parameterizedCommand.getName());
            }
            catch (NotDefinedException notDefinedException) {}
            this.parameterizedCommand.getCommand().addCommandListener(this.getCommandListener());
            this.parameterizedCommand.getCommand().setEnabled((Object)this.handlerService.getCurrentState());
            this.setEnabled(this.parameterizedCommand.getCommand().isEnabled());
            this.setImageDescriptor(commandImageService.getImageDescriptor(commandIdIn, 0));
            this.setDisabledImageDescriptor(commandImageService.getImageDescriptor(commandIdIn, 1));
            this.setHoverImageDescriptor(commandImageService.getImageDescriptor(commandIdIn, 2));
        }
    }

    protected ParameterizedCommand getParameterizedCommand() {
        return this.parameterizedCommand;
    }

    public String getActionDefinitionId() {
        return super.getActionDefinitionId();
    }
}

