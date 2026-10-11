/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.HandlerEvent
 *  org.eclipse.core.commands.IHandler
 */
package org.eclipse.ui.internal;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.HandlerEvent;
import org.eclipse.core.commands.IHandler;

public abstract class AbstractEnabledHandler
extends AbstractHandler {
    private boolean enabled = true;

    public boolean isEnabled() {
        return this.enabled;
    }

    protected void setEnabled(boolean isEnabled) {
        if (this.enabled != isEnabled) {
            this.enabled = isEnabled;
            this.fireHandlerChanged(new HandlerEvent((IHandler)this, true, false));
        }
    }
}

