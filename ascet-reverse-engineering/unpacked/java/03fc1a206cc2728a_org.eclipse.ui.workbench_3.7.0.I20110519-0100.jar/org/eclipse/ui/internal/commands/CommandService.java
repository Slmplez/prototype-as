/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Category
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.IExecutionListener
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.ParameterType
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.SerializationException
 *  org.eclipse.core.commands.State
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.commands.PersistentState
 */
package org.eclipse.ui.internal.commands;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.Category;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.IExecutionListener;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.ParameterType;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.SerializationException;
import org.eclipse.core.commands.State;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.commands.PersistentState;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.commands.IElementReference;
import org.eclipse.ui.commands.IElementUpdater;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.commands.CommandPersistence;
import org.eclipse.ui.internal.commands.ElementReference;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.menus.UIElement;

public final class CommandService
implements ICommandService {
    private static final String PREFERENCE_KEY_PREFIX = "org.eclipse.ui.commands/state";
    private final CommandManager commandManager;
    private final CommandPersistence commandPersistence;
    private Map commandCallbacks = new HashMap();

    static final String createPreferenceKey(Command command, String stateId) {
        return "org.eclipse.ui.commands/state/" + command.getId() + '/' + stateId;
    }

    public CommandService(CommandManager commandManager) {
        if (commandManager == null) {
            throw new NullPointerException("Cannot create a command service with a null manager");
        }
        this.commandManager = commandManager;
        this.commandPersistence = new CommandPersistence(this);
    }

    public final void addExecutionListener(IExecutionListener listener) {
        this.commandManager.addExecutionListener(listener);
    }

    public final void defineUncategorizedCategory(String name, String description) {
        this.commandManager.defineUncategorizedCategory(name, description);
    }

    public final ParameterizedCommand deserialize(String serializedParameterizedCommand) throws NotDefinedException, SerializationException {
        return this.commandManager.deserialize(serializedParameterizedCommand);
    }

    public final void dispose() {
        this.commandPersistence.dispose();
        Command[] commands = this.commandManager.getAllCommands();
        int i = 0;
        while (i < commands.length) {
            Command command = commands[i];
            String[] stateIds = command.getStateIds();
            int j = 0;
            while (j < stateIds.length) {
                PersistentState persistentState;
                String stateId = stateIds[j];
                State state = command.getState(stateId);
                if (state instanceof PersistentState && (persistentState = (PersistentState)state).shouldPersist()) {
                    persistentState.save(PrefUtil.getInternalPreferenceStore(), CommandService.createPreferenceKey(command, stateId));
                }
                ++j;
            }
            ++i;
        }
        this.commandCallbacks = null;
    }

    public final Category getCategory(String categoryId) {
        return this.commandManager.getCategory(categoryId);
    }

    public final Command getCommand(String commandId) {
        return this.commandManager.getCommand(commandId);
    }

    public final Category[] getDefinedCategories() {
        return this.commandManager.getDefinedCategories();
    }

    public final Collection getDefinedCategoryIds() {
        return this.commandManager.getDefinedCategoryIds();
    }

    public final Collection getDefinedCommandIds() {
        return this.commandManager.getDefinedCommandIds();
    }

    public final Command[] getDefinedCommands() {
        return this.commandManager.getDefinedCommands();
    }

    public Collection getDefinedParameterTypeIds() {
        return this.commandManager.getDefinedParameterTypeIds();
    }

    public ParameterType[] getDefinedParameterTypes() {
        return this.commandManager.getDefinedParameterTypes();
    }

    public final String getHelpContextId(Command command) throws NotDefinedException {
        return this.commandManager.getHelpContextId(command);
    }

    public final String getHelpContextId(String commandId) throws NotDefinedException {
        Command command = this.getCommand(commandId);
        return this.commandManager.getHelpContextId(command);
    }

    public ParameterType getParameterType(String parameterTypeId) {
        return this.commandManager.getParameterType(parameterTypeId);
    }

    public final void readRegistry() {
        this.commandPersistence.read();
    }

    public final void removeExecutionListener(IExecutionListener listener) {
        this.commandManager.removeExecutionListener(listener);
    }

    public final void setHelpContextId(IHandler handler, String helpContextId) {
        this.commandManager.setHelpContextId(handler, helpContextId);
    }

    public final void refreshElements(String commandId, Map filter) {
        Command cmd = this.getCommand(commandId);
        if (!cmd.isDefined() || !(cmd.getHandler() instanceof IElementUpdater)) {
            return;
        }
        final IElementUpdater updater = (IElementUpdater)cmd.getHandler();
        if (this.commandCallbacks == null) {
            return;
        }
        List callbackRefs = (List)this.commandCallbacks.get(commandId);
        if (callbackRefs == null) {
            return;
        }
        Iterator i = callbackRefs.iterator();
        while (i.hasNext()) {
            final IElementReference callbackRef = (IElementReference)i.next();
            final Map parms = Collections.unmodifiableMap(callbackRef.getParameters());
            ISafeRunnable run = new ISafeRunnable(){

                public void handleException(Throwable exception) {
                    WorkbenchPlugin.log("Failed to update callback: " + callbackRef.getCommandId(), exception);
                }

                public void run() throws Exception {
                    updater.updateElement(callbackRef.getElement(), parms);
                }
            };
            if (filter == null) {
                SafeRunner.run((ISafeRunnable)run);
                continue;
            }
            boolean match = true;
            Iterator j = filter.entrySet().iterator();
            while (j.hasNext() && match) {
                Map.Entry parmEntry = j.next();
                Object value = parms.get(parmEntry.getKey());
                if (parmEntry.getValue().equals(value)) continue;
                match = false;
            }
            if (!match) continue;
            SafeRunner.run((ISafeRunnable)run);
        }
    }

    public final IElementReference registerElementForCommand(ParameterizedCommand command, UIElement element) throws NotDefinedException {
        if (!command.getCommand().isDefined()) {
            throw new NotDefinedException("Cannot define a callback for undefined command " + command.getCommand().getId());
        }
        if (element == null) {
            throw new NotDefinedException("No callback defined for command " + command.getCommand().getId());
        }
        ElementReference ref = new ElementReference(command.getId(), element, command.getParameterMap());
        this.registerElement(ref);
        return ref;
    }

    public void registerElement(IElementReference elementReference) {
        ArrayList<IElementReference> parameterizedCommands = (ArrayList<IElementReference>)this.commandCallbacks.get(elementReference.getCommandId());
        if (parameterizedCommands == null) {
            parameterizedCommands = new ArrayList<IElementReference>();
            this.commandCallbacks.put(elementReference.getCommandId(), parameterizedCommands);
        }
        parameterizedCommands.add(elementReference);
        Command command = this.getCommand(elementReference.getCommandId());
        if (command.isDefined() && command.getHandler() instanceof IElementUpdater) {
            ((IElementUpdater)command.getHandler()).updateElement(elementReference.getElement(), elementReference.getParameters());
        }
    }

    public void unregisterElement(IElementReference elementReference) {
        List parameterizedCommands = (List)this.commandCallbacks.get(elementReference.getCommandId());
        if (parameterizedCommands != null) {
            parameterizedCommands.remove(elementReference);
            if (parameterizedCommands.isEmpty()) {
                this.commandCallbacks.remove(elementReference.getCommandId());
            }
        }
    }

    public CommandPersistence getCommandPersistence() {
        return this.commandPersistence;
    }
}

