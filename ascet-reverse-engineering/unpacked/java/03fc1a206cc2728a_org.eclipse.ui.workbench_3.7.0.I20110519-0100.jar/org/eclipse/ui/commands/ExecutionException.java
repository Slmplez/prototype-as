/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 */
package org.eclipse.ui.commands;

import org.eclipse.ui.commands.CommandException;

public final class ExecutionException
extends CommandException {
    private static final long serialVersionUID = 3258130262767448120L;

    public ExecutionException(String message, Throwable cause) {
        super(message, cause);
    }

    public ExecutionException(org.eclipse.core.commands.ExecutionException e) {
        super(e.getMessage(), e);
    }
}

