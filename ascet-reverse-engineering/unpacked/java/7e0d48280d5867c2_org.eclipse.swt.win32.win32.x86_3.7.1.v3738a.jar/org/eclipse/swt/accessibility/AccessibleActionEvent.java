/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.internal.SWTEventObject;

public class AccessibleActionEvent
extends SWTEventObject {
    public String result;
    public int count;
    public int index;
    public boolean localized;
    static final long serialVersionUID = 2849066792640153087L;

    public AccessibleActionEvent(Object source) {
        super(source);
    }

    public String toString() {
        return "AccessibleActionEvent {string=" + this.result + " count=" + this.count + " index=" + this.index + "}";
    }
}

