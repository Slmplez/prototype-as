/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Norm2AllModes;
import com.ibm.icu.text.Normalizer;
import java.io.InputStream;

public abstract class Normalizer2 {
    public static Normalizer2 getInstance(InputStream data, String name, Mode mode) {
        Norm2AllModes all2Modes = Norm2AllModes.getInstance(data, name);
        switch (mode) {
            case COMPOSE: {
                return all2Modes.comp;
            }
            case DECOMPOSE: {
                return all2Modes.decomp;
            }
            case FCD: {
                return all2Modes.fcd;
            }
            case COMPOSE_CONTIGUOUS: {
                return all2Modes.fcc;
            }
        }
        return null;
    }

    public String normalize(CharSequence src) {
        return this.normalize(src, new StringBuilder()).toString();
    }

    public abstract StringBuilder normalize(CharSequence var1, StringBuilder var2);

    public abstract Appendable normalize(CharSequence var1, Appendable var2);

    public abstract StringBuilder normalizeSecondAndAppend(StringBuilder var1, CharSequence var2);

    public abstract StringBuilder append(StringBuilder var1, CharSequence var2);

    public abstract boolean isNormalized(CharSequence var1);

    public abstract Normalizer.QuickCheckResult quickCheck(CharSequence var1);

    public abstract int spanQuickCheckYes(CharSequence var1);

    public abstract boolean hasBoundaryBefore(int var1);

    public abstract boolean hasBoundaryAfter(int var1);

    public abstract boolean isInert(int var1);

    protected Normalizer2() {
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static enum Mode {
        COMPOSE,
        DECOMPOSE,
        FCD,
        COMPOSE_CONTIGUOUS;

    }
}

