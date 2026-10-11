/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar40.system.fibex.fibex4lin.lintopology.LinMasterContent;

public interface LinMasterConditional
extends LinMasterContent {
    public LinMaster getLinMaster();

    public void setLinMaster(LinMaster var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

