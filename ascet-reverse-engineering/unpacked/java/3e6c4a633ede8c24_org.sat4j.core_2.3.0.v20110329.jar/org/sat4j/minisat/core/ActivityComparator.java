/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;
import java.util.Comparator;
import org.sat4j.minisat.core.Constr;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class ActivityComparator
implements Comparator<Constr>,
Serializable {
    private static final long serialVersionUID = 1L;

    ActivityComparator() {
    }

    @Override
    public int compare(Constr constr, Constr constr2) {
        long l = Math.round(constr.getActivity() - constr2.getActivity());
        if (l == 0L) {
            return constr.size() - constr2.size();
        }
        return (int)l;
    }

    @Override
    public /* synthetic */ int compare(Object object, Object object2) {
        return this.compare((Constr)object, (Constr)object2);
    }
}

