/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.common.CommandException;

public final class SerializationException
extends CommandException {
    private static final long serialVersionUID = 2691599674561684949L;

    public SerializationException(String message) {
        super(message);
    }

    public SerializationException(String message, Throwable cause) {
        super(message, cause);
    }
}

