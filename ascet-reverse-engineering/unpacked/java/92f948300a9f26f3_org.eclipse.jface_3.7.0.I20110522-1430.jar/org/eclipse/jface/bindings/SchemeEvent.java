/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.AbstractNamedHandleEvent
 */
package org.eclipse.jface.bindings;

import org.eclipse.core.commands.common.AbstractNamedHandleEvent;
import org.eclipse.jface.bindings.Scheme;

public final class SchemeEvent
extends AbstractNamedHandleEvent {
    private static final int CHANGED_PARENT_ID = 4;
    private final Scheme scheme;

    public SchemeEvent(Scheme scheme, boolean definedChanged, boolean nameChanged, boolean descriptionChanged, boolean parentIdChanged) {
        super(definedChanged, descriptionChanged, nameChanged);
        if (scheme == null) {
            throw new NullPointerException();
        }
        this.scheme = scheme;
        if (parentIdChanged) {
            this.changedValues |= 4;
        }
    }

    public final Scheme getScheme() {
        return this.scheme;
    }

    public final boolean isParentIdChanged() {
        return (this.changedValues & 4) != 0;
    }
}

