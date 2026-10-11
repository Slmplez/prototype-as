/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IDiff;

public abstract class ValueDiff
implements IDiff {
    public abstract Object getOldValue();

    public abstract Object getNewValue();

    public boolean equals(Object obj) {
        if (obj instanceof ValueDiff) {
            ValueDiff val = (ValueDiff)obj;
            return Diffs.equals(val.getNewValue(), this.getNewValue()) && Diffs.equals(val.getOldValue(), this.getOldValue());
        }
        return false;
    }

    public int hashCode() {
        int result = 1;
        Object nv = this.getNewValue();
        Object ov = this.getOldValue();
        result = 31 * result + (nv == null ? 0 : nv.hashCode());
        result = 31 * result + (ov == null ? 0 : ov.hashCode());
        return result;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.getClass().getName()).append("{oldValue [").append(this.getOldValue() != null ? this.getOldValue().toString() : "null").append("], newValue [").append(this.getNewValue() != null ? this.getNewValue().toString() : "null").append("]}");
        return buffer.toString();
    }
}

