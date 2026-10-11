/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.internal.SWTEventObject;

public class AccessibleValueEvent
extends SWTEventObject {
    public Number value;
    static final long serialVersionUID = -465979079760740668L;

    public AccessibleValueEvent(Object source) {
        super(source);
    }

    public String toString() {
        return "AccessibleValueEvent {value=" + this.value + "}";
    }
}

