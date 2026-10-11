/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.set.SetDiff
 */
package org.eclipse.core.internal.databinding.property.set;

import java.util.Set;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.set.SimpleSetProperty;

public final class SelfSetProperty
extends SimpleSetProperty {
    private final Object elementType;

    public SelfSetProperty(Object elementType) {
        this.elementType = elementType;
    }

    public Object getElementType() {
        return this.elementType;
    }

    protected Set doGetSet(Object source) {
        return (Set)source;
    }

    protected void doSetSet(Object source, Set set, SetDiff diff) {
        diff.applyTo((Set)source);
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return null;
    }

    protected void doAddListener(Object source, INativePropertyListener listener) {
    }

    protected void doRemoveListener(Object source, INativePropertyListener listener) {
    }
}

