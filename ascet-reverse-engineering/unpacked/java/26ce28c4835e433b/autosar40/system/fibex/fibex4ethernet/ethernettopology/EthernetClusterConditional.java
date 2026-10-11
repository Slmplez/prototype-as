/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4ethernet.ethernettopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCluster;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetClusterContent;

public interface EthernetClusterConditional
extends EthernetClusterContent {
    public EthernetCluster getEthernetCluster();

    public void setEthernetCluster(EthernetCluster var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

