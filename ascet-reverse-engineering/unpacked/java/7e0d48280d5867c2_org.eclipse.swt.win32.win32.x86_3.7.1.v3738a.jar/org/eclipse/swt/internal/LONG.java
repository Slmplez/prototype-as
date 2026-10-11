/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal;

public class LONG {
    public int value;

    public LONG(int value) {
        this.value = value;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof LONG)) {
            return false;
        }
        LONG obj = (LONG)object;
        return obj.value == this.value;
    }

    public int hashCode() {
        return this.value ^ this.value >>> 32;
    }
}

