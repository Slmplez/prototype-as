/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools.xplain;

import java.util.Map;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MinimizationStrategy {
    public IVecInt explain(ISolver var1, Map<Integer, ?> var2, IVecInt var3) throws TimeoutException;

    public void cancelExplanationComputation();
}

