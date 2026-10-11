/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveContent;

public interface LinSlaveConditional
extends LinSlaveContent {
    public LinSlave getLinSlave();

    public void setLinSlave(LinSlave var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

