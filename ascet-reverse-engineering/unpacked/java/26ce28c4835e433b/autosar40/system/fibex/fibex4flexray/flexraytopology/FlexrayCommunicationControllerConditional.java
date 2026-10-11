/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerContent;

public interface FlexrayCommunicationControllerConditional
extends FlexrayCommunicationControllerContent {
    public FlexrayCommunicationController getFlexrayCommunicationController();

    public void setFlexrayCommunicationController(FlexrayCommunicationController var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

