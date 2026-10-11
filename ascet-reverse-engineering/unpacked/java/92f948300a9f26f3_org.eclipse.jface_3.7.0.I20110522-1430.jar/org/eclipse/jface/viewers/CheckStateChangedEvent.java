/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.EventObject;
import org.eclipse.jface.viewers.ICheckable;

public class CheckStateChangedEvent
extends EventObject {
    private static final long serialVersionUID = 3256443603340244789L;
    private Object element;
    private boolean state;

    public CheckStateChangedEvent(ICheckable source, Object element, boolean state) {
        super(source);
        this.element = element;
        this.state = state;
    }

    public ICheckable getCheckable() {
        return (ICheckable)this.source;
    }

    public boolean getChecked() {
        return this.state;
    }

    public Object getElement() {
        return this.element;
    }
}

