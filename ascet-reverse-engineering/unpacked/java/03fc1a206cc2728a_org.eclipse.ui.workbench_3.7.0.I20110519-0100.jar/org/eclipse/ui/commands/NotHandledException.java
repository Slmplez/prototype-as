/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.NotHandledException
 */
package org.eclipse.ui.commands;

import org.eclipse.ui.commands.CommandException;

public final class NotHandledException
extends CommandException {
    private static final long serialVersionUID = 3256446914827726904L;

    public NotHandledException(String s) {
        super(s);
    }

    public NotHandledException(org.eclipse.core.commands.NotHandledException e) {
        super(e.getMessage(), e);
    }
}

