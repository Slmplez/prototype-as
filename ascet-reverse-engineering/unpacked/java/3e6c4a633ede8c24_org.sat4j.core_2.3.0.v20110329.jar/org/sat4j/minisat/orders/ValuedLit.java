/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.orders;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class ValuedLit
implements Comparable<ValuedLit> {
    final int id;
    final int count;

    ValuedLit(int n, int n2) {
        this.id = n;
        this.count = n2;
    }

    @Override
    public int compareTo(ValuedLit valuedLit) {
        if (this.count == 0) {
            return Integer.MAX_VALUE;
        }
        if (valuedLit.count == 0) {
            return -1;
        }
        return this.count - valuedLit.count;
    }

    public boolean equals(Object object) {
        if (object == null) {
            return false;
        }
        if (object instanceof ValuedLit) {
            return ((ValuedLit)object).count == this.count;
        }
        return false;
    }

    public int hashCode() {
        return this.id;
    }

    public String toString() {
        return new StringBuffer().append("").append(this.id).append("(").append(this.count).append(")").toString();
    }

    @Override
    public /* synthetic */ int compareTo(Object object) {
        return this.compareTo((ValuedLit)object);
    }
}

