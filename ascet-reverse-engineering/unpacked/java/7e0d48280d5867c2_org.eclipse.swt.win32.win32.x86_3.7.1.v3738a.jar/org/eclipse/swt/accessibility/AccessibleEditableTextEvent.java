/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.internal.SWTEventObject;

public class AccessibleEditableTextEvent
extends SWTEventObject {
    public int start;
    public int end;
    public String string;
    public String result;
    static final long serialVersionUID = -5045447704486894646L;

    public AccessibleEditableTextEvent(Object source) {
        super(source);
    }

    public String toString() {
        return "AccessibleEditableTextEvent {start=" + this.start + " end=" + this.end + " string=" + this.string + " result=" + this.result + "}";
    }
}

