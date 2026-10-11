/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.part;

import java.util.List;

class DrillFrame {
    Object fElement;
    Object fPropertyName;
    List fExpansion = null;

    public DrillFrame(Object oElement, Object strPropertyName, List vExpansion) {
        this.fElement = oElement;
        this.fPropertyName = strPropertyName;
        this.fExpansion = vExpansion;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DrillFrame)) {
            return false;
        }
        DrillFrame oOther = (DrillFrame)obj;
        return this.fElement == oOther.fElement && this.fPropertyName.equals(oOther.fPropertyName);
    }

    public Object getElement() {
        return this.fElement;
    }

    public List getExpansion() {
        return this.fExpansion;
    }

    public Object getPropertyName() {
        return this.fPropertyName;
    }
}

