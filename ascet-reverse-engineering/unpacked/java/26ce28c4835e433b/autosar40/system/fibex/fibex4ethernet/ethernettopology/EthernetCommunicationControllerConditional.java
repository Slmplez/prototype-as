/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4ethernet.ethernettopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationController;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerContent;

public interface EthernetCommunicationControllerConditional
extends EthernetCommunicationControllerContent {
    public EthernetCommunicationController getEthernetCommunicationController();

    public void setEthernetCommunicationController(EthernetCommunicationController var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

