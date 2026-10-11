/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4can.cantopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationControllerContent;

public interface CanCommunicationControllerConditional
extends CanCommunicationControllerContent {
    public CanCommunicationController getCanCommunicationController();

    public void setCanCommunicationController(CanCommunicationController var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

