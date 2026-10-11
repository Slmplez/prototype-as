/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.ContextManager
 */
package org.eclipse.ui.internal.contexts;

import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.ui.internal.contexts.ContextManagerLegacyWrapper;

public final class ContextManagerFactory {
    public static final ContextManagerLegacyWrapper getContextManagerWrapper(ContextManager contextManager) {
        return new ContextManagerLegacyWrapper(contextManager);
    }

    private ContextManagerFactory() {
    }
}

