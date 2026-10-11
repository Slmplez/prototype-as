/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.EventObject;
import org.eclipse.jface.viewers.IBaseLabelProvider;

public class LabelProviderChangedEvent
extends EventObject {
    private static final long serialVersionUID = 3258410612479309878L;
    private Object[] elements;

    public LabelProviderChangedEvent(IBaseLabelProvider source) {
        super(source);
    }

    public LabelProviderChangedEvent(IBaseLabelProvider source, Object[] elements) {
        super(source);
        this.elements = elements;
    }

    public LabelProviderChangedEvent(IBaseLabelProvider source, Object element) {
        super(source);
        this.elements = new Object[1];
        this.elements[0] = element;
    }

    public Object getElement() {
        if (this.elements == null || this.elements.length == 0) {
            return null;
        }
        return this.elements[0];
    }

    public Object[] getElements() {
        if (this.elements == null) {
            return null;
        }
        return this.elements;
    }
}

