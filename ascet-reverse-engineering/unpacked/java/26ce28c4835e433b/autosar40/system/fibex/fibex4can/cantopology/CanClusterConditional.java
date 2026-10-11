/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4can.cantopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4can.cantopology.CanCluster;
import autosar40.system.fibex.fibex4can.cantopology.CanClusterContent;

public interface CanClusterConditional
extends CanClusterContent {
    public CanCluster getCanCluster();

    public void setCanCluster(CanCluster var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

