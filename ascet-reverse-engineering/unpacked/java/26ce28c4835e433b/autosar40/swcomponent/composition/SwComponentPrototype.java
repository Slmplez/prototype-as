/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GSwComponentPrototype
 */
package autosar40.swcomponent.composition;

import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;

public interface SwComponentPrototype
extends AtpPrototype,
GSwComponentPrototype {
    public CompositionSwComponentType getCompositionSwComponentType();

    public void setCompositionSwComponentType(CompositionSwComponentType var1);

    public SwComponentType getType();

    public void setType(SwComponentType var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

