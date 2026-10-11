/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.HandlerEvent
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.IHandlerListener
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.IHandler;
import org.eclipse.ui.commands.HandlerEvent;
import org.eclipse.ui.commands.IHandlerListener;

public final class LegacyHandlerListenerWrapper
implements IHandlerListener {
    private final IHandler handler;
    private final org.eclipse.core.commands.IHandlerListener listener;

    public LegacyHandlerListenerWrapper(IHandler handler, org.eclipse.core.commands.IHandlerListener listener) {
        if (handler == null) {
            throw new NullPointerException("A listener wrapper cannot be created on a null handler");
        }
        if (listener == null) {
            throw new NullPointerException("A listener wrapper cannot be created on a null listener");
        }
        this.handler = handler;
        this.listener = listener;
    }

    public void handlerChanged(HandlerEvent event) {
        boolean enabledChanged = (Boolean)event.getPreviousAttributeValuesByName().get("enabled") ^ this.handler.isEnabled();
        boolean handledChanged = (Boolean)event.getPreviousAttributeValuesByName().get("handled") ^ this.handler.isHandled();
        this.listener.handlerChanged(new org.eclipse.core.commands.HandlerEvent(this.handler, enabledChanged, handledChanged));
    }
}

