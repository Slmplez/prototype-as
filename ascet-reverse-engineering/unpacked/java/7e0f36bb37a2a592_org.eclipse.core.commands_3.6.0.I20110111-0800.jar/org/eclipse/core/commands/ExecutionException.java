/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.common.CommandException;

public final class ExecutionException
extends CommandException {
    private static final long serialVersionUID = 3258130262767448120L;

    public ExecutionException(String message) {
        super(message);
    }

    public ExecutionException(String message, Throwable cause) {
        super(message, cause);
    }
}

