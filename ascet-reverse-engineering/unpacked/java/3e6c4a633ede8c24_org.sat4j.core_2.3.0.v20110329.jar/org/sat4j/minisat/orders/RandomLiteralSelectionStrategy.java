/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.orders;

import java.util.Random;
import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.core.IPhaseSelectionStrategy;

public final class RandomLiteralSelectionStrategy
implements IPhaseSelectionStrategy {
    private static final long serialVersionUID = 1L;
    public static final Random RAND = new Random(123456789L);

    public void assignLiteral(int n) {
    }

    public void init(int n) {
    }

    public void init(int n, int n2) {
    }

    public int select(int n) {
        if (RAND.nextBoolean()) {
            return LiteralsUtils.posLit(n);
        }
        return LiteralsUtils.negLit(n);
    }

    public void updateVar(int n) {
    }

    public void updateVarAtDecisionLevel(int n) {
    }

    public String toString() {
        return "random phase selection";
    }
}

