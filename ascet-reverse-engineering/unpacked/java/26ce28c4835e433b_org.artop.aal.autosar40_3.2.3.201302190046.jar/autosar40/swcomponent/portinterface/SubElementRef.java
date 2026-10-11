/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface SubElementRef
extends ARObject {
    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

