/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.internal.SWTEventObject;

public class AccessibleTableEvent
extends SWTEventObject {
    public Accessible accessible;
    public Accessible[] accessibles;
    public String result;
    public int column;
    public int row;
    public int count;
    public boolean isSelected;
    public int[] selected;
    static final long serialVersionUID = 1624586163666270447L;

    public AccessibleTableEvent(Object source) {
        super(source);
    }

    public String toString() {
        return "AccessibleTableEvent {accessible=" + this.accessible + " accessibles=" + this.accessibles + " string=" + this.result + " isSelected=" + this.isSelected + " column=" + this.column + " count=" + this.count + " row=" + this.row + " selected=" + this.selected + "}";
    }
}

