/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.internal.SWTEventObject;

public class AccessibleEvent
extends SWTEventObject {
    public int childID;
    public String result;
    static final long serialVersionUID = 3257567304224026934L;

    public AccessibleEvent(Object source) {
        super(source);
    }

    public String toString() {
        return "AccessibleEvent {childID=" + this.childID + " result=" + this.result + "}";
    }
}

