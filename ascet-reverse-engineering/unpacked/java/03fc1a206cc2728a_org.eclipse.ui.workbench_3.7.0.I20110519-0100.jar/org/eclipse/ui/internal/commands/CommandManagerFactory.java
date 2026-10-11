/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.jface.bindings.BindingManager
 */
package org.eclipse.ui.internal.commands;

import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.ui.internal.commands.CommandManagerLegacyWrapper;

public final class CommandManagerFactory {
    public static CommandManagerLegacyWrapper getCommandManagerWrapper(BindingManager bindingManager, CommandManager commandManager, ContextManager contextManager) {
        return new CommandManagerLegacyWrapper(bindingManager, commandManager, contextManager);
    }

    private CommandManagerFactory() {
    }
}

