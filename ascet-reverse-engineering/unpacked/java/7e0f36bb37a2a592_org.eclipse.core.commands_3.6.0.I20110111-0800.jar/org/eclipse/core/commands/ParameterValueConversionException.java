/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.common.CommandException;

public class ParameterValueConversionException
extends CommandException {
    private static final long serialVersionUID = 4703077729505066104L;

    public ParameterValueConversionException(String message) {
        super(message);
    }

    public ParameterValueConversionException(String message, Throwable cause) {
        super(message, cause);
    }
}

