/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.CommandEvent
 *  org.eclipse.core.commands.ICommandListener
 *  org.eclipse.jface.bindings.BindingManager
 */
package org.eclipse.ui.internal.commands;

import org.eclipse.core.commands.CommandEvent;
import org.eclipse.core.commands.ICommandListener;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.ui.internal.commands.CommandLegacyWrapper;

final class LegacyCommandListenerWrapper
implements ICommandListener {
    private final BindingManager bindingManager;
    private final org.eclipse.ui.commands.ICommandListener listener;

    LegacyCommandListenerWrapper(org.eclipse.ui.commands.ICommandListener listener, BindingManager bindingManager) {
        if (listener == null) {
            throw new NullPointerException("Cannot wrap a null listener.");
        }
        if (bindingManager == null) {
            throw new NullPointerException("Cannot create a listener wrapper without a binding manager");
        }
        this.listener = listener;
        this.bindingManager = bindingManager;
    }

    public final void commandChanged(CommandEvent commandEvent) {
        CommandLegacyWrapper command = new CommandLegacyWrapper(commandEvent.getCommand(), this.bindingManager);
        boolean definedChanged = commandEvent.isDefinedChanged();
        boolean descriptionChanged = commandEvent.isDescriptionChanged();
        boolean handledChanged = commandEvent.isHandledChanged();
        boolean nameChanged = commandEvent.isNameChanged();
        this.listener.commandChanged(new org.eclipse.ui.commands.CommandEvent(command, false, false, definedChanged, descriptionChanged, handledChanged, false, nameChanged, null));
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyCommandListenerWrapper) {
            LegacyCommandListenerWrapper wrapper = (LegacyCommandListenerWrapper)object;
            return this.listener.equals(wrapper.listener);
        }
        if (object instanceof org.eclipse.ui.commands.ICommandListener) {
            org.eclipse.ui.commands.ICommandListener other = (org.eclipse.ui.commands.ICommandListener)object;
            return this.listener.equals(other);
        }
        return false;
    }

    public final int hashCode() {
        return this.listener.hashCode();
    }
}

