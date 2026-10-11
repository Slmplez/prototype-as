/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 */
package autosar40.swcomponent.datatype.dataprototypes;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;

public interface VariableDataPrototype
extends AutosarDataPrototype,
GVariableDataPrototype {
    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

