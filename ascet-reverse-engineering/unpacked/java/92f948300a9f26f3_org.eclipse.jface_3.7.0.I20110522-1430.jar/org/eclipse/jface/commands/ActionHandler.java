/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.HandlerEvent
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.IHandlerListener
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.jface.commands;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.HandlerEvent;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.IHandlerListener;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Event;

public final class ActionHandler
extends AbstractHandler {
    private final IAction action;
    private IPropertyChangeListener propertyChangeListener;

    public ActionHandler(IAction action) {
        if (action == null) {
            throw new NullPointerException();
        }
        this.action = action;
    }

    public final void addHandlerListener(IHandlerListener handlerListener) {
        if (!this.hasListeners()) {
            this.attachListener();
        }
        super.addHandlerListener(handlerListener);
    }

    private final void attachListener() {
        if (this.propertyChangeListener == null) {
            this.propertyChangeListener = new IPropertyChangeListener(){

                public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                    String property = propertyChangeEvent.getProperty();
                    ActionHandler.this.fireHandlerChanged(new HandlerEvent((IHandler)ActionHandler.this, "enabled".equals(property), "handled".equals(property)));
                }
            };
        }
        this.action.addPropertyChangeListener(this.propertyChangeListener);
    }

    private final void detachListener() {
        this.action.removePropertyChangeListener(this.propertyChangeListener);
        this.propertyChangeListener = null;
    }

    public final void dispose() {
        if (this.hasListeners()) {
            this.action.removePropertyChangeListener(this.propertyChangeListener);
        }
    }

    public final Object execute(ExecutionEvent event) throws ExecutionException {
        if (this.action.getStyle() == 2 || this.action.getStyle() == 8) {
            this.action.setChecked(!this.action.isChecked());
        }
        Object trigger = event.getTrigger();
        try {
            if (trigger instanceof Event) {
                this.action.runWithEvent((Event)trigger);
            } else {
                this.action.runWithEvent(new Event());
            }
        }
        catch (Exception e) {
            throw new ExecutionException("While executing the action, an exception occurred", (Throwable)e);
        }
        return null;
    }

    public final IAction getAction() {
        return this.action;
    }

    public final boolean isEnabled() {
        return this.action.isEnabled();
    }

    public final boolean isHandled() {
        return this.action.isHandled();
    }

    public final void removeHandlerListener(IHandlerListener handlerListener) {
        super.removeHandlerListener(handlerListener);
        if (!this.hasListeners()) {
            this.detachListener();
        }
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ActionHandler(");
        buffer.append(this.action);
        buffer.append(')');
        return buffer.toString();
    }
}

