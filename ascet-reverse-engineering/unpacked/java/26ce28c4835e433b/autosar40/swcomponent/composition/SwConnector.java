/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GSwConnector
 */
package autosar40.swcomponent.composition;

import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.portinterface.PortInterfaceMapping;
import gautosar.gswcomponents.gcomposition.GSwConnector;

public interface SwConnector
extends AtpStructureElement,
GSwConnector {
    public CompositionSwComponentType getCompositionSwComponentType();

    public void setCompositionSwComponentType(CompositionSwComponentType var1);

    public PortInterfaceMapping getMapping();

    public void setMapping(PortInterfaceMapping var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

