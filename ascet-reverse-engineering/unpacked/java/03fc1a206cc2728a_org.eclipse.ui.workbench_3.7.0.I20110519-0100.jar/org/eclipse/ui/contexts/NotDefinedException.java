/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NotDefinedException
 */
package org.eclipse.ui.contexts;

import org.eclipse.ui.contexts.ContextException;

public final class NotDefinedException
extends ContextException {
    private static final long serialVersionUID = 3833750983926167092L;

    public NotDefinedException(String message) {
        super(message);
    }

    public NotDefinedException(org.eclipse.core.commands.common.NotDefinedException e) {
        super(e.getMessage(), e);
    }
}

