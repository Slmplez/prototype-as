/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.ListDiff
 */
package org.eclipse.core.internal.databinding.property.list;

import java.util.List;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.list.SimpleListProperty;

public class SelfListProperty
extends SimpleListProperty {
    private final Object elementType;

    public SelfListProperty(Object elementType) {
        this.elementType = elementType;
    }

    public Object getElementType() {
        return this.elementType;
    }

    protected List doGetList(Object source) {
        return (List)source;
    }

    protected void doSetList(Object source, List list, ListDiff diff) {
        this.doUpdateList(source, diff);
    }

    protected void doUpdateList(Object source, ListDiff diff) {
        diff.applyTo((List)source);
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return null;
    }

    protected void doAddListener(Object source, INativePropertyListener listener) {
    }

    protected void doRemoveListener(Object source, INativePropertyListener listener) {
    }
}

