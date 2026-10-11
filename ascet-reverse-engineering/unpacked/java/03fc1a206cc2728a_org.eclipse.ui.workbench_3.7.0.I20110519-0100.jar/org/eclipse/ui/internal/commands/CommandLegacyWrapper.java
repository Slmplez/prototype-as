/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.ICommandListener
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeySequence
 */
package org.eclipse.ui.internal.commands;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ICommandListener;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.ui.commands.ExecutionException;
import org.eclipse.ui.commands.ICommand;
import org.eclipse.ui.commands.NotDefinedException;
import org.eclipse.ui.commands.NotHandledException;
import org.eclipse.ui.internal.commands.LegacyCommandListenerWrapper;
import org.eclipse.ui.internal.keys.KeySequenceBinding;

final class CommandLegacyWrapper
implements ICommand {
    private final BindingManager bindingManager;
    private final Command command;
    private ParameterizedCommand parameterizedCommand;

    CommandLegacyWrapper(Command command, BindingManager bindingManager) {
        if (command == null) {
            throw new NullPointerException("The wrapped command cannot be <code>null</code>.");
        }
        if (bindingManager == null) {
            throw new NullPointerException("A binding manager is required to wrap a command");
        }
        this.command = command;
        this.bindingManager = bindingManager;
    }

    public final void addCommandListener(org.eclipse.ui.commands.ICommandListener commandListener) {
        this.command.addCommandListener((ICommandListener)new LegacyCommandListenerWrapper(commandListener, this.bindingManager));
    }

    public final Object execute(Map parameterValuesByName) throws ExecutionException, NotHandledException {
        try {
            return this.command.execute(new ExecutionEvent(this.command, parameterValuesByName == null ? Collections.EMPTY_MAP : parameterValuesByName, null, null));
        }
        catch (org.eclipse.core.commands.ExecutionException e) {
            throw new ExecutionException(e);
        }
        catch (org.eclipse.core.commands.NotHandledException e) {
            throw new NotHandledException(e);
        }
    }

    public final Map getAttributeValuesByName() {
        HashMap<String, Boolean> attributeValues = new HashMap<String, Boolean>();
        attributeValues.put("enabled", this.command.isEnabled() ? Boolean.TRUE : Boolean.FALSE);
        attributeValues.put("handled", this.command.isHandled() ? Boolean.TRUE : Boolean.FALSE);
        return attributeValues;
    }

    public final String getCategoryId() throws NotDefinedException {
        try {
            return this.command.getCategory().getId();
        }
        catch (org.eclipse.core.commands.common.NotDefinedException e) {
            throw new NotDefinedException(e);
        }
    }

    public final String getDescription() throws NotDefinedException {
        try {
            return this.command.getDescription();
        }
        catch (org.eclipse.core.commands.common.NotDefinedException e) {
            throw new NotDefinedException(e);
        }
    }

    public final String getId() {
        return this.command.getId();
    }

    public final List getKeySequenceBindings() {
        ArrayList<KeySequenceBinding> legacyBindings = new ArrayList<KeySequenceBinding>();
        if (this.parameterizedCommand == null) {
            this.parameterizedCommand = new ParameterizedCommand(this.command, null);
        }
        TriggerSequence[] activeBindings = this.bindingManager.getActiveBindingsFor(this.parameterizedCommand);
        int activeBindingsCount = activeBindings.length;
        int i = 0;
        while (i < activeBindingsCount) {
            TriggerSequence triggerSequence = activeBindings[i];
            if (triggerSequence instanceof KeySequence) {
                legacyBindings.add(new KeySequenceBinding(org.eclipse.ui.keys.KeySequence.getInstance((KeySequence)triggerSequence), 0));
            }
            ++i;
        }
        return legacyBindings;
    }

    public final String getName() throws NotDefinedException {
        try {
            return this.command.getName();
        }
        catch (org.eclipse.core.commands.common.NotDefinedException e) {
            throw new NotDefinedException(e);
        }
    }

    public final boolean isDefined() {
        return this.command.isDefined();
    }

    public final boolean isHandled() {
        return this.command.isHandled();
    }

    public final void removeCommandListener(org.eclipse.ui.commands.ICommandListener commandListener) {
        this.command.removeCommandListener((ICommandListener)new LegacyCommandListenerWrapper(commandListener, this.bindingManager));
    }

    public final int compareTo(Object o) {
        return this.command.compareTo(o);
    }
}

