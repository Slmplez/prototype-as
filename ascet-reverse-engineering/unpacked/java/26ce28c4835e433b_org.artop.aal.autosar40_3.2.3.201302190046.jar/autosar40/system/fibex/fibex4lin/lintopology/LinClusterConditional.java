/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4lin.lintopology.LinCluster;
import autosar40.system.fibex.fibex4lin.lintopology.LinClusterContent;

public interface LinClusterConditional
extends LinClusterContent {
    public LinCluster getLinCluster();

    public void setLinCluster(LinCluster var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

