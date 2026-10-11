/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IDiff
 */
package org.eclipse.core.databinding.property;

import java.util.EventObject;
import org.eclipse.core.databinding.observable.IDiff;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.internal.databinding.property.Util;

public final class SimplePropertyEvent
extends EventObject {
    private static final long serialVersionUID = 1L;
    public static final int CHANGE = SimplePropertyEvent.notInlined(1);
    public static final int STALE = SimplePropertyEvent.notInlined(2);
    public final int type;
    public final IProperty property;
    public final IDiff diff;

    private static int notInlined(int i) {
        return i;
    }

    public SimplePropertyEvent(int type, Object source, IProperty property, IDiff diff) {
        super(source);
        this.type = type;
        this.property = property;
        this.diff = diff;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        SimplePropertyEvent that = (SimplePropertyEvent)obj;
        return Util.equals(this.getSource(), that.getSource()) && Util.equals(this.property, that.property) && Util.equals(this.diff, that.diff);
    }

    public int hashCode() {
        int hash = 17;
        hash = hash * 37 + this.getSource().hashCode();
        hash = hash * 37 + this.property.hashCode();
        hash = hash * 37 + (this.diff == null ? 0 : this.diff.hashCode());
        return hash;
    }
}

