/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCluster;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterContent;

public interface TtcanClusterConditional
extends TtcanClusterContent {
    public TtcanCluster getTtcanCluster();

    public void setTtcanCluster(TtcanCluster var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

