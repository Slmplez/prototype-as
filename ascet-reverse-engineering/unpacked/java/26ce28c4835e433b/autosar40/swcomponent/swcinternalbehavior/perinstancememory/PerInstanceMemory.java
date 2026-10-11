/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory
 */
package autosar40.swcomponent.swcinternalbehavior.perinstancememory;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;

public interface PerInstanceMemory
extends AtpStructureElement,
GPerInstanceMemory {
    public SwcInternalBehavior getSwcInternalBehavior();

    public void setSwcInternalBehavior(SwcInternalBehavior var1);

    public String getInitValue();

    public void setInitValue(String var1);

    public void unsetInitValue();

    public boolean isSetInitValue();

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public String getType();

    public void setType(String var1);

    public void unsetType();

    public boolean isSetType();

    public String getTypeDefinition();

    public void setTypeDefinition(String var1);

    public void unsetTypeDefinition();

    public boolean isSetTypeDefinition();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

