/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools.xplain;

import org.sat4j.specs.IConstr;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Pair
implements Comparable<Pair> {
    public final Integer key;
    public final IConstr constr;

    public Pair(Integer n, IConstr iConstr) {
        this.key = n;
        this.constr = iConstr;
    }

    @Override
    public int compareTo(Pair pair) {
        double d;
        double d2 = this.constr.getActivity();
        if (d2 == (d = pair.constr.getActivity())) {
            return pair.key - this.key;
        }
        return Double.compare(d, d2);
    }

    public String toString() {
        return new StringBuffer().append(this.key.toString()).append(":").append(this.constr.getActivity()).toString();
    }

    @Override
    public /* synthetic */ int compareTo(Object object) {
        return this.compareTo((Pair)object);
    }
}

