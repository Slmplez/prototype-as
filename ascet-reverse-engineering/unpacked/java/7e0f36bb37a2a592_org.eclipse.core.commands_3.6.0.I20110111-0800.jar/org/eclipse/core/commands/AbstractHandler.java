/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.HandlerEvent;
import org.eclipse.core.commands.IHandler2;
import org.eclipse.core.commands.IHandlerListener;
import org.eclipse.core.commands.common.EventManager;

public abstract class AbstractHandler
extends EventManager
implements IHandler2 {
    private boolean baseEnabled = true;

    public void addHandlerListener(IHandlerListener handlerListener) {
        this.addListenerObject(handlerListener);
    }

    public void dispose() {
    }

    protected void fireHandlerChanged(HandlerEvent handlerEvent) {
        if (handlerEvent == null) {
            throw new NullPointerException();
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IHandlerListener listener = (IHandlerListener)listeners[i];
            listener.handlerChanged(handlerEvent);
            ++i;
        }
    }

    public boolean isEnabled() {
        return this.baseEnabled;
    }

    protected void setBaseEnabled(boolean state) {
        if (this.baseEnabled == state) {
            return;
        }
        this.baseEnabled = state;
        this.fireHandlerChanged(new HandlerEvent(this, true, false));
    }

    public void setEnabled(Object evaluationContext) {
    }

    public boolean isHandled() {
        return true;
    }

    protected boolean hasListeners() {
        return this.isListenerAttached();
    }

    public void removeHandlerListener(IHandlerListener handlerListener) {
        this.removeListenerObject(handlerListener);
    }

    public abstract /* synthetic */ Object execute(ExecutionEvent var1) throws ExecutionException;
}

