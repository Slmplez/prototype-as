/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.components;

import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.PortPrototypeRefConditional;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.components.instancerefs.InnerPortGroupInCompositionInstanceRef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortGroup
extends AtpStructureElement {
    public SwComponentType getSwComponentType();

    public void setSwComponentType(SwComponentType var1);

    public EList<InnerPortGroupInCompositionInstanceRef> getInnerGroups();

    public EList<PortPrototypeRefConditional> getOuterPorts();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

