/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools.xplain;

import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.xplain.MinimizationStrategy;

public interface Explainer {
    public int[] minimalExplanation() throws TimeoutException;

    public void setMinimizationStrategy(MinimizationStrategy var1);
}

