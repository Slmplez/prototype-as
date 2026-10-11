/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.condpermadmin;

import java.util.Dictionary;
import org.osgi.service.condpermadmin.Condition;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class BooleanCondition
implements Condition {
    private final boolean satisfied;

    BooleanCondition(boolean satisfied) {
        this.satisfied = satisfied;
    }

    @Override
    public boolean isPostponed() {
        return false;
    }

    @Override
    public boolean isSatisfied() {
        return this.satisfied;
    }

    @Override
    public boolean isMutable() {
        return false;
    }

    @Override
    public boolean isSatisfied(Condition[] conds, Dictionary<Object, Object> context) {
        int i = 0;
        int length = conds.length;
        while (i < length) {
            if (!conds[i].isSatisfied()) {
                return false;
            }
            ++i;
        }
        return true;
    }
}

