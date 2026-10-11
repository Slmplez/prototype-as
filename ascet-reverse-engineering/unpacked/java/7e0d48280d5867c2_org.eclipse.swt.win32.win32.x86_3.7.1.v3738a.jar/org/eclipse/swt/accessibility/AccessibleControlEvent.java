/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.internal.SWTEventObject;

public class AccessibleControlEvent
extends SWTEventObject {
    public int childID;
    public Accessible accessible;
    public int x;
    public int y;
    public int width;
    public int height;
    public int detail;
    public String result;
    public Object[] children;
    static final long serialVersionUID = 3257281444169529141L;

    public AccessibleControlEvent(Object source) {
        super(source);
    }

    public String toString() {
        return "AccessibleControlEvent {childID=" + this.childID + " accessible=" + this.accessible + " x=" + this.x + " y=" + this.y + " width=" + this.width + " height=" + this.height + " detail=" + this.detail + " result=" + this.result + "}";
    }
}

