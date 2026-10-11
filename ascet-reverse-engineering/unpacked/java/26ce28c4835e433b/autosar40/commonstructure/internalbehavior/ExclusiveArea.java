/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 */
package autosar40.commonstructure.internalbehavior;

import autosar40.commonstructure.internalbehavior.InternalBehavior;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;

public interface ExclusiveArea
extends Identifiable,
GExclusiveArea {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

