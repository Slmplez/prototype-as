/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.CommandException
 */
package org.eclipse.ui.actions;

import org.eclipse.core.commands.common.CommandException;

public class CommandNotMappedException
extends CommandException {
    private static final long serialVersionUID = 1L;

    public CommandNotMappedException(String message) {
        super(message);
    }

    public CommandNotMappedException(String message, Throwable cause) {
        super(message, cause);
    }
}

