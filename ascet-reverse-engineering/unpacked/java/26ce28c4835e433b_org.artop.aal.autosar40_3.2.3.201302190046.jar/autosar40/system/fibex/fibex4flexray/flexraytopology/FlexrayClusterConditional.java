/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterContent;

public interface FlexrayClusterConditional
extends FlexrayClusterContent {
    public FlexrayCluster getFlexrayCluster();

    public void setFlexrayCluster(FlexrayCluster var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

