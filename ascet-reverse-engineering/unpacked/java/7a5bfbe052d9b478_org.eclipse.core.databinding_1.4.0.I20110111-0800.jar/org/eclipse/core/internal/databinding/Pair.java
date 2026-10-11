/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding;

public class Pair {
    public final Object a;
    public final Object b;

    public Pair(Object a, Object b) {
        this.a = a;
        this.b = b;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.a == null ? 0 : this.a.hashCode());
        result = 31 * result + (this.b == null ? 0 : this.b.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        Pair other = (Pair)obj;
        if (this.a == null ? other.a != null : !this.a.equals(other.a)) {
            return false;
        }
        return !(this.b == null ? other.b != null : !this.b.equals(other.b));
    }
}

