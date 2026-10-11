/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.HandlerEvent
 *  org.eclipse.core.commands.IHandler
 */
package org.eclipse.ui.commands;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.ui.commands.ExecutionException;
import org.eclipse.ui.commands.HandlerEvent;
import org.eclipse.ui.commands.IHandler;
import org.eclipse.ui.commands.IHandlerListener;

public abstract class AbstractHandler
extends org.eclipse.core.commands.AbstractHandler
implements IHandler {
    private List handlerListeners;

    public void addHandlerListener(IHandlerListener handlerListener) {
        if (handlerListener == null) {
            throw new NullPointerException();
        }
        if (this.handlerListeners == null) {
            this.handlerListeners = new ArrayList();
        }
        if (!this.handlerListeners.contains(handlerListener)) {
            this.handlerListeners.add(handlerListener);
        }
    }

    public void dispose() {
    }

    public Object execute(ExecutionEvent event) throws org.eclipse.core.commands.ExecutionException {
        try {
            return this.execute(event.getParameters());
        }
        catch (ExecutionException e) {
            throw new org.eclipse.core.commands.ExecutionException(e.getMessage(), e.getCause());
        }
    }

    protected void fireHandlerChanged(org.eclipse.core.commands.HandlerEvent handlerEvent) {
        super.fireHandlerChanged(handlerEvent);
        if (this.handlerListeners != null) {
            HashMap<String, Boolean> previousAttributes;
            boolean attributesChanged;
            boolean bl = attributesChanged = handlerEvent.isEnabledChanged() || handlerEvent.isHandledChanged();
            if (attributesChanged) {
                previousAttributes = new HashMap<String, Boolean>();
                previousAttributes.putAll(this.getAttributeValuesByName());
                if (handlerEvent.isEnabledChanged()) {
                    Boolean disabled = !this.isEnabled() ? Boolean.TRUE : Boolean.FALSE;
                    previousAttributes.put("enabled", disabled);
                }
                if (handlerEvent.isHandledChanged()) {
                    Boolean notHandled = !this.isHandled() ? Boolean.TRUE : Boolean.FALSE;
                    previousAttributes.put("handled", notHandled);
                }
            } else {
                previousAttributes = null;
            }
            HandlerEvent legacyEvent = new HandlerEvent(this, attributesChanged, previousAttributes);
            int i = 0;
            while (i < this.handlerListeners.size()) {
                ((IHandlerListener)this.handlerListeners.get(i)).handlerChanged(legacyEvent);
                ++i;
            }
        }
    }

    protected void fireHandlerChanged(HandlerEvent handlerEvent) {
        if (handlerEvent == null) {
            throw new NullPointerException();
        }
        if (this.handlerListeners != null) {
            int i = 0;
            while (i < this.handlerListeners.size()) {
                ((IHandlerListener)this.handlerListeners.get(i)).handlerChanged(handlerEvent);
                ++i;
            }
        }
        if (super.hasListeners()) {
            boolean handledChanged;
            boolean enabledChanged;
            if (handlerEvent.haveAttributeValuesByNameChanged()) {
                Map previousAttributes = handlerEvent.getPreviousAttributeValuesByName();
                Object attribute = previousAttributes.get("enabled");
                enabledChanged = attribute instanceof Boolean ? (Boolean)attribute : false;
                attribute = previousAttributes.get("handled");
                handledChanged = attribute instanceof Boolean ? (Boolean)attribute : false;
            } else {
                enabledChanged = false;
                handledChanged = true;
            }
            org.eclipse.core.commands.HandlerEvent newEvent = new org.eclipse.core.commands.HandlerEvent((org.eclipse.core.commands.IHandler)this, enabledChanged, handledChanged);
            super.fireHandlerChanged(newEvent);
        }
    }

    public Map getAttributeValuesByName() {
        return Collections.EMPTY_MAP;
    }

    protected final boolean hasListeners() {
        return super.hasListeners() || this.handlerListeners != null;
    }

    public boolean isEnabled() {
        Object handled = this.getAttributeValuesByName().get("enabled");
        if (handled instanceof Boolean) {
            return (Boolean)handled;
        }
        return false;
    }

    public boolean isHandled() {
        Object handled = this.getAttributeValuesByName().get("handled");
        if (handled instanceof Boolean) {
            return (Boolean)handled;
        }
        return false;
    }

    public void removeHandlerListener(IHandlerListener handlerListener) {
        if (handlerListener == null) {
            throw new NullPointerException();
        }
        if (this.handlerListeners == null) {
            return;
        }
        if (this.handlerListeners != null) {
            this.handlerListeners.remove(handlerListener);
        }
        if (this.handlerListeners.isEmpty()) {
            this.handlerListeners = null;
        }
    }
}

