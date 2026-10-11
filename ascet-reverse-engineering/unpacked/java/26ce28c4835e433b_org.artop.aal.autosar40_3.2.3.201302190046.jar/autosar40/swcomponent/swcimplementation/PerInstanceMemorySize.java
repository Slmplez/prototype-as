/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.swcomponent.swcimplementation;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcimplementation.SwcImplementation;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface PerInstanceMemorySize
extends ARObject {
    public SwcImplementation getSwcImplementation();

    public void setSwcImplementation(SwcImplementation var1);

    public Long getAlignment();

    public void setAlignment(Long var1);

    public void unsetAlignment();

    public boolean isSetAlignment();

    public PerInstanceMemory getPerInstanceMemory();

    public void setPerInstanceMemory(PerInstanceMemory var1);

    public PositiveIntegerValueVariationPoint getSize();

    public void setSize(PositiveIntegerValueVariationPoint var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getAlignmentData();

    public void setAlignmentData(PositiveIntegerDatatype var1);
}

