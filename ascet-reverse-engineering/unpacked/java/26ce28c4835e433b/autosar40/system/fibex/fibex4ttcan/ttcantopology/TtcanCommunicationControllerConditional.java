/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationController;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerContent;

public interface TtcanCommunicationControllerConditional
extends TtcanCommunicationControllerContent {
    public TtcanCommunicationController getTtcanCommunicationController();

    public void setTtcanCommunicationController(TtcanCommunicationController var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

