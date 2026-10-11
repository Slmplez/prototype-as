/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.plugin;

import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.ModelChangedEvent;

public class AttributeChangedEvent
extends ModelChangedEvent {
    public static final String P_ATTRIBUTE_VALUE = "att_value";
    private Object attribute;

    public AttributeChangedEvent(IModelChangeProvider provider, Object element, Object attribute, String oldValue, String newValue) {
        super(provider, element, P_ATTRIBUTE_VALUE, oldValue, newValue);
        this.attribute = attribute;
    }

    public Object getChangedAttribute() {
        return this.attribute;
    }
}

