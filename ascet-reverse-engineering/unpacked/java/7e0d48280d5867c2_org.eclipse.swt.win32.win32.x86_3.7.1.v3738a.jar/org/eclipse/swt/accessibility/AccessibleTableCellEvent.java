/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.internal.SWTEventObject;

public class AccessibleTableCellEvent
extends SWTEventObject {
    public Accessible accessible;
    public Accessible[] accessibles;
    public boolean isSelected;
    public int count;
    public int index;
    static final long serialVersionUID = 7231059449172889781L;

    public AccessibleTableCellEvent(Object source) {
        super(source);
    }

    public String toString() {
        return "AccessibleTableCellEvent { accessibles=" + this.accessibles + " isSelected=" + this.isSelected + " count=" + this.count + " index=" + this.index + "}";
    }
}

