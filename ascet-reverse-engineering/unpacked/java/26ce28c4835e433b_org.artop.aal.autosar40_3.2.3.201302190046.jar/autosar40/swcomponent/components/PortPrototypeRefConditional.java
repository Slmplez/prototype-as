/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.components;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.components.PortPrototype;

public interface PortPrototypeRefConditional
extends ARObject {
    public PortGroup getPortGroup();

    public void setPortGroup(PortGroup var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

