/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.IHandlerListener
 *  org.eclipse.core.commands.util.Tracing
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.IHandlerListener;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.ui.commands.ExecutionException;
import org.eclipse.ui.commands.IHandler;
import org.eclipse.ui.internal.handlers.LegacyHandlerListenerWrapper;
import org.eclipse.ui.internal.misc.Policy;

public final class LegacyHandlerWrapper
implements org.eclipse.core.commands.IHandler {
    private static final boolean DEBUG_HANDLERS = Policy.DEBUG_HANDLERS && Policy.DEBUG_HANDLERS_VERBOSE;
    private final IHandler handler;

    public LegacyHandlerWrapper(IHandler handler) {
        if (handler == null) {
            throw new NullPointerException("A handler wrapper cannot be constructed on a null handler");
        }
        this.handler = handler;
    }

    public final void addHandlerListener(IHandlerListener handlerListener) {
        this.handler.addHandlerListener(new LegacyHandlerListenerWrapper(this, handlerListener));
    }

    public final void dispose() {
        this.handler.dispose();
    }

    public final boolean equals(Object object) {
        if (object instanceof IHandler) {
            return this.handler == object;
        }
        if (object instanceof LegacyHandlerWrapper) {
            return this.handler == ((LegacyHandlerWrapper)object).handler;
        }
        return false;
    }

    public final Object execute(ExecutionEvent event) throws org.eclipse.core.commands.ExecutionException {
        if (DEBUG_HANDLERS) {
            StringBuffer buffer = new StringBuffer("Executing LegacyHandlerWrapper for ");
            if (this.handler == null) {
                buffer.append("no handler");
            } else {
                buffer.append('\'');
                buffer.append(this.handler.getClass().getName());
                buffer.append('\'');
            }
            Tracing.printTrace((String)"HANDLERS", (String)buffer.toString());
        }
        try {
            return this.handler.execute(event.getParameters());
        }
        catch (ExecutionException e) {
            throw new org.eclipse.core.commands.ExecutionException(e.getMessage(), e.getCause());
        }
    }

    public final int hashCode() {
        return this.handler.hashCode();
    }

    public final boolean isEnabled() {
        Object enabled = this.handler.getAttributeValuesByName().get("enabled");
        if (enabled instanceof Boolean) {
            return (Boolean)enabled;
        }
        return true;
    }

    public final boolean isHandled() {
        Object handled = this.handler.getAttributeValuesByName().get("handled");
        if (handled instanceof Boolean) {
            return (Boolean)handled;
        }
        return true;
    }

    public final void removeHandlerListener(IHandlerListener handlerListener) {
        this.handler.removeHandlerListener(new LegacyHandlerListenerWrapper(this, handlerListener));
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("LegacyHandlerWrapper(");
        buffer.append(this.handler);
        buffer.append(')');
        return buffer.toString();
    }
}

