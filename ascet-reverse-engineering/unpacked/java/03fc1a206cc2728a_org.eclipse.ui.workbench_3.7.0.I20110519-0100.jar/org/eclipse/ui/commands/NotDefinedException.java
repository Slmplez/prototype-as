/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NotDefinedException
 */
package org.eclipse.ui.commands;

import org.eclipse.ui.commands.CommandException;

public final class NotDefinedException
extends CommandException {
    private static final long serialVersionUID = 3257572788998124596L;

    public NotDefinedException(String s) {
        super(s);
    }

    public NotDefinedException(org.eclipse.core.commands.common.NotDefinedException e) {
        super(e.getMessage(), e);
    }
}

