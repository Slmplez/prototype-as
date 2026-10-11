/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.common;

public abstract class CommandException
extends Exception {
    private static final long serialVersionUID = 5389763628699257234L;
    private Throwable cause;

    public CommandException(String message) {
        super(message);
    }

    public CommandException(String message, Throwable cause) {
        super(message);
        this.cause = cause;
    }

    public Throwable getCause() {
        return this.cause;
    }
}

