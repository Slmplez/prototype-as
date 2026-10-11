/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.restarts;

import org.sat4j.minisat.core.RestartStrategy;
import org.sat4j.minisat.core.SearchParams;

public final class LubyRestarts
implements RestartStrategy {
    private static final int DEFAULT_LUBY_FACTOR = 32;
    private static final int PRECOMPUTED_VALUES_IN_POOL = 32;
    private static final long serialVersionUID = 1L;
    private static int[] cachedValues = new int[]{0, 1, 1, 2};
    private int factor;
    private int count;

    public static final int luby(int n) {
        if (n >= 0x3FFFFFFF) {
            throw new IllegalArgumentException("i is too big");
        }
        if (n >= cachedValues.length) {
            int n2;
            int n3 = cachedValues.length;
            int n4 = n << 1;
            int[] nArray = new int[n4 + 1];
            System.arraycopy(cachedValues, 0, nArray, 0, n3);
            for (n2 = 1; n2 <= n3; n2 <<= 1) {
            }
            int n5 = n2 >> 1;
            for (int i = n3; i <= n4; ++i) {
                if (i + 1 == n2) {
                    nArray[i] = n5;
                    n5 = n2;
                    n2 <<= 1;
                    continue;
                }
                nArray[i] = nArray[i - n5 + 1];
            }
            cachedValues = nArray;
        }
        return cachedValues[n];
    }

    public LubyRestarts() {
        this(32);
    }

    public LubyRestarts(int n) {
        this.setFactor(n);
    }

    public final void setFactor(int n) {
        this.factor = n;
    }

    public int getFactor() {
        return this.factor;
    }

    public void init(SearchParams searchParams) {
        this.count = 1;
    }

    public long nextRestartNumberOfConflict() {
        return LubyRestarts.luby(this.count) * this.factor;
    }

    public void onRestart() {
        ++this.count;
    }

    public String toString() {
        return "luby style (SATZ_rand, TiniSAT) restarts strategy with factor " + this.factor;
    }

    static {
        LubyRestarts.luby(32);
    }
}

