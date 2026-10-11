/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandEvent
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.ICommandListener
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.State
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.action.AbstractAction
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.commands.RadioState
 *  org.eclipse.jface.commands.ToggleState
 *  org.eclipse.jface.menus.TextState
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandEvent;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.ICommandListener;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.State;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.action.AbstractAction;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.commands.RadioState;
import org.eclipse.jface.commands.ToggleState;
import org.eclipse.jface.menus.TextState;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.commands.ICommandImageService;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.commands.CommandImageService;
import org.eclipse.ui.keys.IBindingService;
import org.eclipse.ui.services.IServiceLocator;

public final class CommandLegacyActionWrapper
extends AbstractAction {
    private ParameterizedCommand command;
    private final ICommandListener commandListener = new CommandListener();
    private boolean enabled = true;
    private String id;
    private final IServiceLocator serviceLocator;
    private final String style;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public CommandLegacyActionWrapper(String id, ParameterizedCommand command, String style, IServiceLocator serviceLocator) {
        if (command == null) {
            throw new NullPointerException("An action proxy can't be created without a command");
        }
        if (serviceLocator == null) {
            throw new NullPointerException("An action proxy can't be created without a service locator");
        }
        this.command = command;
        this.id = id;
        this.style = style;
        this.serviceLocator = serviceLocator;
        command.getCommand().addCommandListener(this.commandListener);
    }

    public final int getAccelerator() {
        KeySequence keySequence;
        KeyStroke[] keyStrokes;
        IBindingService bindingService;
        TriggerSequence triggerSequence;
        String commandId = this.getActionDefinitionId();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((triggerSequence = (bindingService = (IBindingService)this.serviceLocator.getService(clazz)).getBestActiveBindingFor(commandId)) instanceof KeySequence && (keyStrokes = (keySequence = (KeySequence)triggerSequence).getKeyStrokes()).length == 1) {
            KeyStroke keyStroke = keyStrokes[0];
            return keyStroke.getModifierKeys() | keyStroke.getNaturalKey();
        }
        return 0;
    }

    public final String getActionDefinitionId() {
        return this.command.getId();
    }

    public final String getDescription() {
        try {
            return this.command.getCommand().getDescription();
        }
        catch (NotDefinedException notDefinedException) {
            return null;
        }
    }

    public final ImageDescriptor getDisabledImageDescriptor() {
        String commandId = this.getActionDefinitionId();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandImageService commandImageService = (ICommandImageService)this.serviceLocator.getService(clazz);
        return commandImageService.getImageDescriptor(commandId, 1, this.style);
    }

    public final HelpListener getHelpListener() {
        return null;
    }

    public final ImageDescriptor getHoverImageDescriptor() {
        String commandId = this.getActionDefinitionId();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandImageService commandImageService = (ICommandImageService)this.serviceLocator.getService(clazz);
        return commandImageService.getImageDescriptor(commandId, 2, this.style);
    }

    public final String getId() {
        return this.id;
    }

    public final ImageDescriptor getImageDescriptor() {
        String commandId = this.getActionDefinitionId();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandImageService commandImageService = (ICommandImageService)this.serviceLocator.getService(clazz);
        return commandImageService.getImageDescriptor(commandId, this.style);
    }

    public final IMenuCreator getMenuCreator() {
        return null;
    }

    public final int getStyle() {
        State state = this.command.getCommand().getState("STYLE");
        if (state instanceof RadioState) {
            return 8;
        }
        if (state instanceof ToggleState) {
            return 2;
        }
        return 1;
    }

    public final String getText() {
        try {
            return this.command.getName();
        }
        catch (NotDefinedException notDefinedException) {
            return null;
        }
    }

    public final String getToolTipText() {
        return this.getDescription();
    }

    public final boolean isChecked() {
        State state = this.command.getCommand().getState("STYLE");
        if (state instanceof ToggleState) {
            Boolean currentValue = (Boolean)state.getValue();
            return currentValue;
        }
        return false;
    }

    public final boolean isEnabled() {
        Command baseCommand = this.command.getCommand();
        return baseCommand.isEnabled() && this.enabled;
    }

    public final boolean isEnabledDisregardingCommand() {
        return this.enabled;
    }

    public final boolean isHandled() {
        Command baseCommand = this.command.getCommand();
        return baseCommand.isHandled();
    }

    public final void run() {
        this.runWithEvent(null);
    }

    public final void runWithEvent(Event event) {
        Command baseCommand = this.command.getCommand();
        ExecutionEvent executionEvent = new ExecutionEvent(this.command.getCommand(), this.command.getParameterMap(), (Object)event, null);
        try {
            baseCommand.execute(executionEvent);
            this.firePropertyChange("result", null, Boolean.TRUE);
        }
        catch (NotHandledException notHandledException) {
            this.firePropertyChange("result", null, Boolean.FALSE);
        }
        catch (ExecutionException executionException) {
            this.firePropertyChange("result", null, Boolean.FALSE);
        }
    }

    public final void setAccelerator(int keycode) {
    }

    public final void setActionDefinitionId(String id) {
        boolean oldChecked = this.isChecked();
        String oldDescription = this.getDescription();
        boolean oldEnabled = this.isEnabled();
        boolean oldHandled = this.isHandled();
        ImageDescriptor oldDefaultImage = this.getImageDescriptor();
        ImageDescriptor oldDisabledImage = this.getDisabledImageDescriptor();
        ImageDescriptor oldHoverImage = this.getHoverImageDescriptor();
        String oldText = this.getText();
        Command oldBaseCommand = this.command.getCommand();
        oldBaseCommand.removeCommandListener(this.commandListener);
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)this.serviceLocator.getService(clazz);
        Command newBaseCommand = commandService.getCommand(id);
        this.command = new ParameterizedCommand(newBaseCommand, null);
        newBaseCommand.addCommandListener(this.commandListener);
        boolean newChecked = this.isChecked();
        String newDescription = this.getDescription();
        boolean newEnabled = this.isEnabled();
        boolean newHandled = this.isHandled();
        ImageDescriptor newDefaultImage = this.getImageDescriptor();
        ImageDescriptor newDisabledImage = this.getDisabledImageDescriptor();
        ImageDescriptor newHoverImage = this.getHoverImageDescriptor();
        String newText = this.getText();
        if (newChecked != oldChecked) {
            if (oldChecked) {
                this.firePropertyChange("checked", Boolean.TRUE, Boolean.FALSE);
            } else {
                this.firePropertyChange("checked", Boolean.FALSE, Boolean.TRUE);
            }
        }
        if (!Util.equals((Object)oldDescription, (Object)newDescription)) {
            this.firePropertyChange("description", oldDescription, newDescription);
            this.firePropertyChange("toolTipText", oldDescription, newDescription);
        }
        if (newEnabled != oldEnabled) {
            if (oldEnabled) {
                this.firePropertyChange("enabled", Boolean.TRUE, Boolean.FALSE);
            } else {
                this.firePropertyChange("enabled", Boolean.FALSE, Boolean.TRUE);
            }
        }
        if (newHandled != oldHandled) {
            if (oldHandled) {
                this.firePropertyChange("handled", Boolean.TRUE, Boolean.FALSE);
            } else {
                this.firePropertyChange("handled", Boolean.FALSE, Boolean.TRUE);
            }
        }
        if (!Util.equals((Object)oldDefaultImage, (Object)newDefaultImage)) {
            this.firePropertyChange("image", oldDefaultImage, newDefaultImage);
        }
        if (!Util.equals((Object)oldDisabledImage, (Object)newDisabledImage)) {
            this.firePropertyChange("image", oldDisabledImage, newDisabledImage);
        }
        if (!Util.equals((Object)oldHoverImage, (Object)newHoverImage)) {
            this.firePropertyChange("image", oldHoverImage, newHoverImage);
        }
        if (!Util.equals((Object)oldText, (Object)newText)) {
            this.firePropertyChange("text", oldText, newText);
        }
    }

    public final void setChecked(boolean checked) {
        Boolean currentValue;
        State state = this.command.getCommand().getState("STYLE");
        if (state instanceof ToggleState && checked != (currentValue = (Boolean)state.getValue())) {
            if (checked) {
                state.setValue((Object)Boolean.TRUE);
            } else {
                state.setValue((Object)Boolean.FALSE);
            }
        }
    }

    public final void setDescription(String text) {
        String currentValue;
        State state = this.command.getCommand().getState("DESCRIPTION");
        if (state instanceof TextState && !Util.equals((Object)text, (Object)(currentValue = (String)state.getValue()))) {
            state.setValue((Object)text);
        }
    }

    public final void setDisabledImageDescriptor(ImageDescriptor newImage) {
        ICommandImageService commandImageService;
        String commandId = this.getActionDefinitionId();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((commandImageService = (ICommandImageService)this.serviceLocator.getService(clazz)) instanceof CommandImageService) {
            ((CommandImageService)commandImageService).bind(commandId, 1, this.style, newImage);
        }
    }

    public final void setEnabled(boolean enabled) {
        if (enabled != this.enabled) {
            Boolean oldValue = this.enabled ? Boolean.TRUE : Boolean.FALSE;
            Boolean newValue = enabled ? Boolean.TRUE : Boolean.FALSE;
            this.enabled = enabled;
            this.firePropertyChange("enabled", oldValue, newValue);
        }
    }

    public final void setHelpListener(HelpListener listener) {
    }

    public final void setHoverImageDescriptor(ImageDescriptor newImage) {
        ICommandImageService commandImageService;
        String commandId = this.getActionDefinitionId();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((commandImageService = (ICommandImageService)this.serviceLocator.getService(clazz)) instanceof CommandImageService) {
            ((CommandImageService)commandImageService).bind(commandId, 2, this.style, newImage);
        }
    }

    public final void setId(String id) {
        this.id = id;
    }

    public final void setImageDescriptor(ImageDescriptor newImage) {
        ICommandImageService commandImageService;
        String commandId = this.getActionDefinitionId();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((commandImageService = (ICommandImageService)this.serviceLocator.getService(clazz)) instanceof CommandImageService) {
            ((CommandImageService)commandImageService).bind(commandId, 0, this.style, newImage);
        }
    }

    public final void setMenuCreator(IMenuCreator creator) {
    }

    public final void setText(String text) {
        String currentValue;
        State state = this.command.getCommand().getState("NAME");
        if (state instanceof TextState && !Util.equals((Object)text, (Object)(currentValue = (String)state.getValue()))) {
            state.setValue((Object)text);
        }
    }

    public final void setToolTipText(String text) {
        this.setDescription(text);
    }

    private final class CommandListener
    implements ICommandListener {
        private CommandListener() {
        }

        public final void commandChanged(CommandEvent commandEvent) {
            Command baseCommand = commandEvent.getCommand();
            if (commandEvent.isNameChanged()) {
                String newName = null;
                if (baseCommand.isDefined()) {
                    try {
                        newName = baseCommand.getName();
                    }
                    catch (NotDefinedException notDefinedException) {}
                }
                CommandLegacyActionWrapper.this.firePropertyChange("text", null, newName);
            }
            if (commandEvent.isDescriptionChanged()) {
                String newDescription = null;
                if (baseCommand.isDefined()) {
                    try {
                        newDescription = baseCommand.getDescription();
                    }
                    catch (NotDefinedException notDefinedException) {}
                }
                CommandLegacyActionWrapper.this.firePropertyChange("description", null, newDescription);
                CommandLegacyActionWrapper.this.firePropertyChange("toolTipText", null, newDescription);
            }
            if (commandEvent.isHandledChanged()) {
                if (baseCommand.isHandled()) {
                    CommandLegacyActionWrapper.this.firePropertyChange("handled", Boolean.FALSE, Boolean.TRUE);
                } else {
                    CommandLegacyActionWrapper.this.firePropertyChange("handled", Boolean.TRUE, Boolean.FALSE);
                }
            }
        }
    }
}

