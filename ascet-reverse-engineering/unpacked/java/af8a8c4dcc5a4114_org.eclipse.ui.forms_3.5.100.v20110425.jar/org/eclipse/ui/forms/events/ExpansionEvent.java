/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.TypedEvent
 */
package org.eclipse.ui.forms.events;

import org.eclipse.swt.events.TypedEvent;

public final class ExpansionEvent
extends TypedEvent {
    private static final long serialVersionUID = 6009335074727417445L;

    public ExpansionEvent(Object obj, boolean state) {
        super(obj);
        this.data = state ? Boolean.TRUE : Boolean.FALSE;
    }

    public boolean getState() {
        return this.data.equals(Boolean.TRUE);
    }
}

